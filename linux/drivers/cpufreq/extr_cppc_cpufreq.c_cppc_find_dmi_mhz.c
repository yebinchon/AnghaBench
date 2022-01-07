
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct dmi_header {scalar_t__ type; scalar_t__ length; } ;


 scalar_t__ DMI_ENTRY_PROCESSOR ;
 scalar_t__ DMI_ENTRY_PROCESSOR_MIN_LENGTH ;
 int DMI_PROCESSOR_MAX_SPEED ;
 int get_unaligned (scalar_t__ const*) ;

__attribute__((used)) static void cppc_find_dmi_mhz(const struct dmi_header *dm, void *private)
{
 const u8 *dmi_data = (const u8 *)dm;
 u16 *mhz = (u16 *)private;

 if (dm->type == DMI_ENTRY_PROCESSOR &&
     dm->length >= DMI_ENTRY_PROCESSOR_MIN_LENGTH) {
  u16 val = (u16)get_unaligned((const u16 *)
    (dmi_data + DMI_PROCESSOR_MAX_SPEED));
  *mhz = val > *mhz ? val : *mhz;
 }
}
