
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 int SEGV_ACCERR ;
 int SEGV_MAPERR ;
 int SIGSEGV ;
 TYPE_2__* current ;
 int down_read (int *) ;
 int * find_vma (TYPE_1__*,unsigned long) ;
 int force_signal_inject (int ,int,unsigned long) ;
 int up_read (int *) ;

void arm64_notify_segfault(unsigned long addr)
{
 int code;

 down_read(&current->mm->mmap_sem);
 if (find_vma(current->mm, addr) == ((void*)0))
  code = SEGV_MAPERR;
 else
  code = SEGV_ACCERR;
 up_read(&current->mm->mmap_sem);

 force_signal_inject(SIGSEGV, code, addr);
}
