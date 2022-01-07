
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct imap_store {int name; } ;
struct imap_server_conf {scalar_t__ use_html; int folder; } ;


 int DRV_OK ;
 struct strbuf STRBUF_INIT ;
 int fprintf (int ,char*,...) ;
 int imap_close_store (struct imap_store*) ;
 struct imap_store* imap_open_store (struct imap_server_conf*,int ) ;
 int imap_store_msg (struct imap_store*,struct strbuf*) ;
 int split_msg (struct strbuf*,struct strbuf*,int*) ;
 int stderr ;
 int wrap_in_html (struct strbuf*) ;

__attribute__((used)) static int append_msgs_to_imap(struct imap_server_conf *server,
          struct strbuf* all_msgs, int total)
{
 struct strbuf msg = STRBUF_INIT;
 struct imap_store *ctx = ((void*)0);
 int ofs = 0;
 int r;
 int n = 0;

 ctx = imap_open_store(server, server->folder);
 if (!ctx) {
  fprintf(stderr, "failed to open store\n");
  return 1;
 }
 ctx->name = server->folder;

 fprintf(stderr, "sending %d message%s\n", total, (total != 1) ? "s" : "");
 while (1) {
  unsigned percent = n * 100 / total;

  fprintf(stderr, "%4u%% (%d/%d) done\r", percent, n, total);

  if (!split_msg(all_msgs, &msg, &ofs))
   break;
  if (server->use_html)
   wrap_in_html(&msg);
  r = imap_store_msg(ctx, &msg);
  if (r != DRV_OK)
   break;
  n++;
 }
 fprintf(stderr, "\n");

 imap_close_store(ctx);

 return 0;
}
