
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_device {int flags; } ;
typedef int * ata_xlat_func_t ;




 int ATA_DFLAG_TRUSTED ;
 int * ata_scsi_flush_xlat ;
 int * ata_scsi_mode_select_xlat ;
 int * ata_scsi_pass_thru ;
 int * ata_scsi_rw_xlat ;
 int * ata_scsi_security_inout_xlat ;
 int * ata_scsi_start_stop_xlat ;
 int * ata_scsi_var_len_cdb_xlat ;
 int * ata_scsi_verify_xlat ;
 int * ata_scsi_write_same_xlat ;
 int * ata_scsi_zbc_in_xlat ;
 int * ata_scsi_zbc_out_xlat ;
 int ata_try_flush_cache (struct ata_device*) ;

__attribute__((used)) static inline ata_xlat_func_t ata_get_xlat_func(struct ata_device *dev, u8 cmd)
{
 switch (cmd) {
 case 141:
 case 143:
 case 142:

 case 131:
 case 133:
 case 132:
  return ata_scsi_rw_xlat;

 case 130:
  return ata_scsi_write_same_xlat;

 case 137:
  if (ata_try_flush_cache(dev))
   return ata_scsi_flush_xlat;
  break;

 case 135:
 case 134:
  return ata_scsi_verify_xlat;

 case 147:
 case 146:
  return ata_scsi_pass_thru;

 case 136:
  return ata_scsi_var_len_cdb_xlat;

 case 145:
 case 144:
  return ata_scsi_mode_select_xlat;
  break;

 case 129:
  return ata_scsi_zbc_in_xlat;

 case 128:
  return ata_scsi_zbc_out_xlat;

 case 140:
 case 139:
  if (!(dev->flags & ATA_DFLAG_TRUSTED))
   break;
  return ata_scsi_security_inout_xlat;

 case 138:
  return ata_scsi_start_stop_xlat;
 }

 return ((void*)0);
}
