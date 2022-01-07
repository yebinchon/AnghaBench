
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_resources {int ioport; int iomem; } ;


 int apei_res_sub (int *,int *) ;

int apei_resources_sub(struct apei_resources *resources1,
         struct apei_resources *resources2)
{
 int rc;

 rc = apei_res_sub(&resources1->iomem, &resources2->iomem);
 if (rc)
  return rc;
 return apei_res_sub(&resources1->ioport, &resources2->ioport);
}
