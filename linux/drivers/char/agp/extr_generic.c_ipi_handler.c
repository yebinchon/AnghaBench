
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_agp_cache () ;

__attribute__((used)) static void ipi_handler(void *null)
{
 flush_agp_cache();
}
