
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct acpi_namespace_node {struct acpi_namespace_node* parent; int name; } ;


 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_namespace_node*) ;
 int ACPI_MOVE_32_TO_32 (char*,int *) ;
 int ACPI_NAMESEG_SIZE ;
 int ACPI_PATH_PUT8 (char*,int,char,int) ;
 char AML_DUAL_NAME_PREFIX ;
 char AML_ROOT_PREFIX ;
 scalar_t__ FALSE ;
 struct acpi_namespace_node* acpi_gbl_root_node ;
 int ns_build_normalized_path ;
 int return_UINT32 (int) ;

u32
acpi_ns_build_normalized_path(struct acpi_namespace_node *node,
         char *full_path, u32 path_size, u8 no_trailing)
{
 u32 length = 0, i;
 char name[ACPI_NAMESEG_SIZE];
 u8 do_no_trailing;
 char c, *left, *right;
 struct acpi_namespace_node *next_node;

 ACPI_FUNCTION_TRACE_PTR(ns_build_normalized_path, node);
 if (!full_path) {
  path_size = 0;
 }

 if (!node) {
  goto build_trailing_null;
 }

 next_node = node;
 while (next_node && next_node != acpi_gbl_root_node) {
  if (next_node != node) {
   do { if ((length) < (path_size)) { (full_path)[(length)] = (AML_DUAL_NAME_PREFIX); } (length)++; } while (0);

  }

  ACPI_MOVE_32_TO_32(name, &next_node->name);
  do_no_trailing = no_trailing;
  for (i = 0; i < 4; i++) {
   c = name[4 - i - 1];
   if (do_no_trailing && c != '_') {
    do_no_trailing = FALSE;
   }
   if (!do_no_trailing) {
    do { if ((length) < (path_size)) { (full_path)[(length)] = (c); } (length)++; } while (0);
   }
  }

  next_node = next_node->parent;
 }

 do { if ((length) < (path_size)) { (full_path)[(length)] = (AML_ROOT_PREFIX); } (length)++; } while (0);



 if (length <= path_size) {
  left = full_path;
  right = full_path + length - 1;

  while (left < right) {
   c = *left;
   *left++ = *right;
   *right-- = c;
  }
 }



build_trailing_null:
 do { if ((length) < (path_size)) { (full_path)[(length)] = ('\0'); } (length)++; } while (0);



 return_UINT32(length);
}
