
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct nd_cmd_clear_error {int cleared; int length; } ;
struct nd_cmd_ars_status {int out_length; int flags; } ;


 int EAGAIN ;
 int EBUSY ;
 int EIO ;
 int ENOSPC ;
 int ENOTTY ;
 int ND_ARS_PERSISTENT ;
 int ND_ARS_VOLATILE ;




 int NFIT_ARS_CAP_NONE ;
 int NFIT_ARS_F_OVERFLOW ;
 int NFIT_ARS_START_BUSY ;
 int NFIT_ARS_STATUS_BUSY ;
 int NFIT_ARS_STATUS_DONE ;
 int NFIT_ARS_STATUS_INTR ;
 int NFIT_ARS_STATUS_NONE ;

__attribute__((used)) static int xlat_bus_status(void *buf, unsigned int cmd, u32 status)
{
 struct nd_cmd_clear_error *clear_err;
 struct nd_cmd_ars_status *ars_status;
 u16 flags;

 switch (cmd) {
 case 131:
  if ((status & 0xffff) == NFIT_ARS_CAP_NONE)
   return -ENOTTY;


  if (status & 0xffff)
   return -EIO;


  flags = ND_ARS_PERSISTENT | ND_ARS_VOLATILE;
  if ((status >> 16 & flags) == 0)
   return -ENOTTY;
  return 0;
 case 130:

  if ((status & 0xffff) == NFIT_ARS_START_BUSY)
   return -EBUSY;


  if (status & 0xffff)
   return -EIO;
  return 0;
 case 129:
  ars_status = buf;

  if (status & 0xffff)
   return -EIO;

  if (status == NFIT_ARS_STATUS_DONE)
   return 0;


  if (status == NFIT_ARS_STATUS_BUSY)
   return -EBUSY;


  if (status == NFIT_ARS_STATUS_NONE)
   return -EAGAIN;






  if (status == NFIT_ARS_STATUS_INTR) {
   if (ars_status->out_length >= 40 && (ars_status->flags
      & NFIT_ARS_F_OVERFLOW))
    return -ENOSPC;
   return 0;
  }


  if (status >> 16)
   return -EIO;
  return 0;
 case 128:
  clear_err = buf;
  if (status & 0xffff)
   return -EIO;
  if (!clear_err->cleared)
   return -EIO;
  if (clear_err->length > clear_err->cleared)
   return clear_err->cleared;
  return 0;
 default:
  break;
 }


 if (status)
  return -EIO;
 return 0;
}
