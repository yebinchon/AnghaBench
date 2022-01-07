
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct strbuf {scalar_t__ len; scalar_t__ buf; } ;
struct TYPE_9__ {int verbosity; int progress; int thin; int push_options; int deepen_not; } ;
struct TYPE_8__ {char const** url; } ;
struct TYPE_7__ {int buf; } ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ) ;
 int end_url_with_slash (TYPE_1__*,char const*) ;
 int error (int ,...) ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 int get_refs (int) ;
 int http_cleanup () ;
 int http_init (TYPE_2__*,int ,int ) ;
 int isatty (int) ;
 TYPE_4__ options ;
 int output_refs (int ) ;
 int parse_fetch (struct strbuf*) ;
 int parse_push (struct strbuf*) ;
 int printf (char*) ;
 TYPE_2__* remote ;
 TYPE_2__* remote_get (char const*) ;
 int set_option (char const*,char*) ;
 int setup_git_directory_gently (int*) ;
 scalar_t__ skip_prefix (scalar_t__,char*,char const**) ;
 scalar_t__ starts_with (scalar_t__,char*) ;
 int stateless_connect (char const*) ;
 int stdin ;
 int stdout ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int ) ;
 int strbuf_reset (struct strbuf*) ;
 char* strchr (char const*,char) ;
 int strcmp (scalar_t__,char*) ;
 int string_list_init (int *,int) ;
 int strstr (scalar_t__,char*) ;
 int trace2_cmd_name (char*) ;
 TYPE_1__ url ;

int cmd_main(int argc, const char **argv)
{
 struct strbuf buf = STRBUF_INIT;
 int nongit;

 setup_git_directory_gently(&nongit);
 if (argc < 2) {
  error(_("remote-curl: usage: git remote-curl <remote> [<url>]"));
  return 1;
 }

 options.verbosity = 1;
 options.progress = !!isatty(2);
 options.thin = 1;
 string_list_init(&options.deepen_not, 1);
 string_list_init(&options.push_options, 1);






 trace2_cmd_name("remote-curl");

 remote = remote_get(argv[1]);

 if (argc > 2) {
  end_url_with_slash(&url, argv[2]);
 } else {
  end_url_with_slash(&url, remote->url[0]);
 }

 http_init(remote, url.buf, 0);

 do {
  const char *arg;

  if (strbuf_getline_lf(&buf, stdin) == EOF) {
   if (ferror(stdin))
    error(_("remote-curl: error reading command stream from git"));
   return 1;
  }
  if (buf.len == 0)
   break;
  if (starts_with(buf.buf, "fetch ")) {
   if (nongit)
    die(_("remote-curl: fetch attempted without a local repo"));
   parse_fetch(&buf);

  } else if (!strcmp(buf.buf, "list") || starts_with(buf.buf, "list ")) {
   int for_push = !!strstr(buf.buf + 4, "for-push");
   output_refs(get_refs(for_push));

  } else if (starts_with(buf.buf, "push ")) {
   parse_push(&buf);

  } else if (skip_prefix(buf.buf, "option ", &arg)) {
   char *value = strchr(arg, ' ');
   int result;

   if (value)
    *value++ = '\0';
   else
    value = "true";

   result = set_option(arg, value);
   if (!result)
    printf("ok\n");
   else if (result < 0)
    printf("error invalid value\n");
   else
    printf("unsupported\n");
   fflush(stdout);

  } else if (!strcmp(buf.buf, "capabilities")) {
   printf("stateless-connect\n");
   printf("fetch\n");
   printf("option\n");
   printf("push\n");
   printf("check-connectivity\n");
   printf("\n");
   fflush(stdout);
  } else if (skip_prefix(buf.buf, "stateless-connect ", &arg)) {
   if (!stateless_connect(arg))
    break;
  } else {
   error(_("remote-curl: unknown command '%s' from git"), buf.buf);
   return 1;
  }
  strbuf_reset(&buf);
 } while (1);

 http_cleanup();

 return 0;
}
