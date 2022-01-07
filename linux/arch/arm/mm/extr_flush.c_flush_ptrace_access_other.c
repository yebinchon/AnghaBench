
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __flush_icache_all () ;

__attribute__((used)) static void flush_ptrace_access_other(void *args)
{
 __flush_icache_all();
}
