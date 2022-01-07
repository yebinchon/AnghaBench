
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; } ;
struct mm_id {TYPE_1__ u; } ;


 int * userspace_pid ;

void __switch_mm(struct mm_id *mm_idp)
{
 userspace_pid[0] = mm_idp->u.pid;
}
