
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry_number; } ;
typedef TYPE_1__ user_desc_t ;


 int PTRACE_SET_THREAD_AREA ;
 int errno ;
 int ptrace (int ,int,int ,unsigned long) ;

int os_set_thread_area(user_desc_t *info, int pid)
{
 int ret;

 ret = ptrace(PTRACE_SET_THREAD_AREA, pid, info->entry_number,
       (unsigned long) info);
 if (ret < 0)
  ret = -errno;
 return ret;
}
