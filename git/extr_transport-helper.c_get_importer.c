
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {struct helper_data* data; } ;
struct helper_data {scalar_t__ bidi_import; } ;
struct child_process {int git_cmd; int args; void* in; void* out; } ;


 int argv_array_push (int *,char*) ;
 int argv_array_pushf (int *,char*,int) ;
 int child_process_init (struct child_process*) ;
 scalar_t__ debug ;
 struct child_process* get_helper (struct transport*) ;
 int start_command (struct child_process*) ;
 void* xdup (void*) ;

__attribute__((used)) static int get_importer(struct transport *transport, struct child_process *fastimport)
{
 struct child_process *helper = get_helper(transport);
 struct helper_data *data = transport->data;
 int cat_blob_fd, code;
 child_process_init(fastimport);
 fastimport->in = xdup(helper->out);
 argv_array_push(&fastimport->args, "fast-import");
 argv_array_push(&fastimport->args, debug ? "--stats" : "--quiet");

 if (data->bidi_import) {
  cat_blob_fd = xdup(helper->in);
  argv_array_pushf(&fastimport->args, "--cat-blob-fd=%d", cat_blob_fd);
 }
 fastimport->git_cmd = 1;

 code = start_command(fastimport);
 return code;
}
