
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 struct platform_device* ERR_PTR (int) ;
 int NUMA_NO_NODE ;
 int platform_device_add (struct platform_device*) ;
 struct platform_device* platform_device_alloc (char*,int) ;
 int platform_device_put (struct platform_device*) ;
 int set_dev_node (int *,int) ;

__attribute__((used)) static struct platform_device *
test_platform_device_register_node(char *name, int id, int nid)
{
 struct platform_device *pdev;
 int ret;

 pdev = platform_device_alloc(name, id);
 if (!pdev)
  return ((void*)0);

 if (nid != NUMA_NO_NODE)
  set_dev_node(&pdev->dev, nid);

 ret = platform_device_add(pdev);
 if (ret) {
  platform_device_put(pdev);
  return ERR_PTR(ret);
 }

 return pdev;

}
