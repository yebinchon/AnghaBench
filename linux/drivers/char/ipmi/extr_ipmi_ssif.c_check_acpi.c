
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ acpi_handle; } ;
struct TYPE_4__ {TYPE_1__ acpi_info; } ;
struct ssif_info {TYPE_2__ addr_info; int addr_source; } ;
struct device {int dummy; } ;
typedef scalar_t__ acpi_handle ;


 scalar_t__ ACPI_HANDLE (struct device*) ;
 int SI_ACPI ;

__attribute__((used)) static bool check_acpi(struct ssif_info *ssif_info, struct device *dev)
{
 return 0;
}
