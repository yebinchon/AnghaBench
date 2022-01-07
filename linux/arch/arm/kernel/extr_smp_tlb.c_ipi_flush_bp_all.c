
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_flush_bp_all () ;

__attribute__((used)) static inline void ipi_flush_bp_all(void *ignored)
{
 local_flush_bp_all();
}
