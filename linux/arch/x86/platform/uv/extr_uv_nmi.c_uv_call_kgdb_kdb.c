
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int pr_err (char*) ;

__attribute__((used)) static inline void uv_call_kgdb_kdb(int cpu, struct pt_regs *regs, int master)
{
 pr_err("UV: NMI error: KGDB is not enabled in this kernel\n");
}
