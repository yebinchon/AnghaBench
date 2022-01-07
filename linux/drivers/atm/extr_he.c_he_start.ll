; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i8** }
%struct.he_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_11__*, i64, %struct.TYPE_9__*, i32*, %struct.pci_dev*, i32, i32*, i8**, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_11__*)* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.pci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"membase = 0x%lx  irq = %d.\0A\00", align 1
@GEN_CNTL_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"can't read GEN_CNTL_0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MRL_ENB = common dso_local global i32 0, align 4
@MRM_ENB = common dso_local global i32 0, align 4
@IGNORE_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"can't write GEN_CNTL_0.\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"can't read PCI_COMMAND.\0A\00", align 1
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"can't enable memory.\0A\00", align 1
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"can't read cache line size?\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"can't set cache line size to %d\0A\00", align 1
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"can't read latency timer?\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"latency timer was %d, setting to %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"can't set latency timer to %d\0A\00", align 1
@HE_REGMAP_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"can't set up page mapping\0A\00", align 1
@RESET_CNTL = common dso_local global i64 0, align 8
@BOARD_RST_STATUS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"reset failed\0A\00", align 1
@HOST_CNTL = common dso_local global i64 0, align 8
@PCI_BUS_SIZE64 = common dso_local global i32 0, align 4
@ENBL_64 = common dso_local global i32 0, align 4
@disable64 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"disabling 64-bit pci bus transfers\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"64-bit transfers enabled\0A\00", align 1
@PROD_ID_LEN = common dso_local global i32 0, align 4
@PROD_ID = common dso_local global i64 0, align 8
@MEDIA = common dso_local global i64 0, align 8
@MAC_ADDR = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"%s%s, %pM\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"SM\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"MM\00", align 1
@ATM_OC12_PCR = common dso_local global i32 0, align 4
@ATM_OC3_PCR = common dso_local global i32 0, align 4
@LB_SWAP = common dso_local global i64 0, align 8
@XFER_SIZE = common dso_local global i32 0, align 4
@DESC_WR_SWAP = common dso_local global i32 0, align 4
@INTR_SWAP = common dso_local global i32 0, align 4
@BIG_ENDIAN_HOST = common dso_local global i32 0, align 4
@DATA_WR_SWAP = common dso_local global i32 0, align 4
@DATA_RD_SWAP = common dso_local global i32 0, align 4
@DESC_RD_SWAP = common dso_local global i32 0, align 4
@LB_64_ENB = common dso_local global i32 0, align 4
@SDRAM_CTL = common dso_local global i64 0, align 8
@OUTFF_ENB = common dso_local global i32 0, align 4
@CMDFF_ENB = common dso_local global i32 0, align 4
@QUICK_RD_RETRY = common dso_local global i32 0, align 4
@QUICK_WR_RETRY = common dso_local global i32 0, align 4
@PERR_INT_ENB = common dso_local global i32 0, align 4
@INT_PROC_ENBL = common dso_local global i32 0, align 4
@INIT_ENB = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_VCIBITS = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_VPIBITS = common dso_local global i32 0, align 4
@nvpibits = common dso_local global i32 0, align 4
@nvcibits = common dso_local global i32 0, align 4
@HE_MAXCIDBITS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"nvpibits + nvcibits != %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LBARB = common dso_local global i64 0, align 8
@BANK_ON = common dso_local global i32 0, align 4
@WIDE_DATA = common dso_local global i32 0, align 4
@SDRAMCON = common dso_local global i64 0, align 8
@RCMCONFIG = common dso_local global i64 0, align 8
@TCMCONFIG = common dso_local global i64 0, align 8
@ATM_CELL_PAYLOAD = common dso_local global i32 0, align 4
@LB_CONFIG = common dso_local global i64 0, align 8
@RC_CONFIG = common dso_local global i64 0, align 8
@TX_CONFIG = common dso_local global i64 0, align 8
@TXAAL5_PROTO = common dso_local global i64 0, align 8
@PHY_INT_ENB = common dso_local global i32 0, align 4
@RH_CONFIG = common dso_local global i64 0, align 8
@TCM_MEM_SIZE = common dso_local global i32 0, align 4
@RCM_MEM_SIZE = common dso_local global i32 0, align 4
@CONFIG_TSRB = common dso_local global i32 0, align 4
@TSRB_BA = common dso_local global i64 0, align 8
@CONFIG_TSRC = common dso_local global i32 0, align 4
@TSRC_BA = common dso_local global i64 0, align 8
@CONFIG_TSRD = common dso_local global i32 0, align 4
@TSRD_BA = common dso_local global i64 0, align 8
@CONFIG_TMABR = common dso_local global i32 0, align 4
@TMABR_BA = common dso_local global i64 0, align 8
@CONFIG_TPDBA = common dso_local global i32 0, align 4
@TPD_BA = common dso_local global i64 0, align 8
@RCMLBM_BA = common dso_local global i64 0, align 8
@RCMRSRB_BA = common dso_local global i64 0, align 8
@RCMABR_BA = common dso_local global i64 0, align 8
@RLBC_H = common dso_local global i64 0, align 8
@RLBC_T = common dso_local global i64 0, align 8
@RLBC_H2 = common dso_local global i64 0, align 8
@RXTHRSH = common dso_local global i64 0, align 8
@LITHRSH = common dso_local global i64 0, align 8
@UBUFF_BA = common dso_local global i64 0, align 8
@G0_INMQ_S = common dso_local global i64 0, align 8
@G0_INMQ_L = common dso_local global i64 0, align 8
@G1_INMQ_S = common dso_local global i64 0, align 8
@G1_INMQ_L = common dso_local global i64 0, align 8
@G2_INMQ_S = common dso_local global i64 0, align 8
@G2_INMQ_L = common dso_local global i64 0, align 8
@G3_INMQ_S = common dso_local global i64 0, align 8
@G3_INMQ_L = common dso_local global i64 0, align 8
@G4_INMQ_S = common dso_local global i64 0, align 8
@G4_INMQ_L = common dso_local global i64 0, align 8
@G5_INMQ_S = common dso_local global i64 0, align 8
@G5_INMQ_L = common dso_local global i64 0, align 8
@G6_INMQ_S = common dso_local global i64 0, align 8
@G6_INMQ_L = common dso_local global i64 0, align 8
@G7_INMQ_S = common dso_local global i64 0, align 8
@G7_INMQ_L = common dso_local global i64 0, align 8
@MCC = common dso_local global i64 0, align 8
@OEC = common dso_local global i64 0, align 8
@DCC = common dso_local global i64 0, align 8
@CEC = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"tpd\00", align 1
@TPD_ALIGNMENT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [31 x i8] c"unable to create tpd dma_pool\0A\00", align 1
@HE_NUM_GROUPS = common dso_local global i32 0, align 4
@G0_RBPS_S = common dso_local global i64 0, align 8
@G0_RBPS_T = common dso_local global i64 0, align 8
@G0_RBPS_QI = common dso_local global i64 0, align 8
@G0_RBPS_BS = common dso_local global i64 0, align 8
@G0_RBPL_S = common dso_local global i64 0, align 8
@G0_RBPL_T = common dso_local global i64 0, align 8
@G0_RBPL_QI = common dso_local global i64 0, align 8
@G0_RBPL_BS = common dso_local global i64 0, align 8
@G0_RBRQ_ST = common dso_local global i64 0, align 8
@G0_RBRQ_H = common dso_local global i64 0, align 8
@G0_RBRQ_Q = common dso_local global i64 0, align 8
@G0_RBRQ_I = common dso_local global i64 0, align 8
@G0_TBRQ_B_T = common dso_local global i64 0, align 8
@G0_TBRQ_H = common dso_local global i64 0, align 8
@G0_TBRQ_THRESH = common dso_local global i64 0, align 8
@G0_TBRQ_S = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [37 x i8] c"failed to allocate host status page\0A\00", align 1
@HSP_BA = common dso_local global i64 0, align 8
@sdh = common dso_local global i64 0, align 8
@SUNI_TPOP_APM = common dso_local global i32 0, align 4
@SUNI_TPOP_APM_S = common dso_local global i32 0, align 4
@SUNI_TPOP_S_SDH = common dso_local global i32 0, align 4
@SUNI_TPOP_APM_S_SHIFT = common dso_local global i32 0, align 4
@SUNI_TACP_IUCHP_CLP = common dso_local global i32 0, align 4
@SUNI_TACP_IUCHP = common dso_local global i32 0, align 4
@CS_ERCTL0 = common dso_local global i32 0, align 4
@TX_ENABLE = common dso_local global i32 0, align 4
@ER_ENABLE = common dso_local global i32 0, align 4
@RX_ENABLE = common dso_local global i32 0, align 4
@HE_NUM_CS_STPER = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"hell bent for leather!\0A\00", align 1
@LAT_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*)* @he_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @he_start(%struct.atm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca %struct.he_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %3, align 8
  %19 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %20 = call %struct.he_dev* @HE_DEV(%struct.atm_dev* %19)
  store %struct.he_dev* %20, %struct.he_dev** %4, align 8
  %21 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %22 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %21, i32 0, i32 25
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %5, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = call i64 @pci_resource_start(%struct.pci_dev* %24, i32 0)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = load i32, i32* @GEN_CNTL_0, align 4
  %33 = call i64 @pci_read_config_dword(%struct.pci_dev* %31, i32 %32, i32* %8)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %1158

39:                                               ; preds = %1
  %40 = load i32, i32* @MRL_ENB, align 4
  %41 = load i32, i32* @MRM_ENB, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IGNORE_TIMEOUT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = load i32, i32* @GEN_CNTL_0, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @pci_write_config_dword(%struct.pci_dev* %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %1158

56:                                               ; preds = %39
  %57 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %58 = load i32, i32* @PCI_COMMAND, align 4
  %59 = call i64 @pci_read_config_word(%struct.pci_dev* %57, i32 %58, i32* %7)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %1158

65:                                               ; preds = %56
  %66 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %67 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @PCI_COMMAND_INVALIDATE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %74 = load i32, i32* @PCI_COMMAND, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @pci_write_config_word(%struct.pci_dev* %73, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %65
  %79 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %1158

82:                                               ; preds = %65
  %83 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %84 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %85 = call i64 @pci_read_config_byte(%struct.pci_dev* %83, i32 %84, i32* %11)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %1158

91:                                               ; preds = %82
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 16
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  store i32 16, i32* %11, align 4
  %95 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %96 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i64 @pci_write_config_byte(%struct.pci_dev* %95, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* %11, align 4
  %102 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %94
  br label %104

104:                                              ; preds = %103, %91
  %105 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %106 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %107 = call i64 @pci_read_config_byte(%struct.pci_dev* %105, i32 %106, i32* %12)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %1158

113:                                              ; preds = %104
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %114, 209
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %117, i32 209)
  store i32 209, i32* %12, align 4
  %119 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %120 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i64 @pci_write_config_byte(%struct.pci_dev* %119, i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i32, i32* %12, align 4
  %126 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %124, %116
  br label %128

128:                                              ; preds = %127, %113
  %129 = load i64, i64* %6, align 8
  %130 = load i32, i32* @HE_REGMAP_SIZE, align 4
  %131 = call i32 @ioremap(i64 %129, i32 %130)
  %132 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %133 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %132, i32 0, i32 29
  store i32 %131, i32* %133, align 8
  %134 = icmp ne i32 %131, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %1158

139:                                              ; preds = %128
  %140 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %141 = load i64, i64* @RESET_CNTL, align 8
  %142 = call i32 @he_writel(%struct.he_dev* %140, i32 0, i64 %141)
  %143 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %144 = load i64, i64* @RESET_CNTL, align 8
  %145 = call i32 @he_writel(%struct.he_dev* %143, i32 255, i64 %144)
  %146 = call i32 @msleep(i32 16)
  %147 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %148 = load i64, i64* @RESET_CNTL, align 8
  %149 = call i8* @he_readl(%struct.he_dev* %147, i64 %148)
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @BOARD_RST_STATUS, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %139
  %156 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %1158

159:                                              ; preds = %139
  %160 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %161 = load i64, i64* @HOST_CNTL, align 8
  %162 = call i8* @he_readl(%struct.he_dev* %160, i64 %161)
  %163 = ptrtoint i8* %162 to i32
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @PCI_BUS_SIZE64, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %159
  %169 = load i32, i32* @ENBL_64, align 4
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %8, align 4
  br label %177

172:                                              ; preds = %159
  %173 = load i32, i32* @ENBL_64, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %8, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %172, %168
  %178 = load i32, i32* @disable64, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %182 = load i32, i32* @ENBL_64, align 4
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %8, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %180, %177
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @ENBL_64, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %186
  %194 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %195 = load i32, i32* @GEN_CNTL_0, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i64 @pci_write_config_dword(%struct.pci_dev* %194, i32 %195, i32 %196)
  store i32 0, i32* %16, align 4
  br label %198

198:                                              ; preds = %215, %193
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* @PROD_ID_LEN, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %218

202:                                              ; preds = %198
  %203 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %204 = load i64, i64* @PROD_ID, align 8
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %204, %206
  %208 = call i8* @read_prom_byte(%struct.he_dev* %203, i64 %207)
  %209 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %210 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %209, i32 0, i32 28
  %211 = load i8**, i8*** %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  store i8* %208, i8** %214, align 8
  br label %215

215:                                              ; preds = %202
  %216 = load i32, i32* %16, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %16, align 4
  br label %198

218:                                              ; preds = %198
  %219 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %220 = load i64, i64* @MEDIA, align 8
  %221 = call i8* @read_prom_byte(%struct.he_dev* %219, i64 %220)
  %222 = ptrtoint i8* %221 to i32
  %223 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %224 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  store i32 0, i32* %16, align 4
  br label %225

225:                                              ; preds = %241, %218
  %226 = load i32, i32* %16, align 4
  %227 = icmp slt i32 %226, 6
  br i1 %227, label %228, label %244

228:                                              ; preds = %225
  %229 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %230 = load i64, i64* @MAC_ADDR, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %230, %232
  %234 = call i8* @read_prom_byte(%struct.he_dev* %229, i64 %233)
  %235 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %236 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %235, i32 0, i32 0
  %237 = load i8**, i8*** %236, align 8
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8*, i8** %237, i64 %239
  store i8* %234, i8** %240, align 8
  br label %241

241:                                              ; preds = %228
  %242 = load i32, i32* %16, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %16, align 4
  br label %225

244:                                              ; preds = %225
  %245 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %246 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %245, i32 0, i32 28
  %247 = load i8**, i8*** %246, align 8
  %248 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %249 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = and i32 %250, 64
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)
  %255 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %256 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %255, i32 0, i32 0
  %257 = load i8**, i8*** %256, align 8
  %258 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8** %247, i8* %254, i8** %257)
  %259 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %260 = call i64 @he_is622(%struct.he_dev* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %244
  %263 = load i32, i32* @ATM_OC12_PCR, align 4
  br label %266

264:                                              ; preds = %244
  %265 = load i32, i32* @ATM_OC3_PCR, align 4
  br label %266

266:                                              ; preds = %264, %262
  %267 = phi i32 [ %263, %262 ], [ %265, %264 ]
  %268 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %269 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %268, i32 0, i32 21
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 2
  store i32 %267, i32* %271, align 8
  %272 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %273 = load i64, i64* @LB_SWAP, align 8
  %274 = call i8* @he_readl(%struct.he_dev* %272, i64 %273)
  %275 = ptrtoint i8* %274 to i32
  store i32 %275, i32* %10, align 4
  %276 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %277 = call i64 @he_is622(%struct.he_dev* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %266
  %280 = load i32, i32* @XFER_SIZE, align 4
  %281 = xor i32 %280, -1
  %282 = load i32, i32* %10, align 4
  %283 = and i32 %282, %281
  store i32 %283, i32* %10, align 4
  br label %288

284:                                              ; preds = %266
  %285 = load i32, i32* @XFER_SIZE, align 4
  %286 = load i32, i32* %10, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %10, align 4
  br label %288

288:                                              ; preds = %284, %279
  %289 = load i32, i32* @DESC_WR_SWAP, align 4
  %290 = load i32, i32* @INTR_SWAP, align 4
  %291 = or i32 %289, %290
  %292 = load i32, i32* @BIG_ENDIAN_HOST, align 4
  %293 = or i32 %291, %292
  %294 = load i32, i32* @DATA_WR_SWAP, align 4
  %295 = or i32 %293, %294
  %296 = load i32, i32* @DATA_RD_SWAP, align 4
  %297 = or i32 %295, %296
  %298 = load i32, i32* @DESC_RD_SWAP, align 4
  %299 = or i32 %297, %298
  %300 = xor i32 %299, -1
  %301 = load i32, i32* %10, align 4
  %302 = and i32 %301, %300
  store i32 %302, i32* %10, align 4
  %303 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %304 = load i32, i32* %10, align 4
  %305 = load i64, i64* @LB_SWAP, align 8
  %306 = call i32 @he_writel(%struct.he_dev* %303, i32 %304, i64 %305)
  %307 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %308 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %309 = call i64 @he_is622(%struct.he_dev* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %288
  %312 = load i32, i32* @LB_64_ENB, align 4
  br label %314

313:                                              ; preds = %288
  br label %314

314:                                              ; preds = %313, %311
  %315 = phi i32 [ %312, %311 ], [ 0, %313 ]
  %316 = load i64, i64* @SDRAM_CTL, align 8
  %317 = call i32 @he_writel(%struct.he_dev* %307, i32 %315, i64 %316)
  %318 = call i32 @SWAP_RNUM_MAX(i32 15)
  %319 = load i32, i32* %10, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %10, align 4
  %321 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %322 = load i32, i32* %10, align 4
  %323 = load i64, i64* @LB_SWAP, align 8
  %324 = call i32 @he_writel(%struct.he_dev* %321, i32 %322, i64 %323)
  %325 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %326 = call i32 @he_init_irq(%struct.he_dev* %325)
  store i32 %326, i32* %13, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %314
  %329 = load i32, i32* %13, align 4
  store i32 %329, i32* %2, align 4
  br label %1158

330:                                              ; preds = %314
  %331 = load i32, i32* @OUTFF_ENB, align 4
  %332 = load i32, i32* @CMDFF_ENB, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @QUICK_RD_RETRY, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @QUICK_WR_RETRY, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* @PERR_INT_ENB, align 4
  %339 = or i32 %337, %338
  %340 = load i32, i32* %9, align 4
  %341 = or i32 %340, %339
  store i32 %341, i32* %9, align 4
  %342 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %343 = load i32, i32* %9, align 4
  %344 = load i64, i64* @HOST_CNTL, align 8
  %345 = call i32 @he_writel(%struct.he_dev* %342, i32 %343, i64 %344)
  %346 = load i32, i32* @INT_PROC_ENBL, align 4
  %347 = load i32, i32* @INIT_ENB, align 4
  %348 = or i32 %346, %347
  %349 = load i32, i32* %8, align 4
  %350 = or i32 %349, %348
  store i32 %350, i32* %8, align 4
  %351 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %352 = load i32, i32* @GEN_CNTL_0, align 4
  %353 = load i32, i32* %8, align 4
  %354 = call i64 @pci_write_config_dword(%struct.pci_dev* %351, i32 %352, i32 %353)
  %355 = load i32, i32* @CONFIG_DEFAULT_VCIBITS, align 4
  %356 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %357 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %356, i32 0, i32 1
  store i32 %355, i32* %357, align 4
  %358 = load i32, i32* @CONFIG_DEFAULT_VPIBITS, align 4
  %359 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %360 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %359, i32 0, i32 2
  store i32 %358, i32* %360, align 8
  %361 = load i32, i32* @nvpibits, align 4
  %362 = icmp ne i32 %361, -1
  br i1 %362, label %363, label %377

363:                                              ; preds = %330
  %364 = load i32, i32* @nvcibits, align 4
  %365 = icmp ne i32 %364, -1
  br i1 %365, label %366, label %377

366:                                              ; preds = %363
  %367 = load i32, i32* @nvpibits, align 4
  %368 = load i32, i32* @nvcibits, align 4
  %369 = add nsw i32 %367, %368
  %370 = load i32, i32* @HE_MAXCIDBITS, align 4
  %371 = icmp ne i32 %369, %370
  br i1 %371, label %372, label %377

372:                                              ; preds = %366
  %373 = load i32, i32* @HE_MAXCIDBITS, align 4
  %374 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %373)
  %375 = load i32, i32* @ENODEV, align 4
  %376 = sub nsw i32 0, %375
  store i32 %376, i32* %2, align 4
  br label %1158

377:                                              ; preds = %366, %363, %330
  %378 = load i32, i32* @nvpibits, align 4
  %379 = icmp ne i32 %378, -1
  br i1 %379, label %380, label %389

380:                                              ; preds = %377
  %381 = load i32, i32* @nvpibits, align 4
  %382 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %383 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %382, i32 0, i32 2
  store i32 %381, i32* %383, align 8
  %384 = load i32, i32* @HE_MAXCIDBITS, align 4
  %385 = load i32, i32* @nvpibits, align 4
  %386 = sub nsw i32 %384, %385
  %387 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %388 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %387, i32 0, i32 1
  store i32 %386, i32* %388, align 4
  br label %389

389:                                              ; preds = %380, %377
  %390 = load i32, i32* @nvcibits, align 4
  %391 = icmp ne i32 %390, -1
  br i1 %391, label %392, label %401

392:                                              ; preds = %389
  %393 = load i32, i32* @nvcibits, align 4
  %394 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %395 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %394, i32 0, i32 1
  store i32 %393, i32* %395, align 4
  %396 = load i32, i32* @HE_MAXCIDBITS, align 4
  %397 = load i32, i32* @nvcibits, align 4
  %398 = sub nsw i32 %396, %397
  %399 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %400 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %399, i32 0, i32 2
  store i32 %398, i32* %400, align 8
  br label %401

401:                                              ; preds = %392, %389
  %402 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %403 = call i64 @he_is622(%struct.he_dev* %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %422

405:                                              ; preds = %401
  %406 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %407 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %406, i32 0, i32 3
  store i32 40, i32* %407, align 4
  %408 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %409 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %408, i32 0, i32 4
  store i32 2048, i32* %409, align 8
  %410 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %411 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %410, i32 0, i32 5
  store i32 256, i32* %411, align 4
  %412 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %413 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %412, i32 0, i32 6
  store i32 512, i32* %413, align 8
  %414 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %415 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %414, i32 0, i32 7
  store i32 256, i32* %415, align 4
  %416 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %417 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %416, i32 0, i32 8
  store i32 0, i32* %417, align 8
  %418 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %419 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %418, i32 0, i32 9
  store i32 256, i32* %419, align 4
  %420 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %421 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %420, i32 0, i32 10
  store i32 768, i32* %421, align 8
  br label %439

422:                                              ; preds = %401
  %423 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %424 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %423, i32 0, i32 3
  store i32 20, i32* %424, align 4
  %425 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %426 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %425, i32 0, i32 4
  store i32 1024, i32* %426, align 8
  %427 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %428 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %427, i32 0, i32 5
  store i32 512, i32* %428, align 4
  %429 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %430 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %429, i32 0, i32 6
  store i32 1018, i32* %430, align 8
  %431 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %432 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %431, i32 0, i32 7
  store i32 512, i32* %432, align 4
  %433 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %434 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %433, i32 0, i32 8
  store i32 6, i32* %434, align 8
  %435 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %436 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %435, i32 0, i32 9
  store i32 518, i32* %436, align 4
  %437 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %438 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %437, i32 0, i32 10
  store i32 1536, i32* %438, align 8
  br label %439

439:                                              ; preds = %422, %405
  %440 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %441 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %440, i32 0, i32 11
  store i32 4, i32* %441, align 4
  %442 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %443 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %442, i32 0, i32 12
  store i32 4, i32* %443, align 8
  %444 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %445 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %444, i32 0, i32 5
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %448 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %447, i32 0, i32 3
  %449 = load i32, i32* %448, align 4
  %450 = mul nsw i32 %446, %449
  %451 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %452 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %451, i32 0, i32 11
  %453 = load i32, i32* %452, align 4
  %454 = sdiv i32 %450, %453
  %455 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %456 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %455, i32 0, i32 13
  store i32 %454, i32* %456, align 4
  %457 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %458 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %457, i32 0, i32 13
  %459 = load i32, i32* %458, align 4
  %460 = icmp sgt i32 %459, 2560
  br i1 %460, label %461, label %464

461:                                              ; preds = %439
  %462 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %463 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %462, i32 0, i32 13
  store i32 2560, i32* %463, align 4
  br label %464

464:                                              ; preds = %461, %439
  %465 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %466 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %465, i32 0, i32 7
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %469 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 4
  %471 = mul nsw i32 %467, %470
  %472 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %473 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %472, i32 0, i32 11
  %474 = load i32, i32* %473, align 4
  %475 = sdiv i32 %471, %474
  %476 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %477 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %476, i32 0, i32 14
  store i32 %475, i32* %477, align 8
  %478 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %479 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %478, i32 0, i32 14
  %480 = load i32, i32* %479, align 8
  %481 = icmp sgt i32 %480, 2560
  br i1 %481, label %482, label %485

482:                                              ; preds = %464
  %483 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %484 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %483, i32 0, i32 14
  store i32 2560, i32* %484, align 8
  br label %485

485:                                              ; preds = %482, %464
  %486 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %487 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %486, i32 0, i32 6
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %490 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %489, i32 0, i32 3
  %491 = load i32, i32* %490, align 4
  %492 = mul nsw i32 %488, %491
  %493 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %494 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %493, i32 0, i32 11
  %495 = load i32, i32* %494, align 4
  %496 = sdiv i32 %492, %495
  %497 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %498 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %497, i32 0, i32 15
  store i32 %496, i32* %498, align 4
  %499 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %500 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %499, i32 0, i32 15
  %501 = load i32, i32* %500, align 4
  %502 = icmp sgt i32 %501, 5120
  br i1 %502, label %503, label %506

503:                                              ; preds = %485
  %504 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %505 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %504, i32 0, i32 15
  store i32 5120, i32* %505, align 4
  br label %506

506:                                              ; preds = %503, %485
  %507 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %508 = call i32 @SLICE_X(i32 2)
  %509 = call i32 @ARB_RNUM_MAX(i32 15)
  %510 = or i32 %508, %509
  %511 = call i32 @TH_PRTY(i32 3)
  %512 = or i32 %510, %511
  %513 = call i32 @RH_PRTY(i32 3)
  %514 = or i32 %512, %513
  %515 = call i32 @TL_PRTY(i32 2)
  %516 = or i32 %514, %515
  %517 = call i32 @RL_PRTY(i32 1)
  %518 = or i32 %516, %517
  %519 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %520 = call i64 @he_is622(%struct.he_dev* %519)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %524

522:                                              ; preds = %506
  %523 = call i32 @BUS_MULTI(i32 40)
  br label %526

524:                                              ; preds = %506
  %525 = call i32 @BUS_MULTI(i32 70)
  br label %526

526:                                              ; preds = %524, %522
  %527 = phi i32 [ %523, %522 ], [ %525, %524 ]
  %528 = or i32 %518, %527
  %529 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %530 = call i64 @he_is622(%struct.he_dev* %529)
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %534

532:                                              ; preds = %526
  %533 = call i32 @NET_PREF(i32 80)
  br label %536

534:                                              ; preds = %526
  %535 = call i32 @NET_PREF(i32 140)
  br label %536

536:                                              ; preds = %534, %532
  %537 = phi i32 [ %533, %532 ], [ %535, %534 ]
  %538 = or i32 %528, %537
  %539 = load i64, i64* @LBARB, align 8
  %540 = call i32 @he_writel(%struct.he_dev* %507, i32 %538, i64 %539)
  %541 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %542 = load i32, i32* @BANK_ON, align 4
  %543 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %544 = call i64 @he_is622(%struct.he_dev* %543)
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %550

546:                                              ; preds = %536
  %547 = call i32 @REF_RATE(i32 900)
  %548 = load i32, i32* @WIDE_DATA, align 4
  %549 = or i32 %547, %548
  br label %552

550:                                              ; preds = %536
  %551 = call i32 @REF_RATE(i32 336)
  br label %552

552:                                              ; preds = %550, %546
  %553 = phi i32 [ %549, %546 ], [ %551, %550 ]
  %554 = or i32 %542, %553
  %555 = load i64, i64* @SDRAMCON, align 8
  %556 = call i32 @he_writel(%struct.he_dev* %541, i32 %554, i64 %555)
  %557 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %558 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %559 = call i64 @he_is622(%struct.he_dev* %558)
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %563

561:                                              ; preds = %552
  %562 = call i32 @RM_BANK_WAIT(i32 1)
  br label %565

563:                                              ; preds = %552
  %564 = call i32 @RM_BANK_WAIT(i32 0)
  br label %565

565:                                              ; preds = %563, %561
  %566 = phi i32 [ %562, %561 ], [ %564, %563 ]
  %567 = call i32 @RM_RW_WAIT(i32 1)
  %568 = or i32 %566, %567
  %569 = load i64, i64* @RCMCONFIG, align 8
  %570 = call i32 @he_writel(%struct.he_dev* %557, i32 %568, i64 %569)
  %571 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %572 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %573 = call i64 @he_is622(%struct.he_dev* %572)
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %575, label %577

575:                                              ; preds = %565
  %576 = call i32 @TM_BANK_WAIT(i32 2)
  br label %579

577:                                              ; preds = %565
  %578 = call i32 @TM_BANK_WAIT(i32 1)
  br label %579

579:                                              ; preds = %577, %575
  %580 = phi i32 [ %576, %575 ], [ %578, %577 ]
  %581 = call i32 @TM_RW_WAIT(i32 1)
  %582 = or i32 %580, %581
  %583 = load i64, i64* @TCMCONFIG, align 8
  %584 = call i32 @he_writel(%struct.he_dev* %571, i32 %582, i64 %583)
  %585 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %586 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %587 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %586, i32 0, i32 11
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* @ATM_CELL_PAYLOAD, align 4
  %590 = mul i32 %588, %589
  %591 = load i64, i64* @LB_CONFIG, align 8
  %592 = call i32 @he_writel(%struct.he_dev* %585, i32 %590, i64 %591)
  %593 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %594 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %595 = call i64 @he_is622(%struct.he_dev* %594)
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %597, label %599

597:                                              ; preds = %579
  %598 = call i32 @UT_RD_DELAY(i32 8)
  br label %601

599:                                              ; preds = %579
  %600 = call i32 @UT_RD_DELAY(i32 0)
  br label %601

601:                                              ; preds = %599, %597
  %602 = phi i32 [ %598, %597 ], [ %600, %599 ]
  %603 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %604 = call i64 @he_is622(%struct.he_dev* %603)
  %605 = icmp ne i64 %604, 0
  br i1 %605, label %606, label %608

606:                                              ; preds = %601
  %607 = call i32 @RC_UT_MODE(i32 0)
  br label %610

608:                                              ; preds = %601
  %609 = call i32 @RC_UT_MODE(i32 1)
  br label %610

610:                                              ; preds = %608, %606
  %611 = phi i32 [ %607, %606 ], [ %609, %608 ]
  %612 = or i32 %602, %611
  %613 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %614 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %613, i32 0, i32 2
  %615 = load i32, i32* %614, align 8
  %616 = call i32 @RX_VALVP(i32 %615)
  %617 = or i32 %612, %616
  %618 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %619 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %618, i32 0, i32 1
  %620 = load i32, i32* %619, align 4
  %621 = call i32 @RX_VALVC(i32 %620)
  %622 = or i32 %617, %621
  %623 = load i64, i64* @RC_CONFIG, align 8
  %624 = call i32 @he_writel(%struct.he_dev* %593, i32 %622, i64 %623)
  %625 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %626 = call i32 @DRF_THRESH(i32 32)
  %627 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %628 = call i64 @he_is622(%struct.he_dev* %627)
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %630, label %632

630:                                              ; preds = %610
  %631 = call i32 @TX_UT_MODE(i32 0)
  br label %634

632:                                              ; preds = %610
  %633 = call i32 @TX_UT_MODE(i32 1)
  br label %634

634:                                              ; preds = %632, %630
  %635 = phi i32 [ %631, %630 ], [ %633, %632 ]
  %636 = or i32 %626, %635
  %637 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %638 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %637, i32 0, i32 1
  %639 = load i32, i32* %638, align 4
  %640 = call i32 @TX_VCI_MASK(i32 %639)
  %641 = or i32 %636, %640
  %642 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %643 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %642, i32 0, i32 15
  %644 = load i32, i32* %643, align 4
  %645 = call i32 @LBFREE_CNT(i32 %644)
  %646 = or i32 %641, %645
  %647 = load i64, i64* @TX_CONFIG, align 8
  %648 = call i32 @he_writel(%struct.he_dev* %625, i32 %646, i64 %647)
  %649 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %650 = load i64, i64* @TXAAL5_PROTO, align 8
  %651 = call i32 @he_writel(%struct.he_dev* %649, i32 0, i64 %650)
  %652 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %653 = load i32, i32* @PHY_INT_ENB, align 4
  %654 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %655 = call i64 @he_is622(%struct.he_dev* %654)
  %656 = icmp ne i64 %655, 0
  br i1 %656, label %657, label %659

657:                                              ; preds = %634
  %658 = call i32 @PTMR_PRE(i32 66)
  br label %661

659:                                              ; preds = %634
  %660 = call i32 @PTMR_PRE(i32 49)
  br label %661

661:                                              ; preds = %659, %657
  %662 = phi i32 [ %658, %657 ], [ %660, %659 ]
  %663 = or i32 %653, %662
  %664 = load i64, i64* @RH_CONFIG, align 8
  %665 = call i32 @he_writel(%struct.he_dev* %652, i32 %663, i64 %664)
  store i32 0, i32* %16, align 4
  br label %666

666:                                              ; preds = %674, %661
  %667 = load i32, i32* %16, align 4
  %668 = load i32, i32* @TCM_MEM_SIZE, align 4
  %669 = icmp slt i32 %667, %668
  br i1 %669, label %670, label %677

670:                                              ; preds = %666
  %671 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %672 = load i32, i32* %16, align 4
  %673 = call i32 @he_writel_tcm(%struct.he_dev* %671, i32 0, i32 %672)
  br label %674

674:                                              ; preds = %670
  %675 = load i32, i32* %16, align 4
  %676 = add nsw i32 %675, 1
  store i32 %676, i32* %16, align 4
  br label %666

677:                                              ; preds = %666
  store i32 0, i32* %16, align 4
  br label %678

678:                                              ; preds = %686, %677
  %679 = load i32, i32* %16, align 4
  %680 = load i32, i32* @RCM_MEM_SIZE, align 4
  %681 = icmp slt i32 %679, %680
  br i1 %681, label %682, label %689

682:                                              ; preds = %678
  %683 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %684 = load i32, i32* %16, align 4
  %685 = call i32 @he_writel_rcm(%struct.he_dev* %683, i32 0, i32 %684)
  br label %686

686:                                              ; preds = %682
  %687 = load i32, i32* %16, align 4
  %688 = add nsw i32 %687, 1
  store i32 %688, i32* %16, align 4
  br label %678

689:                                              ; preds = %678
  %690 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %691 = load i32, i32* @CONFIG_TSRB, align 4
  %692 = load i64, i64* @TSRB_BA, align 8
  %693 = call i32 @he_writel(%struct.he_dev* %690, i32 %691, i64 %692)
  %694 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %695 = load i32, i32* @CONFIG_TSRC, align 4
  %696 = load i64, i64* @TSRC_BA, align 8
  %697 = call i32 @he_writel(%struct.he_dev* %694, i32 %695, i64 %696)
  %698 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %699 = load i32, i32* @CONFIG_TSRD, align 4
  %700 = load i64, i64* @TSRD_BA, align 8
  %701 = call i32 @he_writel(%struct.he_dev* %698, i32 %699, i64 %700)
  %702 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %703 = load i32, i32* @CONFIG_TMABR, align 4
  %704 = load i64, i64* @TMABR_BA, align 8
  %705 = call i32 @he_writel(%struct.he_dev* %702, i32 %703, i64 %704)
  %706 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %707 = load i32, i32* @CONFIG_TPDBA, align 4
  %708 = load i64, i64* @TPD_BA, align 8
  %709 = call i32 @he_writel(%struct.he_dev* %706, i32 %707, i64 %708)
  %710 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %711 = load i64, i64* @RCMLBM_BA, align 8
  %712 = call i32 @he_writel(%struct.he_dev* %710, i32 32768, i64 %711)
  %713 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %714 = load i64, i64* @RCMRSRB_BA, align 8
  %715 = call i32 @he_writel(%struct.he_dev* %713, i32 57344, i64 %714)
  %716 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %717 = load i64, i64* @RCMABR_BA, align 8
  %718 = call i32 @he_writel(%struct.he_dev* %716, i32 55296, i64 %717)
  %719 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %720 = call i32 @he_init_rx_lbfp0(%struct.he_dev* %719)
  %721 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %722 = call i32 @he_init_rx_lbfp1(%struct.he_dev* %721)
  %723 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %724 = load i64, i64* @RLBC_H, align 8
  %725 = call i32 @he_writel(%struct.he_dev* %723, i32 0, i64 %724)
  %726 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %727 = load i64, i64* @RLBC_T, align 8
  %728 = call i32 @he_writel(%struct.he_dev* %726, i32 0, i64 %727)
  %729 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %730 = load i64, i64* @RLBC_H2, align 8
  %731 = call i32 @he_writel(%struct.he_dev* %729, i32 0, i64 %730)
  %732 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %733 = load i64, i64* @RXTHRSH, align 8
  %734 = call i32 @he_writel(%struct.he_dev* %732, i32 512, i64 %733)
  %735 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %736 = load i64, i64* @LITHRSH, align 8
  %737 = call i32 @he_writel(%struct.he_dev* %735, i32 256, i64 %736)
  %738 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %739 = call i32 @he_init_tx_lbfp(%struct.he_dev* %738)
  %740 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %741 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %742 = call i64 @he_is622(%struct.he_dev* %741)
  %743 = icmp ne i64 %742, 0
  %744 = zext i1 %743 to i64
  %745 = select i1 %743, i32 1066880, i32 2048
  %746 = load i64, i64* @UBUFF_BA, align 8
  %747 = call i32 @he_writel(%struct.he_dev* %740, i32 %745, i64 %746)
  %748 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %749 = call i64 @he_is622(%struct.he_dev* %748)
  %750 = icmp ne i64 %749, 0
  br i1 %750, label %751, label %800

751:                                              ; preds = %689
  %752 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %753 = load i64, i64* @G0_INMQ_S, align 8
  %754 = call i32 @he_writel(%struct.he_dev* %752, i32 15, i64 %753)
  %755 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %756 = load i64, i64* @G0_INMQ_L, align 8
  %757 = call i32 @he_writel(%struct.he_dev* %755, i32 8207, i64 %756)
  %758 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %759 = load i64, i64* @G1_INMQ_S, align 8
  %760 = call i32 @he_writel(%struct.he_dev* %758, i32 31, i64 %759)
  %761 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %762 = load i64, i64* @G1_INMQ_L, align 8
  %763 = call i32 @he_writel(%struct.he_dev* %761, i32 8223, i64 %762)
  %764 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %765 = load i64, i64* @G2_INMQ_S, align 8
  %766 = call i32 @he_writel(%struct.he_dev* %764, i32 47, i64 %765)
  %767 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %768 = load i64, i64* @G2_INMQ_L, align 8
  %769 = call i32 @he_writel(%struct.he_dev* %767, i32 8239, i64 %768)
  %770 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %771 = load i64, i64* @G3_INMQ_S, align 8
  %772 = call i32 @he_writel(%struct.he_dev* %770, i32 63, i64 %771)
  %773 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %774 = load i64, i64* @G3_INMQ_L, align 8
  %775 = call i32 @he_writel(%struct.he_dev* %773, i32 8255, i64 %774)
  %776 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %777 = load i64, i64* @G4_INMQ_S, align 8
  %778 = call i32 @he_writel(%struct.he_dev* %776, i32 79, i64 %777)
  %779 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %780 = load i64, i64* @G4_INMQ_L, align 8
  %781 = call i32 @he_writel(%struct.he_dev* %779, i32 8271, i64 %780)
  %782 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %783 = load i64, i64* @G5_INMQ_S, align 8
  %784 = call i32 @he_writel(%struct.he_dev* %782, i32 95, i64 %783)
  %785 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %786 = load i64, i64* @G5_INMQ_L, align 8
  %787 = call i32 @he_writel(%struct.he_dev* %785, i32 8287, i64 %786)
  %788 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %789 = load i64, i64* @G6_INMQ_S, align 8
  %790 = call i32 @he_writel(%struct.he_dev* %788, i32 111, i64 %789)
  %791 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %792 = load i64, i64* @G6_INMQ_L, align 8
  %793 = call i32 @he_writel(%struct.he_dev* %791, i32 8303, i64 %792)
  %794 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %795 = load i64, i64* @G7_INMQ_S, align 8
  %796 = call i32 @he_writel(%struct.he_dev* %794, i32 127, i64 %795)
  %797 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %798 = load i64, i64* @G7_INMQ_L, align 8
  %799 = call i32 @he_writel(%struct.he_dev* %797, i32 8319, i64 %798)
  br label %849

800:                                              ; preds = %689
  %801 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %802 = load i64, i64* @G0_INMQ_S, align 8
  %803 = call i32 @he_writel(%struct.he_dev* %801, i32 0, i64 %802)
  %804 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %805 = load i64, i64* @G0_INMQ_L, align 8
  %806 = call i32 @he_writel(%struct.he_dev* %804, i32 8, i64 %805)
  %807 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %808 = load i64, i64* @G1_INMQ_S, align 8
  %809 = call i32 @he_writel(%struct.he_dev* %807, i32 1, i64 %808)
  %810 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %811 = load i64, i64* @G1_INMQ_L, align 8
  %812 = call i32 @he_writel(%struct.he_dev* %810, i32 9, i64 %811)
  %813 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %814 = load i64, i64* @G2_INMQ_S, align 8
  %815 = call i32 @he_writel(%struct.he_dev* %813, i32 2, i64 %814)
  %816 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %817 = load i64, i64* @G2_INMQ_L, align 8
  %818 = call i32 @he_writel(%struct.he_dev* %816, i32 10, i64 %817)
  %819 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %820 = load i64, i64* @G3_INMQ_S, align 8
  %821 = call i32 @he_writel(%struct.he_dev* %819, i32 3, i64 %820)
  %822 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %823 = load i64, i64* @G3_INMQ_L, align 8
  %824 = call i32 @he_writel(%struct.he_dev* %822, i32 11, i64 %823)
  %825 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %826 = load i64, i64* @G4_INMQ_S, align 8
  %827 = call i32 @he_writel(%struct.he_dev* %825, i32 4, i64 %826)
  %828 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %829 = load i64, i64* @G4_INMQ_L, align 8
  %830 = call i32 @he_writel(%struct.he_dev* %828, i32 12, i64 %829)
  %831 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %832 = load i64, i64* @G5_INMQ_S, align 8
  %833 = call i32 @he_writel(%struct.he_dev* %831, i32 5, i64 %832)
  %834 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %835 = load i64, i64* @G5_INMQ_L, align 8
  %836 = call i32 @he_writel(%struct.he_dev* %834, i32 13, i64 %835)
  %837 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %838 = load i64, i64* @G6_INMQ_S, align 8
  %839 = call i32 @he_writel(%struct.he_dev* %837, i32 6, i64 %838)
  %840 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %841 = load i64, i64* @G6_INMQ_L, align 8
  %842 = call i32 @he_writel(%struct.he_dev* %840, i32 14, i64 %841)
  %843 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %844 = load i64, i64* @G7_INMQ_S, align 8
  %845 = call i32 @he_writel(%struct.he_dev* %843, i32 7, i64 %844)
  %846 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %847 = load i64, i64* @G7_INMQ_L, align 8
  %848 = call i32 @he_writel(%struct.he_dev* %846, i32 15, i64 %847)
  br label %849

849:                                              ; preds = %800, %751
  %850 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %851 = load i64, i64* @MCC, align 8
  %852 = call i32 @he_writel(%struct.he_dev* %850, i32 0, i64 %851)
  %853 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %854 = load i64, i64* @OEC, align 8
  %855 = call i32 @he_writel(%struct.he_dev* %853, i32 0, i64 %854)
  %856 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %857 = load i64, i64* @DCC, align 8
  %858 = call i32 @he_writel(%struct.he_dev* %856, i32 0, i64 %857)
  %859 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %860 = load i64, i64* @CEC, align 8
  %861 = call i32 @he_writel(%struct.he_dev* %859, i32 0, i64 %860)
  %862 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %863 = call i32 @he_init_cs_block(%struct.he_dev* %862)
  %864 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %865 = call i64 @he_init_cs_block_rcm(%struct.he_dev* %864)
  %866 = icmp slt i64 %865, 0
  br i1 %866, label %867, label %870

867:                                              ; preds = %849
  %868 = load i32, i32* @ENOMEM, align 4
  %869 = sub nsw i32 0, %868
  store i32 %869, i32* %2, align 4
  br label %1158

870:                                              ; preds = %849
  %871 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %872 = call i32 @he_init_tpdrq(%struct.he_dev* %871)
  %873 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %874 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %873, i32 0, i32 25
  %875 = load %struct.pci_dev*, %struct.pci_dev** %874, align 8
  %876 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %875, i32 0, i32 0
  %877 = load i32, i32* @TPD_ALIGNMENT, align 4
  %878 = call i32* @dma_pool_create(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32* %876, i32 4, i32 %877, i32 0)
  %879 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %880 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %879, i32 0, i32 27
  store i32* %878, i32** %880, align 8
  %881 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %882 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %881, i32 0, i32 27
  %883 = load i32*, i32** %882, align 8
  %884 = icmp eq i32* %883, null
  br i1 %884, label %885, label %889

885:                                              ; preds = %870
  %886 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  %887 = load i32, i32* @ENOMEM, align 4
  %888 = sub nsw i32 0, %887
  store i32 %888, i32* %2, align 4
  br label %1158

889:                                              ; preds = %870
  %890 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %891 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %890, i32 0, i32 26
  %892 = call i32 @INIT_LIST_HEAD(i32* %891)
  %893 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %894 = call i64 @he_init_group(%struct.he_dev* %893, i32 0)
  %895 = icmp ne i64 %894, 0
  br i1 %895, label %896, label %899

896:                                              ; preds = %889
  %897 = load i32, i32* @ENOMEM, align 4
  %898 = sub nsw i32 0, %897
  store i32 %898, i32* %2, align 4
  br label %1158

899:                                              ; preds = %889
  store i32 1, i32* %17, align 4
  br label %900

900:                                              ; preds = %1027, %899
  %901 = load i32, i32* %17, align 4
  %902 = load i32, i32* @HE_NUM_GROUPS, align 4
  %903 = icmp slt i32 %901, %902
  br i1 %903, label %904, label %1030

904:                                              ; preds = %900
  %905 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %906 = load i64, i64* @G0_RBPS_S, align 8
  %907 = load i32, i32* %17, align 4
  %908 = mul nsw i32 %907, 32
  %909 = sext i32 %908 to i64
  %910 = add nsw i64 %906, %909
  %911 = call i32 @he_writel(%struct.he_dev* %905, i32 0, i64 %910)
  %912 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %913 = load i64, i64* @G0_RBPS_T, align 8
  %914 = load i32, i32* %17, align 4
  %915 = mul nsw i32 %914, 32
  %916 = sext i32 %915 to i64
  %917 = add nsw i64 %913, %916
  %918 = call i32 @he_writel(%struct.he_dev* %912, i32 0, i64 %917)
  %919 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %920 = load i64, i64* @G0_RBPS_QI, align 8
  %921 = load i32, i32* %17, align 4
  %922 = mul nsw i32 %921, 32
  %923 = sext i32 %922 to i64
  %924 = add nsw i64 %920, %923
  %925 = call i32 @he_writel(%struct.he_dev* %919, i32 0, i64 %924)
  %926 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %927 = call i32 @RBP_THRESH(i32 1)
  %928 = call i32 @RBP_QSIZE(i32 0)
  %929 = or i32 %927, %928
  %930 = load i64, i64* @G0_RBPS_BS, align 8
  %931 = load i32, i32* %17, align 4
  %932 = mul nsw i32 %931, 32
  %933 = sext i32 %932 to i64
  %934 = add nsw i64 %930, %933
  %935 = call i32 @he_writel(%struct.he_dev* %926, i32 %929, i64 %934)
  %936 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %937 = load i64, i64* @G0_RBPL_S, align 8
  %938 = load i32, i32* %17, align 4
  %939 = mul nsw i32 %938, 32
  %940 = sext i32 %939 to i64
  %941 = add nsw i64 %937, %940
  %942 = call i32 @he_writel(%struct.he_dev* %936, i32 0, i64 %941)
  %943 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %944 = load i64, i64* @G0_RBPL_T, align 8
  %945 = load i32, i32* %17, align 4
  %946 = mul nsw i32 %945, 32
  %947 = sext i32 %946 to i64
  %948 = add nsw i64 %944, %947
  %949 = call i32 @he_writel(%struct.he_dev* %943, i32 0, i64 %948)
  %950 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %951 = call i32 @RBP_THRESH(i32 1)
  %952 = call i32 @RBP_QSIZE(i32 0)
  %953 = or i32 %951, %952
  %954 = load i64, i64* @G0_RBPL_QI, align 8
  %955 = load i32, i32* %17, align 4
  %956 = mul nsw i32 %955, 32
  %957 = sext i32 %956 to i64
  %958 = add nsw i64 %954, %957
  %959 = call i32 @he_writel(%struct.he_dev* %950, i32 %953, i64 %958)
  %960 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %961 = load i64, i64* @G0_RBPL_BS, align 8
  %962 = load i32, i32* %17, align 4
  %963 = mul nsw i32 %962, 32
  %964 = sext i32 %963 to i64
  %965 = add nsw i64 %961, %964
  %966 = call i32 @he_writel(%struct.he_dev* %960, i32 0, i64 %965)
  %967 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %968 = load i64, i64* @G0_RBRQ_ST, align 8
  %969 = load i32, i32* %17, align 4
  %970 = mul nsw i32 %969, 16
  %971 = sext i32 %970 to i64
  %972 = add nsw i64 %968, %971
  %973 = call i32 @he_writel(%struct.he_dev* %967, i32 0, i64 %972)
  %974 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %975 = load i64, i64* @G0_RBRQ_H, align 8
  %976 = load i32, i32* %17, align 4
  %977 = mul nsw i32 %976, 16
  %978 = sext i32 %977 to i64
  %979 = add nsw i64 %975, %978
  %980 = call i32 @he_writel(%struct.he_dev* %974, i32 0, i64 %979)
  %981 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %982 = call i32 @RBRQ_THRESH(i32 1)
  %983 = call i32 @RBRQ_SIZE(i32 0)
  %984 = or i32 %982, %983
  %985 = load i64, i64* @G0_RBRQ_Q, align 8
  %986 = load i32, i32* %17, align 4
  %987 = mul nsw i32 %986, 16
  %988 = sext i32 %987 to i64
  %989 = add nsw i64 %985, %988
  %990 = call i32 @he_writel(%struct.he_dev* %981, i32 %984, i64 %989)
  %991 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %992 = load i64, i64* @G0_RBRQ_I, align 8
  %993 = load i32, i32* %17, align 4
  %994 = mul nsw i32 %993, 16
  %995 = sext i32 %994 to i64
  %996 = add nsw i64 %992, %995
  %997 = call i32 @he_writel(%struct.he_dev* %991, i32 0, i64 %996)
  %998 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %999 = load i64, i64* @G0_TBRQ_B_T, align 8
  %1000 = load i32, i32* %17, align 4
  %1001 = mul nsw i32 %1000, 16
  %1002 = sext i32 %1001 to i64
  %1003 = add nsw i64 %999, %1002
  %1004 = call i32 @he_writel(%struct.he_dev* %998, i32 0, i64 %1003)
  %1005 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1006 = load i64, i64* @G0_TBRQ_H, align 8
  %1007 = load i32, i32* %17, align 4
  %1008 = mul nsw i32 %1007, 16
  %1009 = sext i32 %1008 to i64
  %1010 = add nsw i64 %1006, %1009
  %1011 = call i32 @he_writel(%struct.he_dev* %1005, i32 0, i64 %1010)
  %1012 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1013 = call i32 @TBRQ_THRESH(i32 1)
  %1014 = load i64, i64* @G0_TBRQ_THRESH, align 8
  %1015 = load i32, i32* %17, align 4
  %1016 = mul nsw i32 %1015, 16
  %1017 = sext i32 %1016 to i64
  %1018 = add nsw i64 %1014, %1017
  %1019 = call i32 @he_writel(%struct.he_dev* %1012, i32 %1013, i64 %1018)
  %1020 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1021 = load i64, i64* @G0_TBRQ_S, align 8
  %1022 = load i32, i32* %17, align 4
  %1023 = mul nsw i32 %1022, 16
  %1024 = sext i32 %1023 to i64
  %1025 = add nsw i64 %1021, %1024
  %1026 = call i32 @he_writel(%struct.he_dev* %1020, i32 0, i64 %1025)
  br label %1027

1027:                                             ; preds = %904
  %1028 = load i32, i32* %17, align 4
  %1029 = add nsw i32 %1028, 1
  store i32 %1029, i32* %17, align 4
  br label %900

1030:                                             ; preds = %900
  %1031 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1032 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1031, i32 0, i32 25
  %1033 = load %struct.pci_dev*, %struct.pci_dev** %1032, align 8
  %1034 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1033, i32 0, i32 0
  %1035 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1036 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1035, i32 0, i32 16
  %1037 = load i32, i32* @GFP_KERNEL, align 4
  %1038 = call i32* @dma_alloc_coherent(i32* %1034, i32 4, i32* %1036, i32 %1037)
  %1039 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1040 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1039, i32 0, i32 24
  store i32* %1038, i32** %1040, align 8
  %1041 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1042 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1041, i32 0, i32 24
  %1043 = load i32*, i32** %1042, align 8
  %1044 = icmp eq i32* %1043, null
  br i1 %1044, label %1045, label %1049

1045:                                             ; preds = %1030
  %1046 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  %1047 = load i32, i32* @ENOMEM, align 4
  %1048 = sub nsw i32 0, %1047
  store i32 %1048, i32* %2, align 4
  br label %1158

1049:                                             ; preds = %1030
  %1050 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1051 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1052 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1051, i32 0, i32 16
  %1053 = load i32, i32* %1052, align 8
  %1054 = load i64, i64* @HSP_BA, align 8
  %1055 = call i32 @he_writel(%struct.he_dev* %1050, i32 %1053, i64 %1054)
  %1056 = load i64, i64* @sdh, align 8
  %1057 = icmp ne i64 %1056, 0
  br i1 %1057, label %1058, label %1084

1058:                                             ; preds = %1049
  %1059 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1060 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1059, i32 0, i32 21
  %1061 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1060, align 8
  %1062 = load i32, i32* @SUNI_TPOP_APM, align 4
  %1063 = call i32 @he_phy_get(%struct.TYPE_11__* %1061, i32 %1062)
  store i32 %1063, i32* %18, align 4
  %1064 = load i32, i32* %18, align 4
  %1065 = load i32, i32* @SUNI_TPOP_APM_S, align 4
  %1066 = xor i32 %1065, -1
  %1067 = and i32 %1064, %1066
  %1068 = load i32, i32* @SUNI_TPOP_S_SDH, align 4
  %1069 = load i32, i32* @SUNI_TPOP_APM_S_SHIFT, align 4
  %1070 = shl i32 %1068, %1069
  %1071 = or i32 %1067, %1070
  store i32 %1071, i32* %18, align 4
  %1072 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1073 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1072, i32 0, i32 21
  %1074 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1073, align 8
  %1075 = load i32, i32* %18, align 4
  %1076 = load i32, i32* @SUNI_TPOP_APM, align 4
  %1077 = call i32 @he_phy_put(%struct.TYPE_11__* %1074, i32 %1075, i32 %1076)
  %1078 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1079 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1078, i32 0, i32 21
  %1080 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1079, align 8
  %1081 = load i32, i32* @SUNI_TACP_IUCHP_CLP, align 4
  %1082 = load i32, i32* @SUNI_TACP_IUCHP, align 4
  %1083 = call i32 @he_phy_put(%struct.TYPE_11__* %1080, i32 %1081, i32 %1082)
  br label %1084

1084:                                             ; preds = %1058, %1049
  %1085 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1086 = load i32, i32* @CS_ERCTL0, align 4
  %1087 = call i32 @he_readl_mbox(%struct.he_dev* %1085, i32 %1086)
  store i32 %1087, i32* %15, align 4
  %1088 = load i32, i32* @TX_ENABLE, align 4
  %1089 = load i32, i32* @ER_ENABLE, align 4
  %1090 = or i32 %1088, %1089
  %1091 = load i32, i32* %15, align 4
  %1092 = or i32 %1091, %1090
  store i32 %1092, i32* %15, align 4
  %1093 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1094 = load i32, i32* %15, align 4
  %1095 = load i32, i32* @CS_ERCTL0, align 4
  %1096 = call i32 @he_writel_mbox(%struct.he_dev* %1093, i32 %1094, i32 %1095)
  %1097 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1098 = load i64, i64* @RC_CONFIG, align 8
  %1099 = call i8* @he_readl(%struct.he_dev* %1097, i64 %1098)
  %1100 = ptrtoint i8* %1099 to i32
  store i32 %1100, i32* %15, align 4
  %1101 = load i32, i32* @RX_ENABLE, align 4
  %1102 = load i32, i32* %15, align 4
  %1103 = or i32 %1102, %1101
  store i32 %1103, i32* %15, align 4
  %1104 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1105 = load i32, i32* %15, align 4
  %1106 = load i64, i64* @RC_CONFIG, align 8
  %1107 = call i32 @he_writel(%struct.he_dev* %1104, i32 %1105, i64 %1106)
  store i32 0, i32* %16, align 4
  br label %1108

1108:                                             ; preds = %1127, %1084
  %1109 = load i32, i32* %16, align 4
  %1110 = load i32, i32* @HE_NUM_CS_STPER, align 4
  %1111 = icmp slt i32 %1109, %1110
  br i1 %1111, label %1112, label %1130

1112:                                             ; preds = %1108
  %1113 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1114 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1113, i32 0, i32 23
  %1115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1114, align 8
  %1116 = load i32, i32* %16, align 4
  %1117 = sext i32 %1116 to i64
  %1118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1115, i64 %1117
  %1119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1118, i32 0, i32 1
  store i64 0, i64* %1119, align 8
  %1120 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1121 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1120, i32 0, i32 23
  %1122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1121, align 8
  %1123 = load i32, i32* %16, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1122, i64 %1124
  %1126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1125, i32 0, i32 0
  store i32 -1, i32* %1126, align 8
  br label %1127

1127:                                             ; preds = %1112
  %1128 = load i32, i32* %16, align 4
  %1129 = add nsw i32 %1128, 1
  store i32 %1129, i32* %16, align 4
  br label %1108

1130:                                             ; preds = %1108
  %1131 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1132 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1131, i32 0, i32 22
  store i64 0, i64* %1132, align 8
  %1133 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1134 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1133, i32 0, i32 2
  %1135 = load i32, i32* %1134, align 8
  %1136 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1137 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1136, i32 0, i32 21
  %1138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1137, align 8
  %1139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1138, i32 0, i32 0
  %1140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1139, i32 0, i32 0
  store i32 %1135, i32* %1140, align 8
  %1141 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1142 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1141, i32 0, i32 1
  %1143 = load i32, i32* %1142, align 4
  %1144 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1145 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1144, i32 0, i32 21
  %1146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1145, align 8
  %1147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1146, i32 0, i32 0
  %1148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1147, i32 0, i32 1
  store i32 %1143, i32* %1148, align 4
  %1149 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1150 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1149, i32 0, i32 20
  store i64 0, i64* %1150, align 8
  %1151 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1152 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1151, i32 0, i32 19
  store i64 0, i64* %1152, align 8
  %1153 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1154 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1153, i32 0, i32 18
  store i64 0, i64* %1154, align 8
  %1155 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %1156 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %1155, i32 0, i32 17
  store i64 0, i64* %1156, align 8
  %1157 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %1158

1158:                                             ; preds = %1130, %1045, %896, %885, %867, %372, %328, %155, %135, %109, %87, %78, %61, %52, %35
  %1159 = load i32, i32* %2, align 4
  ret i32 %1159
}

declare dso_local %struct.he_dev* @HE_DEV(%struct.atm_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @HPRINTK(i8*, ...) #1

declare dso_local i64 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @hprintk(i8*, ...) #1

declare dso_local i64 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @he_writel(%struct.he_dev*, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i8* @he_readl(%struct.he_dev*, i64) #1

declare dso_local i8* @read_prom_byte(%struct.he_dev*, i64) #1

declare dso_local i64 @he_is622(%struct.he_dev*) #1

declare dso_local i32 @SWAP_RNUM_MAX(i32) #1

declare dso_local i32 @he_init_irq(%struct.he_dev*) #1

declare dso_local i32 @SLICE_X(i32) #1

declare dso_local i32 @ARB_RNUM_MAX(i32) #1

declare dso_local i32 @TH_PRTY(i32) #1

declare dso_local i32 @RH_PRTY(i32) #1

declare dso_local i32 @TL_PRTY(i32) #1

declare dso_local i32 @RL_PRTY(i32) #1

declare dso_local i32 @BUS_MULTI(i32) #1

declare dso_local i32 @NET_PREF(i32) #1

declare dso_local i32 @REF_RATE(i32) #1

declare dso_local i32 @RM_BANK_WAIT(i32) #1

declare dso_local i32 @RM_RW_WAIT(i32) #1

declare dso_local i32 @TM_BANK_WAIT(i32) #1

declare dso_local i32 @TM_RW_WAIT(i32) #1

declare dso_local i32 @UT_RD_DELAY(i32) #1

declare dso_local i32 @RC_UT_MODE(i32) #1

declare dso_local i32 @RX_VALVP(i32) #1

declare dso_local i32 @RX_VALVC(i32) #1

declare dso_local i32 @DRF_THRESH(i32) #1

declare dso_local i32 @TX_UT_MODE(i32) #1

declare dso_local i32 @TX_VCI_MASK(i32) #1

declare dso_local i32 @LBFREE_CNT(i32) #1

declare dso_local i32 @PTMR_PRE(i32) #1

declare dso_local i32 @he_writel_tcm(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_rcm(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_init_rx_lbfp0(%struct.he_dev*) #1

declare dso_local i32 @he_init_rx_lbfp1(%struct.he_dev*) #1

declare dso_local i32 @he_init_tx_lbfp(%struct.he_dev*) #1

declare dso_local i32 @he_init_cs_block(%struct.he_dev*) #1

declare dso_local i64 @he_init_cs_block_rcm(%struct.he_dev*) #1

declare dso_local i32 @he_init_tpdrq(%struct.he_dev*) #1

declare dso_local i32* @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @he_init_group(%struct.he_dev*, i32) #1

declare dso_local i32 @RBP_THRESH(i32) #1

declare dso_local i32 @RBP_QSIZE(i32) #1

declare dso_local i32 @RBRQ_THRESH(i32) #1

declare dso_local i32 @RBRQ_SIZE(i32) #1

declare dso_local i32 @TBRQ_THRESH(i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @he_phy_get(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @he_phy_put(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @he_readl_mbox(%struct.he_dev*, i32) #1

declare dso_local i32 @he_writel_mbox(%struct.he_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
