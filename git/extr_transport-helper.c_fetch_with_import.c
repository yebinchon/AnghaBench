
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct transport {struct helper_data* data; } ;
struct strbuf {int dummy; } ;
struct ref {int status; char* symref; char* name; int old_oid; } ;
struct TYPE_4__ {scalar_t__ nr; } ;
struct helper_data {TYPE_2__ rs; TYPE_1__* helper; } ;
struct child_process {int dummy; } ;
struct TYPE_3__ {int in; } ;


 int REF_STATUS_UPTODATE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 char* apply_refspecs (TYPE_2__*,char*) ;
 int die (int ,...) ;
 scalar_t__ finish_command (struct child_process*) ;
 int free (char*) ;
 int get_helper (struct transport*) ;
 scalar_t__ get_importer (struct transport*,struct child_process*) ;
 scalar_t__ read_ref (char*,int *) ;
 int sendline (struct helper_data*,struct strbuf*) ;
 int strbuf_addf (struct strbuf*,char*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int write_constant (int ,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int fetch_with_import(struct transport *transport,
        int nr_heads, struct ref **to_fetch)
{
 struct child_process fastimport;
 struct helper_data *data = transport->data;
 int i;
 struct ref *posn;
 struct strbuf buf = STRBUF_INIT;

 get_helper(transport);

 if (get_importer(transport, &fastimport))
  die(_("couldn't run fast-import"));

 for (i = 0; i < nr_heads; i++) {
  posn = to_fetch[i];
  if (posn->status & REF_STATUS_UPTODATE)
   continue;

  strbuf_addf(&buf, "import %s\n",
       posn->symref ? posn->symref : posn->name);
  sendline(data, &buf);
  strbuf_reset(&buf);
 }

 write_constant(data->helper->in, "\n");
 if (finish_command(&fastimport))
  die(_("error while running fast-import"));
 for (i = 0; i < nr_heads; i++) {
  char *private, *name;
  posn = to_fetch[i];
  if (posn->status & REF_STATUS_UPTODATE)
   continue;
  name = posn->symref ? posn->symref : posn->name;
  if (data->rs.nr)
   private = apply_refspecs(&data->rs, name);
  else
   private = xstrdup(name);
  if (private) {
   if (read_ref(private, &posn->old_oid) < 0)
    die(_("could not read ref %s"), private);
   free(private);
  }
 }
 strbuf_release(&buf);
 return 0;
}
