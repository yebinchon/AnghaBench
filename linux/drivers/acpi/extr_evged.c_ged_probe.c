
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct acpi_ged_device {int event_list; int * dev; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int *) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int acpi_ged_request_interrupt ;
 int acpi_walk_resources (int ,char*,int ,struct acpi_ged_device*) ;
 int dev_err (int *,char*) ;
 struct acpi_ged_device* devm_kzalloc (int *,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct acpi_ged_device*) ;

__attribute__((used)) static int ged_probe(struct platform_device *pdev)
{
 struct acpi_ged_device *geddev;
 acpi_status acpi_ret;

 geddev = devm_kzalloc(&pdev->dev, sizeof(*geddev), GFP_KERNEL);
 if (!geddev)
  return -ENOMEM;

 geddev->dev = &pdev->dev;
 INIT_LIST_HEAD(&geddev->event_list);
 acpi_ret = acpi_walk_resources(ACPI_HANDLE(&pdev->dev), "_CRS",
           acpi_ged_request_interrupt, geddev);
 if (ACPI_FAILURE(acpi_ret)) {
  dev_err(&pdev->dev, "unable to parse the _CRS record\n");
  return -EINVAL;
 }
 platform_set_drvdata(pdev, geddev);

 return 0;
}
