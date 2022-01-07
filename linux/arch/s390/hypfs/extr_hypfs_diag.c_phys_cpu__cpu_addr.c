
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diag204_x_phys_cpu {int cpu_addr; } ;
struct diag204_phys_cpu {int cpu_addr; } ;
typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;
typedef int __u16 ;


 int DIAG204_INFO_SIMPLE ;

__attribute__((used)) static inline __u16 phys_cpu__cpu_addr(enum diag204_format type, void *hdr)
{
 if (type == DIAG204_INFO_SIMPLE)
  return ((struct diag204_phys_cpu *)hdr)->cpu_addr;
 else
  return ((struct diag204_x_phys_cpu *)hdr)->cpu_addr;
}
