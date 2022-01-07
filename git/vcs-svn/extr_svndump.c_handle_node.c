
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int * buf; } ;
struct TYPE_4__ {int buf; } ;
struct TYPE_6__ {scalar_t__ type; int prop_length; int text_length; scalar_t__ action; TYPE_2__ dst; int text_delta; int prop_delta; TYPE_1__ src; scalar_t__ srcRev; } ;


 scalar_t__ NODEACT_ADD ;
 scalar_t__ NODEACT_CHANGE ;
 scalar_t__ NODEACT_DELETE ;
 scalar_t__ NODEACT_REPLACE ;
 scalar_t__ const S_IFDIR ;
 int S_IFREG ;
 int assert (char const*) ;
 int die (char*) ;
 int fast_export_blob_delta (scalar_t__,scalar_t__,char const*,int,int *) ;
 int fast_export_copy (scalar_t__,int ,int *) ;
 int fast_export_data (scalar_t__,int,int *) ;
 int fast_export_delete (int *) ;
 int fast_export_modify (int *,scalar_t__,char const*) ;
 char* fast_export_read_path (int *,scalar_t__*) ;
 int input ;
 TYPE_3__ node_ctx ;
 int read_props () ;

__attribute__((used)) static void handle_node(void)
{
 const uint32_t type = node_ctx.type;
 const int have_props = node_ctx.prop_length != -1;
 const int have_text = node_ctx.text_length != -1;






 static const char *const empty_blob = "::empty::";
 const char *old_data = ((void*)0);
 uint32_t old_mode = S_IFREG | 0644;

 if (node_ctx.action == NODEACT_DELETE) {
  if (have_text || have_props || node_ctx.srcRev)
   die("invalid dump: deletion node has "
    "copyfrom info, text, or properties");
  fast_export_delete(node_ctx.dst.buf);
  return;
 }
 if (node_ctx.action == NODEACT_REPLACE) {
  fast_export_delete(node_ctx.dst.buf);
  node_ctx.action = NODEACT_ADD;
 }
 if (node_ctx.srcRev) {
  fast_export_copy(node_ctx.srcRev, node_ctx.src.buf, node_ctx.dst.buf);
  if (node_ctx.action == NODEACT_ADD)
   node_ctx.action = NODEACT_CHANGE;
 }
 if (have_text && type == S_IFDIR)
  die("invalid dump: directories cannot have text attached");




 if (node_ctx.action == NODEACT_CHANGE && !*node_ctx.dst.buf) {
  if (type != S_IFDIR)
   die("invalid dump: root of tree is not a regular file");
  old_data = ((void*)0);
 } else if (node_ctx.action == NODEACT_CHANGE) {
  uint32_t mode;
  old_data = fast_export_read_path(node_ctx.dst.buf, &mode);
  if (mode == S_IFDIR && type != S_IFDIR)
   die("invalid dump: cannot modify a directory into a file");
  if (mode != S_IFDIR && type == S_IFDIR)
   die("invalid dump: cannot modify a file into a directory");
  node_ctx.type = mode;
  old_mode = mode;
 } else if (node_ctx.action == NODEACT_ADD) {
  if (type == S_IFDIR)
   old_data = ((void*)0);
  else if (have_text)
   old_data = empty_blob;
  else
   die("invalid dump: adds node without text");
 } else {
  die("invalid dump: Node-path block lacks Node-action");
 }




 if (have_props) {
  if (!node_ctx.prop_delta)
   node_ctx.type = type;
  if (node_ctx.prop_length)
   read_props();
 }




 if (type == S_IFDIR)
  return;
 assert(old_data);
 if (old_data == empty_blob)

  old_data = ((void*)0);
 if (!have_text) {
  fast_export_modify(node_ctx.dst.buf, node_ctx.type, old_data);
  return;
 }
 if (!node_ctx.text_delta) {
  fast_export_modify(node_ctx.dst.buf, node_ctx.type, "inline");
  fast_export_data(node_ctx.type, node_ctx.text_length, &input);
  return;
 }
 fast_export_modify(node_ctx.dst.buf, node_ctx.type, "inline");
 fast_export_blob_delta(node_ctx.type, old_mode, old_data,
    node_ctx.text_length, &input);
}
