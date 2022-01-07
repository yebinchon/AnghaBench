
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diag204_x_phys_cpu {int ctidx; } ;
struct diag204_phys_cpu {int ctidx; } ;
typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;
typedef int __u64 ;


 int DIAG204_INFO_SIMPLE ;

__attribute__((used)) static inline __u64 phys_cpu__ctidx(enum diag204_format type, void *hdr)
{
 if (type == DIAG204_INFO_SIMPLE)
  return ((struct diag204_phys_cpu *)hdr)->ctidx;
 else
  return ((struct diag204_x_phys_cpu *)hdr)->ctidx;
}
