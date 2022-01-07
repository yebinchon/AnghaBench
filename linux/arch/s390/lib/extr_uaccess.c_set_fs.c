
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mm_segment_t ;
struct TYPE_6__ {int kernel_asce; int user_asce; } ;
struct TYPE_4__ {int mm_segment; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 int CIF_ASCE_PRIMARY ;
 int CIF_ASCE_SECONDARY ;
 TYPE_3__ S390_lowcore ;
 int USER_DS ;
 int USER_DS_SACF ;
 int __ctl_load (int ,int,int) ;
 int clear_cpu_flag (int ) ;
 TYPE_2__* current ;
 int set_cpu_flag (int ) ;

void set_fs(mm_segment_t fs)
{
 current->thread.mm_segment = fs;
 if (fs == USER_DS) {
  __ctl_load(S390_lowcore.user_asce, 1, 1);
  clear_cpu_flag(CIF_ASCE_PRIMARY);
 } else {
  __ctl_load(S390_lowcore.kernel_asce, 1, 1);
  set_cpu_flag(CIF_ASCE_PRIMARY);
 }
 if (fs & 1) {
  if (fs == USER_DS_SACF)
   __ctl_load(S390_lowcore.user_asce, 7, 7);
  else
   __ctl_load(S390_lowcore.kernel_asce, 7, 7);
  set_cpu_flag(CIF_ASCE_SECONDARY);
 }
}
