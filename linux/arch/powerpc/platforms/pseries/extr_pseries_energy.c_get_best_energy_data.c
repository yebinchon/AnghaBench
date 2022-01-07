
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int id; } ;
typedef int ssize_t ;


 int EINVAL ;
 unsigned long FLAGS_ACTIVATE ;
 unsigned long FLAGS_MODE2 ;
 int H_BEST_ENERGY ;
 int H_SUCCESS ;
 int PLPAR_HCALL9_BUFSIZE ;
 int cpu_to_drc_index (int ) ;
 int plpar_hcall9 (int ,unsigned long*,unsigned long,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t get_best_energy_data(struct device *dev,
     char *page, int activate)
{
 int rc;
 unsigned long retbuf[PLPAR_HCALL9_BUFSIZE];
 unsigned long flags = 0;

 flags = FLAGS_MODE2;
 if (activate)
  flags |= FLAGS_ACTIVATE;

 rc = plpar_hcall9(H_BEST_ENERGY, retbuf, flags,
    cpu_to_drc_index(dev->id),
    0, 0, 0, 0, 0, 0, 0);

 if (rc != H_SUCCESS)
  return -EINVAL;

 return sprintf(page, "%lu\n", retbuf[1] >> 32);
}
