
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int bit_offset; } ;
struct acpi_whea_header {int mask; int flags; TYPE_1__ register_region; } ;


 int APEI_EXEC_PRESERVE_REGISTER ;
 int apei_read (int*,TYPE_1__*) ;
 int apei_write (int,TYPE_1__*) ;

int __apei_exec_write_register(struct acpi_whea_header *entry, u64 val)
{
 int rc;

 val &= entry->mask;
 val <<= entry->register_region.bit_offset;
 if (entry->flags & APEI_EXEC_PRESERVE_REGISTER) {
  u64 valr = 0;
  rc = apei_read(&valr, &entry->register_region);
  if (rc)
   return rc;
  valr &= ~(entry->mask << entry->register_region.bit_offset);
  val |= valr;
 }
 rc = apei_write(val, &entry->register_region);

 return rc;
}
