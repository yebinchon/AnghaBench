
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport {int pack_lockfile; struct helper_data* data; } ;
struct strbuf {char* buf; int len; } ;
struct ref {int status; scalar_t__ name; scalar_t__ symref; int old_oid; } ;
struct TYPE_2__ {int self_contained_and_connected; scalar_t__ check_self_contained_and_connected; } ;
struct helper_data {int name; TYPE_1__ transport_options; scalar_t__ check_connectivity; } ;


 int REF_STATUS_UPTODATE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int exit (int) ;
 int oid_to_hex (int *) ;
 scalar_t__ recvline (struct helper_data*,struct strbuf*) ;
 int sendline (struct helper_data*,struct strbuf*) ;
 scalar_t__ starts_with (char*,char*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int ,scalar_t__) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char*,char*) ;
 int warning (int ,int ,char const*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static int fetch_with_fetch(struct transport *transport,
       int nr_heads, struct ref **to_fetch)
{
 struct helper_data *data = transport->data;
 int i;
 struct strbuf buf = STRBUF_INIT;

 for (i = 0; i < nr_heads; i++) {
  const struct ref *posn = to_fetch[i];
  if (posn->status & REF_STATUS_UPTODATE)
   continue;

  strbuf_addf(&buf, "fetch %s %s\n",
       oid_to_hex(&posn->old_oid),
       posn->symref ? posn->symref : posn->name);
 }

 strbuf_addch(&buf, '\n');
 sendline(data, &buf);

 while (1) {
  if (recvline(data, &buf))
   exit(128);

  if (starts_with(buf.buf, "lock ")) {
   const char *name = buf.buf + 5;
   if (transport->pack_lockfile)
    warning(_("%s also locked %s"), data->name, name);
   else
    transport->pack_lockfile = xstrdup(name);
  }
  else if (data->check_connectivity &&
    data->transport_options.check_self_contained_and_connected &&
    !strcmp(buf.buf, "connectivity-ok"))
   data->transport_options.self_contained_and_connected = 1;
  else if (!buf.len)
   break;
  else
   warning(_("%s unexpectedly said: '%s'"), data->name, buf.buf);
 }
 strbuf_release(&buf);
 return 0;
}
