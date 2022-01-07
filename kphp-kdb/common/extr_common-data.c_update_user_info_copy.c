
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_user_info {scalar_t__ seq_no; } ;


 int begin_update_copy (struct proc_user_info*) ;
 int end_update_copy (struct proc_user_info*) ;
 int memcpy (char*,char*,int) ;

void update_user_info_copy (struct proc_user_info *S, struct proc_user_info *L) {
  L->seq_no = S->seq_no + 1;
  begin_update_copy (S);
  memcpy ((char *) S, (char *) L, 128);
  end_update_copy (S);
}
