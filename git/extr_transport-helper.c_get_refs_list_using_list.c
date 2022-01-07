
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {struct helper_data* data; } ;
struct strbuf {char* buf; } ;
struct ref {char* name; struct ref* next; int old_oid; int status; int symref; } ;
struct helper_data {int get_refs_list_called; scalar_t__ push; } ;
struct child_process {int in; } ;


 int REF_STATUS_UPTODATE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 struct ref* alloc_ref (char*) ;
 scalar_t__ debug ;
 int die (int ,char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 struct child_process* get_helper (struct transport*) ;
 int get_oid_hex (char*,int *) ;
 scalar_t__ has_attribute (char*,char*) ;
 scalar_t__ read_ref (char*,int *) ;
 scalar_t__ recvline (struct helper_data*,struct strbuf*) ;
 int resolve_remote_symref (struct ref*,struct ref*) ;
 int stderr ;
 int strbuf_release (struct strbuf*) ;
 char* strchr (char*,char) ;
 int write_str_in_full (int ,char*) ;
 int xstrdup (char*) ;

__attribute__((used)) static struct ref *get_refs_list_using_list(struct transport *transport,
         int for_push)
{
 struct helper_data *data = transport->data;
 struct child_process *helper;
 struct ref *ret = ((void*)0);
 struct ref **tail = &ret;
 struct ref *posn;
 struct strbuf buf = STRBUF_INIT;

 data->get_refs_list_called = 1;
 helper = get_helper(transport);

 if (data->push && for_push)
  write_str_in_full(helper->in, "list for-push\n");
 else
  write_str_in_full(helper->in, "list\n");

 while (1) {
  char *eov, *eon;
  if (recvline(data, &buf))
   exit(128);

  if (!*buf.buf)
   break;

  eov = strchr(buf.buf, ' ');
  if (!eov)
   die(_("malformed response in ref list: %s"), buf.buf);
  eon = strchr(eov + 1, ' ');
  *eov = '\0';
  if (eon)
   *eon = '\0';
  *tail = alloc_ref(eov + 1);
  if (buf.buf[0] == '@')
   (*tail)->symref = xstrdup(buf.buf + 1);
  else if (buf.buf[0] != '?')
   get_oid_hex(buf.buf, &(*tail)->old_oid);
  if (eon) {
   if (has_attribute(eon + 1, "unchanged")) {
    (*tail)->status |= REF_STATUS_UPTODATE;
    if (read_ref((*tail)->name, &(*tail)->old_oid) < 0)
     die(_("could not read ref %s"),
         (*tail)->name);
   }
  }
  tail = &((*tail)->next);
 }
 if (debug)
  fprintf(stderr, "Debug: Read ref listing.\n");
 strbuf_release(&buf);

 for (posn = ret; posn; posn = posn->next)
  resolve_remote_symref(posn, ret);

 return ret;
}
