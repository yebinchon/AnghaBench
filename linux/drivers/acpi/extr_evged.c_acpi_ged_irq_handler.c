
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ged_event {int dev; int gsi; int handle; } ;
typedef int irqreturn_t ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int IRQ_HANDLED ;
 int acpi_execute_simple_method (int ,int *,int ) ;
 int dev_err_once (int ,char*) ;

__attribute__((used)) static irqreturn_t acpi_ged_irq_handler(int irq, void *data)
{
 struct acpi_ged_event *event = data;
 acpi_status acpi_ret;

 acpi_ret = acpi_execute_simple_method(event->handle, ((void*)0), event->gsi);
 if (ACPI_FAILURE(acpi_ret))
  dev_err_once(event->dev, "IRQ method execution failed\n");

 return IRQ_HANDLED;
}
