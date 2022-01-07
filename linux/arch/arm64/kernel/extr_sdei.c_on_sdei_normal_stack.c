
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_info {unsigned long low; unsigned long high; int type; } ;


 unsigned long SDEI_STACK_SIZE ;
 int STACK_TYPE_SDEI_NORMAL ;
 scalar_t__ raw_cpu_read (int ) ;
 int sdei_stack_normal_ptr ;

__attribute__((used)) static bool on_sdei_normal_stack(unsigned long sp, struct stack_info *info)
{
 unsigned long low = (unsigned long)raw_cpu_read(sdei_stack_normal_ptr);
 unsigned long high = low + SDEI_STACK_SIZE;

 if (!low)
  return 0;

 if (sp < low || sp >= high)
  return 0;

 if (info) {
  info->low = low;
  info->high = high;
  info->type = STACK_TYPE_SDEI_NORMAL;
 }

 return 1;
}
