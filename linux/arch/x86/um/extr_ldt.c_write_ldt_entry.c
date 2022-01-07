
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_desc {int dummy; } ;
struct mm_id {int dummy; } ;


 int __NR_modify_ldt ;
 long run_syscall_stub (struct mm_id*,int ,unsigned long*,int ,void**,int) ;
 long syscall_stub_data (struct mm_id*,unsigned long*,int,void**,void**) ;

__attribute__((used)) static long write_ldt_entry(struct mm_id *mm_idp, int func,
       struct user_desc *desc, void **addr, int done)
{
 long res;
 void *stub_addr;
 res = syscall_stub_data(mm_idp, (unsigned long *)desc,
    (sizeof(*desc) + sizeof(long) - 1) &
        ~(sizeof(long) - 1),
    addr, &stub_addr);
 if (!res) {
  unsigned long args[] = { func,
      (unsigned long)stub_addr,
      sizeof(*desc),
      0, 0, 0 };
  res = run_syscall_stub(mm_idp, __NR_modify_ldt, args,
           0, addr, done);
 }

 return res;
}
