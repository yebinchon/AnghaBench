
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct strbuf {scalar_t__ len; } ;
struct TYPE_4__ {int port; char* host; scalar_t__ tunnel; int folder; scalar_t__ use_ssl; } ;


 struct strbuf STRBUF_INIT ;
 int append_msgs_to_imap (TYPE_1__*,struct strbuf*,int) ;
 int count_messages (struct strbuf*) ;
 int curl_append_msgs_to_imap (TYPE_1__*,struct strbuf*,int) ;
 int fprintf (int ,char*) ;
 int git_imap_config () ;
 int imap_send_options ;
 int imap_send_usage ;
 int parse_options (int,char const**,char*,int ,int ,int ) ;
 scalar_t__ read_message (int ,struct strbuf*) ;
 TYPE_1__ server ;
 int setup_git_directory_gently (int*) ;
 int stderr ;
 int stdin ;
 int usage_with_options (int ,int ) ;
 int use_curl ;
 int warning (char*) ;

int cmd_main(int argc, const char **argv)
{
 struct strbuf all_msgs = STRBUF_INIT;
 int total;
 int nongit_ok;

 setup_git_directory_gently(&nongit_ok);
 git_imap_config();

 argc = parse_options(argc, (const char **)argv, "", imap_send_options, imap_send_usage, 0);

 if (argc)
  usage_with_options(imap_send_usage, imap_send_options);


 if (use_curl) {
  warning("--curl not supported in this build");
  use_curl = 0;
 }







 if (!server.port)
  server.port = server.use_ssl ? 993 : 143;

 if (!server.folder) {
  fprintf(stderr, "no imap store specified\n");
  return 1;
 }
 if (!server.host) {
  if (!server.tunnel) {
   fprintf(stderr, "no imap host specified\n");
   return 1;
  }
  server.host = "tunnel";
 }


 if (read_message(stdin, &all_msgs)) {
  fprintf(stderr, "error reading input\n");
  return 1;
 }

 if (all_msgs.len == 0) {
  fprintf(stderr, "nothing to send\n");
  return 1;
 }

 total = count_messages(&all_msgs);
 if (!total) {
  fprintf(stderr, "no messages to send\n");
  return 1;
 }



 if (server.tunnel)
  return append_msgs_to_imap(&server, &all_msgs, total);






 return append_msgs_to_imap(&server, &all_msgs, total);
}
