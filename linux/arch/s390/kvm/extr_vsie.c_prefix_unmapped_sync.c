
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prog0c; int cpuflags; } ;
struct vsie_page {TYPE_1__ scb_s; } ;


 int CPUSTAT_STOP_INT ;
 int PROG_IN_SIE ;
 int atomic_or (int ,int *) ;
 int cpu_relax () ;
 int prefix_unmapped (struct vsie_page*) ;

__attribute__((used)) static void prefix_unmapped_sync(struct vsie_page *vsie_page)
{
 prefix_unmapped(vsie_page);
 if (vsie_page->scb_s.prog0c & PROG_IN_SIE)
  atomic_or(CPUSTAT_STOP_INT, &vsie_page->scb_s.cpuflags);
 while (vsie_page->scb_s.prog0c & PROG_IN_SIE)
  cpu_relax();
}
