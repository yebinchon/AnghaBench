
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dcr_offset; int dcr_host; } ;


 size_t CPM_ER ;
 TYPE_1__ cpm ;
 int cpm_idle_wait () ;
 unsigned int cpm_set (size_t,unsigned int) ;
 int dcr_write (int ,int ,unsigned int) ;

__attribute__((used)) static void cpm_idle_sleep(unsigned int mask)
{
 unsigned int er_save;


 er_save = cpm_set(CPM_ER, mask);


 cpm_idle_wait();


 dcr_write(cpm.dcr_host, cpm.dcr_offset[CPM_ER], er_save);
}
