
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_cpu_t ;


 unsigned long insert_sci8 (unsigned long,long,int ,char const**) ;

__attribute__((used)) static unsigned long
insert_sci8n (unsigned long insn,
       long value,
       ppc_cpu_t dialect,
       const char **errmsg)
{
  return insert_sci8 (insn, -value, dialect, errmsg);
}
