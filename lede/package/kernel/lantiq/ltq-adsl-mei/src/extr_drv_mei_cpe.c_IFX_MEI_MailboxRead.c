
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 int ARC_TO_MEI_MAILBOX ;
 int ARC_TO_MEI_MSGAV ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 int IFX_MEI_DMARead (int *,int ,int *,int) ;
 int IFX_MEI_LongWordWriteOffset (int *,int ,int ) ;
 scalar_t__ ME_ARC2ME_STAT ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_MailboxRead (DSL_DEV_Device_t * pDev, u16 * msgdestbuffer,
      u16 msgsize)
{
 DSL_DEV_MeiError_t meiMailboxError = DSL_DEV_MEI_ERR_SUCCESS;

 meiMailboxError =
  IFX_MEI_DMARead (pDev, ARC_TO_MEI_MAILBOX, (u32 *) msgdestbuffer, msgsize / 2);


 IFX_MEI_LongWordWriteOffset (pDev, (u32) ME_ARC2ME_STAT, ARC_TO_MEI_MSGAV);

 return meiMailboxError;
}
