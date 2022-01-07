
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diag204_x_phys_cpu {int dummy; } ;
struct diag204_phys_cpu {int dummy; } ;
typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;


 int DIAG204_INFO_SIMPLE ;

__attribute__((used)) static inline int phys_cpu__size(enum diag204_format type)
{
 if (type == DIAG204_INFO_SIMPLE)
  return sizeof(struct diag204_phys_cpu);
 else
  return sizeof(struct diag204_x_phys_cpu);
}
