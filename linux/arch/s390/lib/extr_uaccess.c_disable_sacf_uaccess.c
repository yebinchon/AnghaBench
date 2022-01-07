
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ mm_segment_t ;
struct TYPE_6__ {int user_asce; } ;
struct TYPE_4__ {scalar_t__ mm_segment; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 int CIF_ASCE_PRIMARY ;
 TYPE_3__ S390_lowcore ;
 scalar_t__ USER_DS ;
 int __ctl_load (int ,int,int) ;
 int clear_cpu_flag (int ) ;
 TYPE_2__* current ;
 scalar_t__ test_facility (int) ;

void disable_sacf_uaccess(mm_segment_t old_fs)
{
 current->thread.mm_segment = old_fs;
 if (old_fs == USER_DS && test_facility(27)) {
  __ctl_load(S390_lowcore.user_asce, 1, 1);
  clear_cpu_flag(CIF_ASCE_PRIMARY);
 }
}
