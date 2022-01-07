
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int st_mode; } ;
struct pending_operation {char* oldpath; char* newpath; int type; TYPE_1__ st; } ;


 int PATH_MAX ;
 int PO_ASSERT (int ) ;
 int assert (int) ;
 int delete_file (char*) ;
 int exit (int) ;
 int kprintf (char*) ;
 int lcopy_attrs (char*,TYPE_1__*) ;
 int mkdir (char*,int ) ;
 char* po_newdir ;
 char* po_olddir ;






 int rename (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int symlink (char*,char*) ;

void pending_operation_apply (struct pending_operation *P) {
  char full_oldpath[PATH_MAX], full_newpath[PATH_MAX];
  full_oldpath[0] = full_newpath[0] = 0;
  if (P->oldpath) {
    assert (snprintf (full_oldpath, PATH_MAX, "%s/%s", po_olddir, P->oldpath) < PATH_MAX);
  }
  if (P->newpath) {
    assert (snprintf (full_newpath, PATH_MAX, "%s/%s", po_newdir, P->newpath) < PATH_MAX);
  }
  switch (P->type) {
    case 131:
      kprintf ("pending_operation_apply (P.type == pot_null)\n");
      exit (1);
      break;
    case 132:
      PO_ASSERT (mkdir (full_newpath, P->st.st_mode));
      PO_ASSERT (lcopy_attrs (full_newpath, &P->st));
      break;
    case 128:
      PO_ASSERT (symlink (P->oldpath, full_newpath));
      PO_ASSERT (lcopy_attrs (full_newpath, &P->st));
      break;
    case 129:
      PO_ASSERT (rename (full_oldpath, full_newpath));
      PO_ASSERT (lcopy_attrs (full_newpath, &P->st));
      break;
    case 130:
      PO_ASSERT (delete_file (full_newpath));
      break;
    case 133:
      PO_ASSERT (lcopy_attrs (full_newpath, &P->st));
      break;
  }
}
