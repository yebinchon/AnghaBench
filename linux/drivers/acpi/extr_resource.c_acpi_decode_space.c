
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct resource {scalar_t__ start; scalar_t__ end; int flags; } ;
struct resource_win {scalar_t__ offset; struct resource res; } ;
struct TYPE_5__ {int write_protect; scalar_t__ caching; } ;
struct TYPE_4__ {int translation_type; } ;
struct TYPE_6__ {TYPE_2__ mem; TYPE_1__ io; } ;
struct acpi_resource_address {scalar_t__ min_address_fixed; scalar_t__ max_address_fixed; scalar_t__ producer_consumer; int resource_type; TYPE_3__ info; } ;
struct acpi_address64_attribute {int granularity; scalar_t__ address_length; scalar_t__ translation_offset; scalar_t__ minimum; scalar_t__ maximum; } ;
typedef int resource_size_t ;



 int ACPI_DECODE_10 ;
 int ACPI_DECODE_16 ;


 scalar_t__ ACPI_PREFETCHABLE_MEMORY ;
 scalar_t__ ACPI_PRODUCER ;
 int IORESOURCE_BUS ;
 int IORESOURCE_DISABLED ;
 int IORESOURCE_PREFETCH ;
 int IORESOURCE_WINDOW ;
 int acpi_dev_ioresource_flags (struct resource*,scalar_t__,int ,int ) ;
 int acpi_dev_memresource_flags (struct resource*,scalar_t__,int) ;
 int pr_debug (char*,scalar_t__,...) ;
 int pr_warn (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool acpi_decode_space(struct resource_win *win,
         struct acpi_resource_address *addr,
         struct acpi_address64_attribute *attr)
{
 u8 iodec = attr->granularity == 0xfff ? ACPI_DECODE_10 : ACPI_DECODE_16;
 bool wp = addr->info.mem.write_protect;
 u64 len = attr->address_length;
 u64 start, end, offset = 0;
 struct resource *res = &win->res;





 if ((addr->min_address_fixed != addr->max_address_fixed && len) ||
     (addr->min_address_fixed && addr->max_address_fixed && !len))
  pr_debug("ACPI: Invalid address space min_addr_fix %d, max_addr_fix %d, len %llx\n",
    addr->min_address_fixed, addr->max_address_fixed, len);
 if (addr->producer_consumer == ACPI_PRODUCER)
  offset = attr->translation_offset;
 else if (attr->translation_offset)
  pr_debug("ACPI: translation_offset(%lld) is invalid for non-bridge device.\n",
    attr->translation_offset);
 start = attr->minimum + offset;
 end = attr->maximum + offset;

 win->offset = offset;
 res->start = start;
 res->end = end;
 if (sizeof(resource_size_t) < sizeof(u64) &&
     (offset != win->offset || start != res->start || end != res->end)) {
  pr_warn("acpi resource window ([%#llx-%#llx] ignored, not CPU addressable)\n",
   attr->minimum, attr->maximum);
  return 0;
 }

 switch (addr->resource_type) {
 case 128:
  acpi_dev_memresource_flags(res, len, wp);
  break;
 case 129:
  acpi_dev_ioresource_flags(res, len, iodec,
       addr->info.io.translation_type);
  break;
 case 130:
  res->flags = IORESOURCE_BUS;
  break;
 default:
  return 0;
 }

 if (addr->producer_consumer == ACPI_PRODUCER)
  res->flags |= IORESOURCE_WINDOW;

 if (addr->info.mem.caching == ACPI_PREFETCHABLE_MEMORY)
  res->flags |= IORESOURCE_PREFETCH;

 return !(res->flags & IORESOURCE_DISABLED);
}
