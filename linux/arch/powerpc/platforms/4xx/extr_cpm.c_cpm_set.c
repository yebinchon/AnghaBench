
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dcr_offset; int dcr_host; } ;


 TYPE_1__ cpm ;
 unsigned int dcr_read (int ,int ) ;
 int dcr_write (int ,int ,unsigned int) ;

__attribute__((used)) static unsigned int cpm_set(unsigned int cpm_reg, unsigned int mask)
{
 unsigned int value;
 value = dcr_read(cpm.dcr_host, cpm.dcr_offset[cpm_reg]);
 dcr_write(cpm.dcr_host, cpm.dcr_offset[cpm_reg], value | mask);


 return value;
}
