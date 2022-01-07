
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int length; } ;
struct acpi_nfit_flush_address {int hint_count; TYPE_1__ header; } ;



__attribute__((used)) static size_t sizeof_flush(struct acpi_nfit_flush_address *flush)
{
 if (flush->header.length < sizeof(*flush))
  return 0;
 return sizeof(*flush) + sizeof(u64) * (flush->hint_count - 1);
}
