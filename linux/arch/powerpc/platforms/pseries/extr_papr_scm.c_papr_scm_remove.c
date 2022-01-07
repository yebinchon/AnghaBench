
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct papr_scm_priv {int bus; } ;


 int drc_pmem_unbind (struct papr_scm_priv*) ;
 int kfree (struct papr_scm_priv*) ;
 int nvdimm_bus_unregister (int ) ;
 struct papr_scm_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int papr_scm_remove(struct platform_device *pdev)
{
 struct papr_scm_priv *p = platform_get_drvdata(pdev);

 nvdimm_bus_unregister(p->bus);
 drc_pmem_unbind(p);
 kfree(p);

 return 0;
}
