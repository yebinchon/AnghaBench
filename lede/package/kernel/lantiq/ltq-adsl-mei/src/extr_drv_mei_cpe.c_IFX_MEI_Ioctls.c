
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int base_address ;
struct TYPE_8__ {int major; int minor; } ;
struct TYPE_7__ {int iData; int iAddress; } ;
struct TYPE_5__ {int* RxMessage; int * TxMessage; } ;
struct TYPE_6__ {TYPE_1__ msg; } ;
typedef TYPE_2__ DSL_DEV_WinHost_Message_t ;
typedef int DSL_DEV_Version_t ;
typedef TYPE_3__ DSL_DEV_MeiReg_t ;
typedef int DSL_DEV_HwVersion_t ;
typedef int DSL_DEV_Device_t ;


 int AMAZON_SE_MEI_ARC_MUX_Test () ;
 int DSL_BSP_SendCMV (int *,int *,int ,int*) ;
 int DSL_CMV_GROUP_STAT ;
 int DSL_CPU_HALT ;
 int DSL_CPU_RESET ;
 int DSL_CPU_RUN ;
 int DSL_DEV_MEI_ERR_FAILURE ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 int DSL_DEV_STAT_CODESWAP_COMPLETE ;
 int EAGAIN ;
 int EIO ;
 int FREE_SHOWTIME ;
 int H2D_CMV_READ ;
 int IFX_MEI_AdslMailboxIRQEnable (int *,int) ;
 int IFX_MEI_ArcJtagEnable (int *,int) ;
 int IFX_MEI_CpuModeSet (int *,int ) ;
 int IFX_MEI_DFEMemoryFree (int *,int ) ;
 int IFX_MEI_DMSG (char*,...) ;
 int IFX_MEI_DownloadBootCode (int *) ;
 int IFX_MEI_EMSG (char*,...) ;
 int IFX_MEI_IoctlCopyFrom (int,char*,char*,int) ;
 int IFX_MEI_IoctlCopyTo (int,char*,char*,int) ;
 int IFX_MEI_IsModemReady (int *) ;
 int IFX_MEI_LongWordRead (int ,int *) ;
 int IFX_MEI_LongWordWrite (int ,int ) ;
 int IFX_MEI_RunAdslModem (int *) ;
 int LTQ_MEI_BASE_ADDR ;
 int * LTQ_MPS_CHIPID ;
 int LTQ_MPS_CHIPID_VERSION_GET (int ) ;
 int MSG_LENGTH ;
 int YES_REPLY ;
 TYPE_4__ bsp_chip_info ;
 int bsp_mei_version ;
 int makeCMV (int ,int ,int,int ,int,int *,int *) ;

int
IFX_MEI_Ioctls (DSL_DEV_Device_t * pDev, int from_kernel, unsigned int command, unsigned long lon)
{
 int i = 0;
 int meierr = DSL_DEV_MEI_ERR_SUCCESS;
 u32 base_address = LTQ_MEI_BASE_ADDR;
 DSL_DEV_WinHost_Message_t winhost_msg, m;

 DSL_DEV_MeiReg_t regrdwr;

 switch (command) {

 case 141:
  IFX_MEI_IoctlCopyFrom (from_kernel, (char *) winhost_msg.msg.TxMessage,
          (char *) lon, MSG_LENGTH * 2);

  if ((meierr = DSL_BSP_SendCMV (pDev, winhost_msg.msg.TxMessage, YES_REPLY,
        winhost_msg.msg.RxMessage)) != DSL_DEV_MEI_ERR_SUCCESS) {
   IFX_MEI_EMSG ("WINHOST CMV fail :TxMessage:%X %X %X %X, RxMessage:%X %X %X %X %X\n",
     winhost_msg.msg.TxMessage[0], winhost_msg.msg.TxMessage[1], winhost_msg.msg.TxMessage[2], winhost_msg.msg.TxMessage[3],
     winhost_msg.msg.RxMessage[0], winhost_msg.msg.RxMessage[1], winhost_msg.msg.RxMessage[2], winhost_msg.msg.RxMessage[3],
     winhost_msg.msg.RxMessage[4]);
   meierr = DSL_DEV_MEI_ERR_FAILURE;
  }
  else {
   IFX_MEI_IoctlCopyTo (from_kernel, (char *) lon,
         (char *) winhost_msg.msg.RxMessage,
         MSG_LENGTH * 2);
  }
  break;

 case 142:
  IFX_MEI_IoctlCopyFrom (from_kernel, (char *) (&regrdwr),
          (char *) lon, sizeof (DSL_DEV_MeiReg_t));

  IFX_MEI_LongWordRead ((u32) regrdwr.iAddress,
         (u32 *) & (regrdwr.iData));

  IFX_MEI_IoctlCopyTo (from_kernel, (char *) lon,
        (char *) (&regrdwr),
        sizeof (DSL_DEV_MeiReg_t));

  break;

 case 140:
  IFX_MEI_IoctlCopyFrom (from_kernel, (char *) (&regrdwr),
          (char *) lon, sizeof (DSL_DEV_MeiReg_t));

  IFX_MEI_LongWordWrite ((u32) regrdwr.iAddress,
          regrdwr.iData);
  break;

 case 137:
  IFX_MEI_IoctlCopyTo (from_kernel, (char *) lon,
        (char *) (&base_address),
        sizeof (base_address));
  break;

 case 133:
  i = IFX_MEI_IsModemReady (pDev);
  IFX_MEI_IoctlCopyTo (from_kernel, (char *) lon,
        (char *) (&i), sizeof (int));
  meierr = DSL_DEV_MEI_ERR_SUCCESS;
  break;
 case 129:
 case 131:
  meierr = IFX_MEI_CpuModeSet (pDev, DSL_CPU_RESET);
  meierr = IFX_MEI_CpuModeSet (pDev, DSL_CPU_HALT);
  break;

 case 134:
  meierr = IFX_MEI_CpuModeSet (pDev, DSL_CPU_HALT);
  break;

 case 128:
  meierr = IFX_MEI_CpuModeSet (pDev, DSL_CPU_RUN);
  break;
 case 143:
  meierr = IFX_MEI_DownloadBootCode (pDev);
  break;
 case 132:
  meierr = IFX_MEI_ArcJtagEnable (pDev, 1);
  break;

 case 130:
  IFX_MEI_IoctlCopyFrom (from_kernel, (char *) (&i),
          (char *) lon, sizeof (int));

  meierr = IFX_MEI_AdslMailboxIRQEnable (pDev, i);
  break;

 case 139:
  IFX_MEI_DMSG("DSL_FIO_BSP_DSL_START\n");
  if ((meierr = IFX_MEI_RunAdslModem (pDev)) != DSL_DEV_MEI_ERR_SUCCESS) {
   IFX_MEI_EMSG ("IFX_MEI_RunAdslModem() error...");
   meierr = DSL_DEV_MEI_ERR_FAILURE;
  }
  break;
 case 135:
  IFX_MEI_IoctlCopyTo (from_kernel, (char *) lon, (char *) (&bsp_mei_version), sizeof (DSL_DEV_Version_t));
  break;


 case 136:
                bsp_chip_info.major = 1;
                bsp_chip_info.minor = (((*LTQ_MPS_CHIPID) >> 28) & ((1 << 4) - 1));
                IFX_MEI_IoctlCopyTo (from_kernel, (char *) lon, (char *) (&bsp_chip_info), sizeof (DSL_DEV_HwVersion_t));
                meierr = DSL_DEV_MEI_ERR_SUCCESS;
  break;

        case 138:
                makeCMV (H2D_CMV_READ, DSL_CMV_GROUP_STAT, 4, 0, 1, ((void*)0), m.msg.TxMessage);
                if (DSL_BSP_SendCMV (pDev, m.msg.TxMessage, YES_REPLY, m.msg.RxMessage) != DSL_DEV_MEI_ERR_SUCCESS) {
                        meierr = DSL_DEV_MEI_ERR_FAILURE;
                        return -EIO;
                }
                IFX_MEI_DMSG("RxMessage[4] = %#x\n", m.msg.RxMessage[4]);
                if (!(m.msg.RxMessage[4] & DSL_DEV_STAT_CODESWAP_COMPLETE)) {
                        meierr = DSL_DEV_MEI_ERR_FAILURE;
                        return -EAGAIN;
                }
                IFX_MEI_DMSG("Freeing all memories marked FREE_SHOWTIME\n");
                IFX_MEI_DFEMemoryFree (pDev, FREE_SHOWTIME);
                meierr = DSL_DEV_MEI_ERR_SUCCESS;
  break;





 default:

  break;
 }
 return meierr;
}
