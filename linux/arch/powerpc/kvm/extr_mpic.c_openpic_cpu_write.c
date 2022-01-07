
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct openpic {int dummy; } ;
typedef int gpa_t ;


 int openpic_cpu_write_internal (struct openpic*,int,int ,int) ;

__attribute__((used)) static int openpic_cpu_write(void *opaque, gpa_t addr, u32 val)
{
 struct openpic *opp = opaque;

 return openpic_cpu_write_internal(opp, addr, val,
      (addr & 0x1f000) >> 12);
}
