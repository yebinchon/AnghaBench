
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_warning (char*,int,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static inline void op_x86_warn_in_use(int counter)
{
 pr_warning("oprofile: counter #%d on cpu #%d may already be used\n",
     counter, smp_processor_id());
}
