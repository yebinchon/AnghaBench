#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  base_address ;
struct TYPE_8__ {int major; int /*<<< orphan*/  minor; } ;
struct TYPE_7__ {int /*<<< orphan*/  iData; int /*<<< orphan*/  iAddress; } ;
struct TYPE_5__ {int* RxMessage; int /*<<< orphan*/ * TxMessage; } ;
struct TYPE_6__ {TYPE_1__ msg; } ;
typedef  TYPE_2__ DSL_DEV_WinHost_Message_t ;
typedef  int /*<<< orphan*/  DSL_DEV_Version_t ;
typedef  TYPE_3__ DSL_DEV_MeiReg_t ;
typedef  int /*<<< orphan*/  DSL_DEV_HwVersion_t ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  DSL_CMV_GROUP_STAT ; 
 int /*<<< orphan*/  DSL_CPU_HALT ; 
 int /*<<< orphan*/  DSL_CPU_RESET ; 
 int /*<<< orphan*/  DSL_CPU_RUN ; 
 int DSL_DEV_MEI_ERR_FAILURE ; 
 int DSL_DEV_MEI_ERR_SUCCESS ; 
 int DSL_DEV_STAT_CODESWAP_COMPLETE ; 
#define  DSL_FIO_ARC_MUX_TEST 144 
#define  DSL_FIO_BSP_BOOTDOWNLOAD 143 
#define  DSL_FIO_BSP_CMV_READ 142 
#define  DSL_FIO_BSP_CMV_WINHOST 141 
#define  DSL_FIO_BSP_CMV_WRITE 140 
#define  DSL_FIO_BSP_DSL_START 139 
#define  DSL_FIO_BSP_FREE_RESOURCE 138 
#define  DSL_FIO_BSP_GET_BASE_ADDRESS 137 
#define  DSL_FIO_BSP_GET_CHIP_INFO 136 
#define  DSL_FIO_BSP_GET_VERSION 135 
#define  DSL_FIO_BSP_HALT 134 
#define  DSL_FIO_BSP_IS_MODEM_READY 133 
#define  DSL_FIO_BSP_JTAG_ENABLE 132 
#define  DSL_FIO_BSP_REBOOT 131 
#define  DSL_FIO_BSP_REMOTE 130 
#define  DSL_FIO_BSP_RESET 129 
#define  DSL_FIO_BSP_RUN 128 
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  FREE_SHOWTIME ; 
 int /*<<< orphan*/  H2D_CMV_READ ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LTQ_MEI_BASE_ADDR ; 
 int /*<<< orphan*/ * LTQ_MPS_CHIPID ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int MSG_LENGTH ; 
 int /*<<< orphan*/  YES_REPLY ; 
 TYPE_4__ bsp_chip_info ; 
 int /*<<< orphan*/  bsp_mei_version ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC17 (DSL_DEV_Device_t * pDev, int from_kernel, unsigned int command, unsigned long lon)
{
	int i = 0;
	int meierr = DSL_DEV_MEI_ERR_SUCCESS;
	u32 base_address = LTQ_MEI_BASE_ADDR;
	DSL_DEV_WinHost_Message_t winhost_msg, m;
//	DSL_DEV_MeiDebug_t debugrdwr;
	DSL_DEV_MeiReg_t regrdwr;

	switch (command) {

	case DSL_FIO_BSP_CMV_WINHOST:
		FUNC9 (from_kernel, (char *) winhost_msg.msg.TxMessage,
					     (char *) lon, MSG_LENGTH * 2);

		if ((meierr = FUNC1 (pDev, winhost_msg.msg.TxMessage, YES_REPLY,
					   winhost_msg.msg.RxMessage)) != DSL_DEV_MEI_ERR_SUCCESS) {
			FUNC8 ("WINHOST CMV fail :TxMessage:%X %X %X %X, RxMessage:%X %X %X %X %X\n",
				 winhost_msg.msg.TxMessage[0], winhost_msg.msg.TxMessage[1], winhost_msg.msg.TxMessage[2], winhost_msg.msg.TxMessage[3],
				 winhost_msg.msg.RxMessage[0], winhost_msg.msg.RxMessage[1], winhost_msg.msg.RxMessage[2], winhost_msg.msg.RxMessage[3],
				 winhost_msg.msg.RxMessage[4]);
			meierr = DSL_DEV_MEI_ERR_FAILURE;
		}
		else {
			FUNC10 (from_kernel, (char *) lon,
						   (char *) winhost_msg.msg.RxMessage,
						   MSG_LENGTH * 2);
		}
		break;

	case DSL_FIO_BSP_CMV_READ:
		FUNC9 (from_kernel, (char *) (&regrdwr),
					     (char *) lon, sizeof (DSL_DEV_MeiReg_t));

		FUNC12 ((u32) regrdwr.iAddress,
					    (u32 *) & (regrdwr.iData));

		FUNC10 (from_kernel, (char *) lon,
					   (char *) (&regrdwr),
					   sizeof (DSL_DEV_MeiReg_t));

		break;

	case DSL_FIO_BSP_CMV_WRITE:
		FUNC9 (from_kernel, (char *) (&regrdwr),
					     (char *) lon, sizeof (DSL_DEV_MeiReg_t));

		FUNC13 ((u32) regrdwr.iAddress,
					     regrdwr.iData);
		break;

	case DSL_FIO_BSP_GET_BASE_ADDRESS:
		FUNC10 (from_kernel, (char *) lon,
					   (char *) (&base_address),
					   sizeof (base_address));
		break;

	case DSL_FIO_BSP_IS_MODEM_READY:
		i = FUNC11 (pDev);
		FUNC10 (from_kernel, (char *) lon,
					   (char *) (&i), sizeof (int));
		meierr = DSL_DEV_MEI_ERR_SUCCESS;
		break;
	case DSL_FIO_BSP_RESET:
	case DSL_FIO_BSP_REBOOT:
		meierr = FUNC4 (pDev, DSL_CPU_RESET);
		meierr = FUNC4 (pDev, DSL_CPU_HALT);
		break;

	case DSL_FIO_BSP_HALT:
		meierr = FUNC4 (pDev, DSL_CPU_HALT);
		break;

	case DSL_FIO_BSP_RUN:
		meierr = FUNC4 (pDev, DSL_CPU_RUN);
		break;
	case DSL_FIO_BSP_BOOTDOWNLOAD:
		meierr = FUNC7 (pDev);
		break;
	case DSL_FIO_BSP_JTAG_ENABLE:
		meierr = FUNC3 (pDev, 1);
		break;

	case DSL_FIO_BSP_REMOTE:
		FUNC9 (from_kernel, (char *) (&i),
					     (char *) lon, sizeof (int));

		meierr = FUNC2 (pDev, i);
		break;

	case DSL_FIO_BSP_DSL_START:
		FUNC6("DSL_FIO_BSP_DSL_START\n");
		if ((meierr = FUNC14 (pDev)) != DSL_DEV_MEI_ERR_SUCCESS) {
			FUNC8 ("IFX_MEI_RunAdslModem() error...");
			meierr = DSL_DEV_MEI_ERR_FAILURE;
		}
		break;

/*	case DSL_FIO_BSP_DEBUG_READ:
	case DSL_FIO_BSP_DEBUG_WRITE:
		IFX_MEI_IoctlCopyFrom (from_kernel,
					     (char *) (&debugrdwr),
					     (char *) lon,
					     sizeof (debugrdwr));

		if (command == DSL_FIO_BSP_DEBUG_READ)
			meierr = DSL_BSP_MemoryDebugAccess (pDev,
								 DSL_BSP_MEMORY_READ,
								 debugrdwr.
								 iAddress,
								 debugrdwr.
								 buffer,
								 debugrdwr.
								 iCount);
		else
			meierr = DSL_BSP_MemoryDebugAccess (pDev,
								 DSL_BSP_MEMORY_WRITE,
								 debugrdwr.
								 iAddress,
								 debugrdwr.
								 buffer,
								 debugrdwr.
								 iCount);

		IFX_MEI_IoctlCopyTo (from_kernel, (char *) lon, (char *) (&debugrdwr), sizeof (debugrdwr));
		break;*/
	case DSL_FIO_BSP_GET_VERSION:
		FUNC10 (from_kernel, (char *) lon, (char *) (&bsp_mei_version), sizeof (DSL_DEV_Version_t));
		break;

#define LTQ_MPS_CHIPID_VERSION_GET(value)  (((value) >> 28) & ((1 << 4) - 1))
	case DSL_FIO_BSP_GET_CHIP_INFO:
                bsp_chip_info.major = 1;
                bsp_chip_info.minor = LTQ_MPS_CHIPID_VERSION_GET(*LTQ_MPS_CHIPID);
                FUNC10 (from_kernel, (char *) lon, (char *) (&bsp_chip_info), sizeof (DSL_DEV_HwVersion_t));
                meierr = DSL_DEV_MEI_ERR_SUCCESS;
		break;

        case DSL_FIO_BSP_FREE_RESOURCE:
                FUNC16 (H2D_CMV_READ, DSL_CMV_GROUP_STAT, 4, 0, 1, NULL, m.msg.TxMessage);
                if (FUNC1 (pDev, m.msg.TxMessage, YES_REPLY, m.msg.RxMessage) != DSL_DEV_MEI_ERR_SUCCESS) {
                        meierr = DSL_DEV_MEI_ERR_FAILURE;
                        return -EIO;
                }
                FUNC6("RxMessage[4] = %#x\n", m.msg.RxMessage[4]);
                if (!(m.msg.RxMessage[4] & DSL_DEV_STAT_CODESWAP_COMPLETE)) {
                        meierr = DSL_DEV_MEI_ERR_FAILURE;
                        return -EAGAIN;
                }
                FUNC6("Freeing all memories marked FREE_SHOWTIME\n");
                FUNC5 (pDev, FREE_SHOWTIME);
                meierr = DSL_DEV_MEI_ERR_SUCCESS;
		break;
#ifdef CONFIG_IFXMIPS_AMAZON_SE
	case DSL_FIO_ARC_MUX_TEST:
		AMAZON_SE_MEI_ARC_MUX_Test();
		break;
#endif
	default:
//		IFX_MEI_EMSG("Invalid IOCTL command: %d\n");
		break;
	}
	return meierr;
}