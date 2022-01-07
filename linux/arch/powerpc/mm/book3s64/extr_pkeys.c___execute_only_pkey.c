
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int execute_only_pkey; } ;
struct mm_struct {TYPE_1__ context; } ;



int __execute_only_pkey(struct mm_struct *mm)
{
 return mm->context.execute_only_pkey;
}
