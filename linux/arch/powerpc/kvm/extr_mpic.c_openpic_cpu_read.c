
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct openpic {int dummy; } ;
typedef int gpa_t ;


 int openpic_cpu_read_internal (struct openpic*,int,int *,int) ;

__attribute__((used)) static int openpic_cpu_read(void *opaque, gpa_t addr, u32 *ptr)
{
 struct openpic *opp = opaque;

 return openpic_cpu_read_internal(opp, addr, ptr,
      (addr & 0x1f000) >> 12);
}
