
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int execute_only_pkey; } ;
struct mm_struct {TYPE_1__ context; } ;


 int PKEY_DISABLE_ACCESS ;
 int __pkru_allows_read (int ,int) ;
 int arch_set_user_pkey_access (int ,int,int ) ;
 int current ;
 int mm_pkey_alloc (struct mm_struct*) ;
 int mm_set_pkey_free (struct mm_struct*,int) ;
 int read_pkru () ;

int __execute_only_pkey(struct mm_struct *mm)
{
 bool need_to_set_mm_pkey = 0;
 int execute_only_pkey = mm->context.execute_only_pkey;
 int ret;


 if (execute_only_pkey == -1) {

  execute_only_pkey = mm_pkey_alloc(mm);
  if (execute_only_pkey < 0)
   return -1;
  need_to_set_mm_pkey = 1;
 }
 if (!need_to_set_mm_pkey &&
     !__pkru_allows_read(read_pkru(), execute_only_pkey)) {
  return execute_only_pkey;
 }





 ret = arch_set_user_pkey_access(current, execute_only_pkey,
   PKEY_DISABLE_ACCESS);




 if (ret) {
  mm_set_pkey_free(mm, execute_only_pkey);
  return -1;
 }


 if (need_to_set_mm_pkey)
  mm->context.execute_only_pkey = execute_only_pkey;
 return execute_only_pkey;
}
