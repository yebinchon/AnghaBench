
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cpuflags; } ;
struct vsie_page {TYPE_2__ scb_s; TYPE_1__* scb_o; } ;
struct TYPE_3__ {int cpuflags; } ;


 int CPUSTAT_EXT_INT ;
 int CPUSTAT_IO_INT ;
 int CPUSTAT_STOP_INT ;
 int atomic_andnot (int const,int *) ;
 int atomic_or (int,int *) ;
 int atomic_read (int *) ;

__attribute__((used)) static void update_intervention_requests(struct vsie_page *vsie_page)
{
 const int bits = CPUSTAT_STOP_INT | CPUSTAT_IO_INT | CPUSTAT_EXT_INT;
 int cpuflags;

 cpuflags = atomic_read(&vsie_page->scb_o->cpuflags);
 atomic_andnot(bits, &vsie_page->scb_s.cpuflags);
 atomic_or(cpuflags & bits, &vsie_page->scb_s.cpuflags);
}
