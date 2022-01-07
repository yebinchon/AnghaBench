
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct resource {int flags; int end; int start; } ;


 scalar_t__ ACPI_READ_WRITE_MEMORY ;
 int IORESOURCE_DISABLED ;
 int IORESOURCE_MEM ;
 int IORESOURCE_MEM_WRITEABLE ;
 int IORESOURCE_UNSET ;
 int acpi_dev_resource_len_valid (int ,int ,int ,int) ;

__attribute__((used)) static void acpi_dev_memresource_flags(struct resource *res, u64 len,
           u8 write_protect)
{
 res->flags = IORESOURCE_MEM;

 if (!acpi_dev_resource_len_valid(res->start, res->end, len, 0))
  res->flags |= IORESOURCE_DISABLED | IORESOURCE_UNSET;

 if (write_protect == ACPI_READ_WRITE_MEMORY)
  res->flags |= IORESOURCE_MEM_WRITEABLE;
}
