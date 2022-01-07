
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; } ;
struct imap_store {char* name; char* prefix; struct imap* imap; } ;
struct imap_cmd_cb {int data; int dlen; } ;
struct imap {int rcaps; int caps; } ;
typedef int cb ;


 int DRV_OK ;
 int imap_exec_m (struct imap_store*,struct imap_cmd_cb*,char*,char const*,char const*) ;
 int lf_to_crlf (struct strbuf*) ;
 int memset (struct imap_cmd_cb*,int ,int) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int imap_store_msg(struct imap_store *ctx, struct strbuf *msg)
{
 struct imap *imap = ctx->imap;
 struct imap_cmd_cb cb;
 const char *prefix, *box;
 int ret;

 lf_to_crlf(msg);
 memset(&cb, 0, sizeof(cb));

 cb.dlen = msg->len;
 cb.data = strbuf_detach(msg, ((void*)0));

 box = ctx->name;
 prefix = !strcmp(box, "INBOX") ? "" : ctx->prefix;
 ret = imap_exec_m(ctx, &cb, "APPEND \"%s%s\" ", prefix, box);
 imap->caps = imap->rcaps;
 if (ret != DRV_OK)
  return ret;

 return DRV_OK;
}
