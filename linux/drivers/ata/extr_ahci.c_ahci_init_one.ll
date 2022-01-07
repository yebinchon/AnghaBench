; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port_info = type { i32, i64 }
%struct.pci_dev = type { i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.ahci_host_priv = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ata_host = type { i32, %struct.ata_port**, i32, %struct.ahci_host_priv* }
%struct.ata_port = type { i32, i32, i32*, i32 }

@ahci_port_info = common dso_local global %struct.ata_port_info* null, align 8
@AHCI_PCI_BAR_STANDARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@ATA_MAX_QUEUE = common dso_local global i64 0, align 8
@AHCI_MAX_CMDS = common dso_local global i32 0, align 4
@DRV_VERSION = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_MARVELL = common dso_local global i32 0, align 4
@marvell_enable = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_PROMISE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"PDC42819 can only drive SATA devices with this driver\0A\00", align 1
@PCI_VENDOR_ID_STMICRO = common dso_local global i32 0, align 4
@AHCI_PCI_BAR_STA2X11 = common dso_local global i32 0, align 4
@AHCI_PCI_BAR_ENMOTUS = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_CAVIUM = common dso_local global i32 0, align 4
@AHCI_PCI_BAR_CAVIUM = common dso_local global i32 0, align 4
@AHCI_PCI_BAR_CAVIUM_GEN5 = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@ICH_MAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"controller is in combined mode, can't enable AHCI mode\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@board_ahci_mcp65 = common dso_local global i32 0, align 4
@AHCI_HFLAG_NO_MSI = common dso_local global i64 0, align 8
@board_ahci_sb700 = common dso_local global i32 0, align 4
@AHCI_HFLAG_IGN_SERR_INTERNAL = common dso_local global i64 0, align 8
@AHCI_HFLAG_32BIT_ONLY = common dso_local global i64 0, align 8
@AHCI_HFLAG_NO_DEVSLP = common dso_local global i64 0, align 8
@HOST_CAP_NCQ = common dso_local global i32 0, align 4
@ATA_FLAG_NCQ = common dso_local global i32 0, align 4
@AHCI_HFLAG_NO_FPDMA_AA = common dso_local global i32 0, align 4
@ATA_FLAG_FPDMA_AA = common dso_local global i32 0, align 4
@ATA_FLAG_FPDMA_AUX = common dso_local global i32 0, align 4
@HOST_CAP_PMP = common dso_local global i32 0, align 4
@ATA_FLAG_PMP = common dso_local global i32 0, align 4
@ATA_FLAG_NO_POWEROFF_SPINDOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"quirky BIOS, skipping spindown on poweroff\0A\00", align 1
@ATA_FLAG_NO_LPM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"BIOS update required for Link Power Management support\0A\00", align 1
@AHCI_HFLAG_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"BIOS update required for suspend/resume\0A\00", align 1
@AHCI_HFLAG_SRST_TOUT_IS_OFFLINE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"online status unreliable, applying workaround\0A\00", align 1
@HOST_CAP_SSS = common dso_local global i32 0, align 4
@ahci_ignore_sss = common dso_local global i64 0, align 8
@ATA_HOST_PARALLEL_SCAN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"SSS flag set, parallel bus scan disabled\0A\00", align 1
@ATA_FLAG_EM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"abar\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@ata_dummy_port_ops = common dso_local global i32 0, align 4
@HOST_CAP_64 = common dso_local global i32 0, align 4
@ahci_sht = common dso_local global i32 0, align 4
@ahci_thunderx_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ahci_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_port_info, align 8
  %8 = alloca [2 x %struct.ata_port_info*], align 16
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.ahci_host_priv*, align 8
  %11 = alloca %struct.ata_host*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ata_port*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %18 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ata_port_info*, %struct.ata_port_info** @ahci_port_info, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %21, i64 %23
  %25 = bitcast %struct.ata_port_info* %7 to i8*
  %26 = bitcast %struct.ata_port_info* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = getelementptr inbounds [2 x %struct.ata_port_info*], [2 x %struct.ata_port_info*]* %8, i64 0, i64 0
  store %struct.ata_port_info* %7, %struct.ata_port_info** %27, align 8
  %28 = getelementptr inbounds %struct.ata_port_info*, %struct.ata_port_info** %27, i64 1
  store %struct.ata_port_info* null, %struct.ata_port_info** %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 3
  store %struct.device* %30, %struct.device** %9, align 8
  %31 = load i32, i32* @AHCI_PCI_BAR_STANDARD, align 4
  store i32 %31, i32* %15, align 4
  %32 = call i32 @VPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @ATA_MAX_QUEUE, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @AHCI_MAX_CMDS, align 4
  %36 = icmp sgt i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 3
  %41 = load i32, i32* @DRV_VERSION, align 4
  %42 = call i32 @ata_print_version_once(%struct.device* %40, i32 %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PCI_VENDOR_ID_MARVELL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %2
  %49 = load i32, i32* @marvell_enable, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %523

54:                                               ; preds = %48, %2
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i64 @is_mcp89_apple(%struct.pci_dev* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = call i32 @ahci_mcp89_apple_enable(%struct.pci_dev* %59)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PCI_VENDOR_ID_PROMISE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 3
  %70 = call i32 @dev_info(%struct.device* %69, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PCI_VENDOR_ID_STMICRO, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 52230
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @AHCI_PCI_BAR_STA2X11, align 4
  store i32 %83, i32* %15, align 4
  br label %119

84:                                               ; preds = %77, %71
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 7236
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 32768
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @AHCI_PCI_BAR_ENMOTUS, align 4
  store i32 %95, i32* %15, align 4
  br label %118

96:                                               ; preds = %89, %84
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PCI_VENDOR_ID_CAVIUM, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %96
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 40988
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @AHCI_PCI_BAR_CAVIUM, align 4
  store i32 %108, i32* %15, align 4
  br label %109

109:                                              ; preds = %107, %102
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 41092
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @AHCI_PCI_BAR_CAVIUM_GEN5, align 4
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %114, %109
  br label %117

117:                                              ; preds = %116, %96
  br label %118

118:                                              ; preds = %117, %94
  br label %119

119:                                              ; preds = %118, %82
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = call i32 @pcim_enable_device(%struct.pci_dev* %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %3, align 4
  br label %523

126:                                              ; preds = %119
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %156

132:                                              ; preds = %126
  %133 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %134 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 9810
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %139 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 9811
  br i1 %141, label %142, label %156

142:                                              ; preds = %137, %132
  %143 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %144 = load i32, i32* @ICH_MAP, align 4
  %145 = call i32 @pci_read_config_byte(%struct.pci_dev* %143, i32 %144, i32* %16)
  %146 = load i32, i32* %16, align 4
  %147 = and i32 %146, 3
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %151 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %150, i32 0, i32 3
  %152 = call i32 @dev_info(%struct.device* %151, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %523

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155, %137, %126
  %157 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %158 = load i32, i32* %15, align 4
  %159 = shl i32 1, %158
  %160 = load i32, i32* @DRV_NAME, align 4
  %161 = call i32 @pcim_iomap_regions_request_all(%struct.pci_dev* %157, i32 %159, i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* @EBUSY, align 4
  %164 = sub nsw i32 0, %163
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %156
  %167 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %168 = call i32 @pcim_pin_device(%struct.pci_dev* %167)
  br label %169

169:                                              ; preds = %166, %156
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %3, align 4
  br label %523

174:                                              ; preds = %169
  %175 = load %struct.device*, %struct.device** %9, align 8
  %176 = load i32, i32* @GFP_KERNEL, align 4
  %177 = call %struct.ahci_host_priv* @devm_kzalloc(%struct.device* %175, i32 32, i32 %176)
  store %struct.ahci_host_priv* %177, %struct.ahci_host_priv** %10, align 8
  %178 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %179 = icmp ne %struct.ahci_host_priv* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %174
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %3, align 4
  br label %523

183:                                              ; preds = %174
  %184 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %7, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %187 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = or i64 %188, %185
  store i64 %189, i64* %187, align 8
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @board_ahci_mcp65, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %209

193:                                              ; preds = %183
  %194 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %195 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 161
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %200 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 162
  br i1 %202, label %203, label %209

203:                                              ; preds = %198, %193
  %204 = load i64, i64* @AHCI_HFLAG_NO_MSI, align 8
  %205 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %206 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = or i64 %207, %204
  store i64 %208, i64* %206, align 8
  br label %209

209:                                              ; preds = %203, %198, %183
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @board_ahci_sb700, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %225

213:                                              ; preds = %209
  %214 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %215 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = icmp sge i32 %216, 64
  br i1 %217, label %218, label %225

218:                                              ; preds = %213
  %219 = load i64, i64* @AHCI_HFLAG_IGN_SERR_INTERNAL, align 8
  %220 = xor i64 %219, -1
  %221 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %222 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = and i64 %223, %220
  store i64 %224, i64* %222, align 8
  br label %225

225:                                              ; preds = %218, %213, %209
  %226 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %227 = call i64 @ahci_sb600_enable_64bit(%struct.pci_dev* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %225
  %230 = load i64, i64* @AHCI_HFLAG_32BIT_ONLY, align 8
  %231 = xor i64 %230, -1
  %232 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %233 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = and i64 %234, %231
  store i64 %235, i64* %233, align 8
  br label %236

236:                                              ; preds = %229, %225
  %237 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %238 = call i32* @pcim_iomap_table(%struct.pci_dev* %237)
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %244 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %243, i32 0, i32 6
  store i32 %242, i32* %244, align 4
  %245 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %246 = load i32, i32* %15, align 4
  %247 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %248 = call i32 @ahci_remap_check(%struct.pci_dev* %245, i32 %246, %struct.ahci_host_priv* %247)
  %249 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %250 = call i64 @ahci_broken_devslp(%struct.pci_dev* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %236
  %253 = load i64, i64* @AHCI_HFLAG_NO_DEVSLP, align 8
  %254 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %255 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = or i64 %256, %253
  store i64 %257, i64* %255, align 8
  br label %258

258:                                              ; preds = %252, %236
  %259 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %260 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %261 = call i32 @ahci_pci_save_initial_config(%struct.pci_dev* %259, %struct.ahci_host_priv* %260)
  %262 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %263 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %264 = call i32 @ahci_intel_pcs_quirk(%struct.pci_dev* %262, %struct.ahci_host_priv* %263)
  %265 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %266 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @HOST_CAP_NCQ, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %293

271:                                              ; preds = %258
  %272 = load i32, i32* @ATA_FLAG_NCQ, align 4
  %273 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %7, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %272
  store i32 %275, i32* %273, align 8
  %276 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %277 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i32, i32* @AHCI_HFLAG_NO_FPDMA_AA, align 4
  %280 = sext i32 %279 to i64
  %281 = and i64 %278, %280
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %271
  %284 = load i32, i32* @ATA_FLAG_FPDMA_AA, align 4
  %285 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %7, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %284
  store i32 %287, i32* %285, align 8
  br label %288

288:                                              ; preds = %283, %271
  %289 = load i32, i32* @ATA_FLAG_FPDMA_AUX, align 4
  %290 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %7, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %289
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %288, %258
  %294 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %295 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @HOST_CAP_PMP, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %293
  %301 = load i32, i32* @ATA_FLAG_PMP, align 4
  %302 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %7, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = or i32 %303, %301
  store i32 %304, i32* %302, align 8
  br label %305

305:                                              ; preds = %300, %293
  %306 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %307 = call i32 @ahci_set_em_messages(%struct.ahci_host_priv* %306, %struct.ata_port_info* %7)
  %308 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %309 = call i64 @ahci_broken_system_poweroff(%struct.pci_dev* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %305
  %312 = load i32, i32* @ATA_FLAG_NO_POWEROFF_SPINDOWN, align 4
  %313 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %7, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = or i32 %314, %312
  store i32 %315, i32* %313, align 8
  %316 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %317 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %316, i32 0, i32 3
  %318 = call i32 @dev_info(%struct.device* %317, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %319

319:                                              ; preds = %311, %305
  %320 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %321 = call i64 @ahci_broken_lpm(%struct.pci_dev* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %319
  %324 = load i32, i32* @ATA_FLAG_NO_LPM, align 4
  %325 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %7, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %324
  store i32 %327, i32* %325, align 8
  %328 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %329 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %328, i32 0, i32 3
  %330 = call i32 @dev_warn(%struct.device* %329, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %331

331:                                              ; preds = %323, %319
  %332 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %333 = call i64 @ahci_broken_suspend(%struct.pci_dev* %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %345

335:                                              ; preds = %331
  %336 = load i32, i32* @AHCI_HFLAG_NO_SUSPEND, align 4
  %337 = sext i32 %336 to i64
  %338 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %339 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = or i64 %340, %337
  store i64 %341, i64* %339, align 8
  %342 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %343 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %342, i32 0, i32 3
  %344 = call i32 @dev_warn(%struct.device* %343, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %345

345:                                              ; preds = %335, %331
  %346 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %347 = call i64 @ahci_broken_online(%struct.pci_dev* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %359

349:                                              ; preds = %345
  %350 = load i32, i32* @AHCI_HFLAG_SRST_TOUT_IS_OFFLINE, align 4
  %351 = sext i32 %350 to i64
  %352 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %353 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = or i64 %354, %351
  store i64 %355, i64* %353, align 8
  %356 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %357 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %356, i32 0, i32 3
  %358 = call i32 @dev_info(%struct.device* %357, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %359

359:                                              ; preds = %349, %345
  %360 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %361 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %362 = call i32 @acer_sa5_271_workaround(%struct.ahci_host_priv* %360, %struct.pci_dev* %361)
  %363 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %364 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @ahci_nr_ports(i32 %365)
  %367 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %368 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @fls(i32 %369)
  %371 = call i32 @max(i32 %366, i32 %370)
  store i32 %371, i32* %12, align 4
  %372 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %373 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %372, i32 0, i32 3
  %374 = getelementptr inbounds [2 x %struct.ata_port_info*], [2 x %struct.ata_port_info*]* %8, i64 0, i64 0
  %375 = load i32, i32* %12, align 4
  %376 = call %struct.ata_host* @ata_host_alloc_pinfo(%struct.device* %373, %struct.ata_port_info** %374, i32 %375)
  store %struct.ata_host* %376, %struct.ata_host** %11, align 8
  %377 = load %struct.ata_host*, %struct.ata_host** %11, align 8
  %378 = icmp ne %struct.ata_host* %377, null
  br i1 %378, label %382, label %379

379:                                              ; preds = %359
  %380 = load i32, i32* @ENOMEM, align 4
  %381 = sub nsw i32 0, %380
  store i32 %381, i32* %3, align 4
  br label %523

382:                                              ; preds = %359
  %383 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %384 = load %struct.ata_host*, %struct.ata_host** %11, align 8
  %385 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %384, i32 0, i32 3
  store %struct.ahci_host_priv* %383, %struct.ahci_host_priv** %385, align 8
  %386 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %387 = load i32, i32* %12, align 4
  %388 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %389 = call i64 @ahci_init_msi(%struct.pci_dev* %386, i32 %387, %struct.ahci_host_priv* %388)
  %390 = icmp slt i64 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %382
  %392 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %393 = call i32 @pci_intx(%struct.pci_dev* %392, i32 1)
  br label %394

394:                                              ; preds = %391, %382
  %395 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %396 = call i32 @pci_irq_vector(%struct.pci_dev* %395, i32 0)
  %397 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %398 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %397, i32 0, i32 4
  store i32 %396, i32* %398, align 4
  %399 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %400 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* @HOST_CAP_SSS, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %408

405:                                              ; preds = %394
  %406 = load i64, i64* @ahci_ignore_sss, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %414

408:                                              ; preds = %405, %394
  %409 = load i32, i32* @ATA_HOST_PARALLEL_SCAN, align 4
  %410 = load %struct.ata_host*, %struct.ata_host** %11, align 8
  %411 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = or i32 %412, %409
  store i32 %413, i32* %411, align 8
  br label %418

414:                                              ; preds = %405
  %415 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %416 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %415, i32 0, i32 3
  %417 = call i32 @dev_info(%struct.device* %416, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %418

418:                                              ; preds = %414, %408
  %419 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %7, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @ATA_FLAG_EM, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %418
  %425 = load %struct.ata_host*, %struct.ata_host** %11, align 8
  %426 = call i32 @ahci_reset_em(%struct.ata_host* %425)
  br label %427

427:                                              ; preds = %424, %418
  store i32 0, i32* %13, align 4
  br label %428

428:                                              ; preds = %480, %427
  %429 = load i32, i32* %13, align 4
  %430 = load %struct.ata_host*, %struct.ata_host** %11, align 8
  %431 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = icmp slt i32 %429, %432
  br i1 %433, label %434, label %483

434:                                              ; preds = %428
  %435 = load %struct.ata_host*, %struct.ata_host** %11, align 8
  %436 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %435, i32 0, i32 1
  %437 = load %struct.ata_port**, %struct.ata_port*** %436, align 8
  %438 = load i32, i32* %13, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %437, i64 %439
  %441 = load %struct.ata_port*, %struct.ata_port** %440, align 8
  store %struct.ata_port* %441, %struct.ata_port** %17, align 8
  %442 = load %struct.ata_port*, %struct.ata_port** %17, align 8
  %443 = load i32, i32* %15, align 4
  %444 = call i32 @ata_port_pbar_desc(%struct.ata_port* %442, i32 %443, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %445 = load %struct.ata_port*, %struct.ata_port** %17, align 8
  %446 = load i32, i32* %15, align 4
  %447 = load %struct.ata_port*, %struct.ata_port** %17, align 8
  %448 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = mul nsw i32 %449, 128
  %451 = add nsw i32 256, %450
  %452 = call i32 @ata_port_pbar_desc(%struct.ata_port* %445, i32 %446, i32 %451, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %453 = load %struct.ata_port*, %struct.ata_port** %17, align 8
  %454 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* @ATA_FLAG_EM, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %465

459:                                              ; preds = %434
  %460 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %461 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %460, i32 0, i32 3
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.ata_port*, %struct.ata_port** %17, align 8
  %464 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %463, i32 0, i32 3
  store i32 %462, i32* %464, align 8
  br label %465

465:                                              ; preds = %459, %434
  %466 = load %struct.ata_port*, %struct.ata_port** %17, align 8
  %467 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %468 = call i32 @ahci_update_initial_lpm_policy(%struct.ata_port* %466, %struct.ahci_host_priv* %467)
  %469 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %470 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* %13, align 4
  %473 = shl i32 1, %472
  %474 = and i32 %471, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %465
  %477 = load %struct.ata_port*, %struct.ata_port** %17, align 8
  %478 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %477, i32 0, i32 2
  store i32* @ata_dummy_port_ops, i32** %478, align 8
  br label %479

479:                                              ; preds = %476, %465
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %13, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %13, align 4
  br label %428

483:                                              ; preds = %428
  %484 = load %struct.ata_host*, %struct.ata_host** %11, align 8
  %485 = call i32 @ahci_p5wdh_workaround(%struct.ata_host* %484)
  %486 = load %struct.ata_host*, %struct.ata_host** %11, align 8
  %487 = call i32 @ahci_gtf_filter_workaround(%struct.ata_host* %486)
  %488 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %489 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %490 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* @HOST_CAP_64, align 4
  %493 = and i32 %491, %492
  %494 = call i32 @ahci_configure_dma_masks(%struct.pci_dev* %488, i32 %493)
  store i32 %494, i32* %14, align 4
  %495 = load i32, i32* %14, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %499

497:                                              ; preds = %483
  %498 = load i32, i32* %14, align 4
  store i32 %498, i32* %3, align 4
  br label %523

499:                                              ; preds = %483
  %500 = load %struct.ata_host*, %struct.ata_host** %11, align 8
  %501 = call i32 @ahci_reset_controller(%struct.ata_host* %500)
  store i32 %501, i32* %14, align 4
  %502 = load i32, i32* %14, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %506

504:                                              ; preds = %499
  %505 = load i32, i32* %14, align 4
  store i32 %505, i32* %3, align 4
  br label %523

506:                                              ; preds = %499
  %507 = load %struct.ata_host*, %struct.ata_host** %11, align 8
  %508 = call i32 @ahci_pci_init_controller(%struct.ata_host* %507)
  %509 = load %struct.ata_host*, %struct.ata_host** %11, align 8
  %510 = call i32 @ahci_pci_print_info(%struct.ata_host* %509)
  %511 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %512 = call i32 @pci_set_master(%struct.pci_dev* %511)
  %513 = load %struct.ata_host*, %struct.ata_host** %11, align 8
  %514 = call i32 @ahci_host_activate(%struct.ata_host* %513, i32* @ahci_sht)
  store i32 %514, i32* %14, align 4
  %515 = load i32, i32* %14, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %519

517:                                              ; preds = %506
  %518 = load i32, i32* %14, align 4
  store i32 %518, i32* %3, align 4
  br label %523

519:                                              ; preds = %506
  %520 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %521 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %520, i32 0, i32 3
  %522 = call i32 @pm_runtime_put_noidle(%struct.device* %521)
  store i32 0, i32* %3, align 4
  br label %523

523:                                              ; preds = %519, %517, %504, %497, %379, %180, %172, %149, %124, %51
  %524 = load i32, i32* %3, align 4
  ret i32 %524
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VPRINTK(i8*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @ata_print_version_once(%struct.device*, i32) #2

declare dso_local i64 @is_mcp89_apple(%struct.pci_dev*) #2

declare dso_local i32 @ahci_mcp89_apple_enable(%struct.pci_dev*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*) #2

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #2

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #2

declare dso_local i32 @pcim_iomap_regions_request_all(%struct.pci_dev*, i32, i32) #2

declare dso_local i32 @pcim_pin_device(%struct.pci_dev*) #2

declare dso_local %struct.ahci_host_priv* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i64 @ahci_sb600_enable_64bit(%struct.pci_dev*) #2

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #2

declare dso_local i32 @ahci_remap_check(%struct.pci_dev*, i32, %struct.ahci_host_priv*) #2

declare dso_local i64 @ahci_broken_devslp(%struct.pci_dev*) #2

declare dso_local i32 @ahci_pci_save_initial_config(%struct.pci_dev*, %struct.ahci_host_priv*) #2

declare dso_local i32 @ahci_intel_pcs_quirk(%struct.pci_dev*, %struct.ahci_host_priv*) #2

declare dso_local i32 @ahci_set_em_messages(%struct.ahci_host_priv*, %struct.ata_port_info*) #2

declare dso_local i64 @ahci_broken_system_poweroff(%struct.pci_dev*) #2

declare dso_local i64 @ahci_broken_lpm(%struct.pci_dev*) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i64 @ahci_broken_suspend(%struct.pci_dev*) #2

declare dso_local i64 @ahci_broken_online(%struct.pci_dev*) #2

declare dso_local i32 @acer_sa5_271_workaround(%struct.ahci_host_priv*, %struct.pci_dev*) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @ahci_nr_ports(i32) #2

declare dso_local i32 @fls(i32) #2

declare dso_local %struct.ata_host* @ata_host_alloc_pinfo(%struct.device*, %struct.ata_port_info**, i32) #2

declare dso_local i64 @ahci_init_msi(%struct.pci_dev*, i32, %struct.ahci_host_priv*) #2

declare dso_local i32 @pci_intx(%struct.pci_dev*, i32) #2

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #2

declare dso_local i32 @ahci_reset_em(%struct.ata_host*) #2

declare dso_local i32 @ata_port_pbar_desc(%struct.ata_port*, i32, i32, i8*) #2

declare dso_local i32 @ahci_update_initial_lpm_policy(%struct.ata_port*, %struct.ahci_host_priv*) #2

declare dso_local i32 @ahci_p5wdh_workaround(%struct.ata_host*) #2

declare dso_local i32 @ahci_gtf_filter_workaround(%struct.ata_host*) #2

declare dso_local i32 @ahci_configure_dma_masks(%struct.pci_dev*, i32) #2

declare dso_local i32 @ahci_reset_controller(%struct.ata_host*) #2

declare dso_local i32 @ahci_pci_init_controller(%struct.ata_host*) #2

declare dso_local i32 @ahci_pci_print_info(%struct.ata_host*) #2

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #2

declare dso_local i32 @ahci_host_activate(%struct.ata_host*, i32*) #2

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
