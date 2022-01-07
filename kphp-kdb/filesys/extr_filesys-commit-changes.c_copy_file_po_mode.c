
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int last_po ;
 int pending_operation_copyfile (int ,int *,char*,unsigned char*,int,struct stat*,int *,int *) ;
 int pending_operation_fill (int *,int ,int *,char*,struct stat*) ;
 int pot_copy_attrs ;
 int transaction_file_no ;
 int transaction_id ;

__attribute__((used)) static int copy_file_po_mode (struct stat *S, char *name, unsigned char *buf, int l, int same) {
  if (same) {
    pending_operation_fill (&last_po, pot_copy_attrs, ((void*)0), name, S);
  } else {
    pending_operation_copyfile (transaction_id, &transaction_file_no, name, buf, l, S, &last_po, ((void*)0));
  }
  return 0;
}
