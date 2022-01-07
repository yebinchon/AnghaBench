
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int po_newdir ;
 void* po_newdir_length ;
 int po_olddir ;
 void* po_olddir_length ;
 void* strlen (int ) ;
 int zstrdup (char const* const) ;

void pending_operations_init (const char *const olddir_prefix, const char *const newdir_prefix) {
  po_olddir = zstrdup (olddir_prefix);
  po_newdir = zstrdup (newdir_prefix);
  po_olddir_length = strlen (po_olddir);
  po_newdir_length = strlen (po_newdir);
}
