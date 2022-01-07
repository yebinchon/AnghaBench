
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct remote {char const** url; int name; } ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int die (char*) ;
 scalar_t__ do_command (struct strbuf*) ;
 int dump_from_file ;
 int end_url_with_slash (struct strbuf*,char const*) ;
 scalar_t__ ferror (int ) ;
 int get_git_dir () ;
 int marksfilename ;
 int notes_ref ;
 int private_ref ;
 struct remote* remote_get (char const*) ;
 int setup_git_directory () ;
 scalar_t__ starts_with (char const*,char*) ;
 int stdin ;
 int strbuf_addf (struct strbuf*,char*,int ,...) ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int url ;
 int url_decode (char const*) ;
 int usage (char*) ;

int cmd_main(int argc, const char **argv)
{
 struct strbuf buf = STRBUF_INIT, url_sb = STRBUF_INIT,
   private_ref_sb = STRBUF_INIT, marksfilename_sb = STRBUF_INIT,
   notes_ref_sb = STRBUF_INIT;
 static struct remote *remote;
 const char *url_in;

 setup_git_directory();
 if (argc < 2 || argc > 3) {
  usage("git-remote-svn <remote-name> [<url>]");
  return 1;
 }

 remote = remote_get(argv[1]);
 url_in = (argc == 3) ? argv[2] : remote->url[0];

 if (starts_with(url_in, "file://")) {
  dump_from_file = 1;
  url = url_decode(url_in + sizeof("file://")-1);
 } else {
  dump_from_file = 0;
  end_url_with_slash(&url_sb, url_in);
  url = url_sb.buf;
 }

 strbuf_addf(&private_ref_sb, "refs/svn/%s/master", remote->name);
 private_ref = private_ref_sb.buf;

 strbuf_addf(&notes_ref_sb, "refs/notes/%s/revs", remote->name);
 notes_ref = notes_ref_sb.buf;

 strbuf_addf(&marksfilename_sb, "%s/info/fast-import/remote-svn/%s.marks",
  get_git_dir(), remote->name);
 marksfilename = marksfilename_sb.buf;

 while (1) {
  if (strbuf_getline_lf(&buf, stdin) == EOF) {
   if (ferror(stdin))
    die("Error reading command stream");
   else
    die("Unexpected end of command stream");
  }
  if (do_command(&buf))
   break;
  strbuf_reset(&buf);
 }

 strbuf_release(&buf);
 strbuf_release(&url_sb);
 strbuf_release(&private_ref_sb);
 strbuf_release(&notes_ref_sb);
 strbuf_release(&marksfilename_sb);
 return 0;
}
