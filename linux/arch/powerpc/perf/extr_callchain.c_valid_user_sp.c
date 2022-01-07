
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_SIZE ;

__attribute__((used)) static inline int valid_user_sp(unsigned long sp, int is_64)
{
 if (!sp || (sp & 7) || sp > TASK_SIZE - 32)
  return 0;
 return 1;
}
