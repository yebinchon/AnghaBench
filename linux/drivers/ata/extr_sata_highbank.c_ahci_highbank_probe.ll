; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_ahci_highbank_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_ahci_highbank_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port_info = type { i32, i64 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ahci_host_priv = type { i32, i64, i32, i32, i32, %struct.ecx_plat_data*, i32 }
%struct.ecx_plat_data = type { i32 }
%struct.ata_host = type { i32, %struct.ata_port**, i32, %struct.ahci_host_priv* }
%struct.ata_port = type { i32, i32, i32*, i32 }
%struct.resource = type { i32 }

@ahci_highbank_port_info = common dso_local global %struct.ata_port_info zeroinitializer, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no mmio space\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"no irq\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"can't alloc ahci_host_priv\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"can't alloc ecx_plat_data\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"can't map %pR\0A\00", align 1
@HOST_CAP_NCQ = common dso_local global i32 0, align 4
@ATA_FLAG_NCQ = common dso_local global i32 0, align 4
@HOST_CAP_PMP = common dso_local global i32 0, align 4
@ATA_FLAG_PMP = common dso_local global i32 0, align 4
@HOST_CAP_64 = common dso_local global i32 0, align 4
@HOST_CAP_SSS = common dso_local global i32 0, align 4
@ahci_ignore_sss = common dso_local global i64 0, align 8
@ATA_HOST_PARALLEL_SCAN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"mmio %pR\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"port 0x%x\00", align 1
@ATA_FLAG_EM = common dso_local global i32 0, align 4
@ata_dummy_port_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@ahci_highbank_platform_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ahci_highbank_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_highbank_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ahci_host_priv*, align 8
  %6 = alloca %struct.ecx_plat_data*, align 8
  %7 = alloca %struct.ata_host*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ata_port_info, align 8
  %14 = alloca [2 x %struct.ata_port_info*], align 16
  %15 = alloca %struct.ata_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %4, align 8
  %18 = bitcast %struct.ata_port_info* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.ata_port_info* @ahci_highbank_port_info to i8*), i64 16, i1 false)
  %19 = getelementptr inbounds [2 x %struct.ata_port_info*], [2 x %struct.ata_port_info*]* %14, i64 0, i64 0
  store %struct.ata_port_info* %13, %struct.ata_port_info** %19, align 8
  %20 = getelementptr inbounds %struct.ata_port_info*, %struct.ata_port_info** %19, i64 1
  store %struct.ata_port_info* null, %struct.ata_port_info** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %8, align 8
  %24 = load %struct.resource*, %struct.resource** %8, align 8
  %25 = icmp ne %struct.resource* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %260

31:                                               ; preds = %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = call i32 @platform_get_irq(%struct.platform_device* %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %260

41:                                               ; preds = %31
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @devm_kzalloc(%struct.device* %42, i32 48, i32 %43)
  %45 = bitcast i8* %44 to %struct.ahci_host_priv*
  store %struct.ahci_host_priv* %45, %struct.ahci_host_priv** %5, align 8
  %46 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %47 = icmp ne %struct.ahci_host_priv* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %260

53:                                               ; preds = %41
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @devm_kzalloc(%struct.device* %54, i32 4, i32 %55)
  %57 = bitcast i8* %56 to %struct.ecx_plat_data*
  store %struct.ecx_plat_data* %57, %struct.ecx_plat_data** %6, align 8
  %58 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %6, align 8
  %59 = icmp ne %struct.ecx_plat_data* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %260

65:                                               ; preds = %53
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %68 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %13, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %72 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = or i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.resource*, %struct.resource** %8, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.resource*, %struct.resource** %8, align 8
  %80 = call i32 @resource_size(%struct.resource* %79)
  %81 = call i32 @devm_ioremap(%struct.device* %75, i32 %78, i32 %80)
  %82 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %83 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %85 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %65
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load %struct.resource*, %struct.resource** %8, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.resource* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %260

94:                                               ; preds = %65
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %97 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @highbank_initialize_phys(%struct.device* %95, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %2, align 4
  br label %260

104:                                              ; preds = %94
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %107 = call i32 @ahci_save_initial_config(%struct.device* %105, %struct.ahci_host_priv* %106)
  %108 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %109 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @HOST_CAP_NCQ, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load i32, i32* @ATA_FLAG_NCQ, align 4
  %116 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %13, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %114, %104
  %120 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %121 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @HOST_CAP_PMP, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load i32, i32* @ATA_FLAG_PMP, align 4
  %128 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %13, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %127
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %126, %119
  %132 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %133 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @HOST_CAP_64, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = call i32 @DMA_BIT_MASK(i32 64)
  %141 = call i32 @dma_set_coherent_mask(%struct.device* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %131
  %143 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %144 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ahci_nr_ports(i32 %145)
  %147 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %148 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @fls(i32 %149)
  %151 = call i32 @max(i32 %146, i32 %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %6, align 8
  %154 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %6, align 8
  %156 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %157 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %156, i32 0, i32 5
  store %struct.ecx_plat_data* %155, %struct.ecx_plat_data** %157, align 8
  %158 = load %struct.device*, %struct.device** %4, align 8
  %159 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %160 = call i32 @highbank_set_em_messages(%struct.device* %158, %struct.ahci_host_priv* %159, %struct.ata_port_info* %13)
  %161 = load %struct.device*, %struct.device** %4, align 8
  %162 = getelementptr inbounds [2 x %struct.ata_port_info*], [2 x %struct.ata_port_info*]* %14, i64 0, i64 0
  %163 = load i32, i32* %12, align 4
  %164 = call %struct.ata_host* @ata_host_alloc_pinfo(%struct.device* %161, %struct.ata_port_info** %162, i32 %163)
  store %struct.ata_host* %164, %struct.ata_host** %7, align 8
  %165 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %166 = icmp ne %struct.ata_host* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %142
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %11, align 4
  br label %258

170:                                              ; preds = %142
  %171 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %172 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %173 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %172, i32 0, i32 3
  store %struct.ahci_host_priv* %171, %struct.ahci_host_priv** %173, align 8
  %174 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %175 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @HOST_CAP_SSS, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %170
  %181 = load i64, i64* @ahci_ignore_sss, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180, %170
  %184 = load i32, i32* @ATA_HOST_PARALLEL_SCAN, align 4
  %185 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %186 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %183, %180
  store i32 0, i32* %10, align 4
  br label %190

190:                                              ; preds = %238, %189
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %193 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %241

196:                                              ; preds = %190
  %197 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %198 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %197, i32 0, i32 1
  %199 = load %struct.ata_port**, %struct.ata_port*** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %199, i64 %201
  %203 = load %struct.ata_port*, %struct.ata_port** %202, align 8
  store %struct.ata_port* %203, %struct.ata_port** %15, align 8
  %204 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  %205 = load %struct.resource*, %struct.resource** %8, align 8
  %206 = call i32 (%struct.ata_port*, i8*, ...) @ata_port_desc(%struct.ata_port* %204, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.resource* %205)
  %207 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  %208 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  %209 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = mul nsw i32 %210, 128
  %212 = add nsw i32 256, %211
  %213 = call i32 (%struct.ata_port*, i8*, ...) @ata_port_desc(%struct.ata_port* %207, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %212)
  %214 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  %215 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @ATA_FLAG_EM, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %196
  %221 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %222 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  %225 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 8
  br label %226

226:                                              ; preds = %220, %196
  %227 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %228 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %10, align 4
  %231 = shl i32 1, %230
  %232 = and i32 %229, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %226
  %235 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  %236 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %235, i32 0, i32 2
  store i32* @ata_dummy_port_ops, i32** %236, align 8
  br label %237

237:                                              ; preds = %234, %226
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %10, align 4
  br label %190

241:                                              ; preds = %190
  %242 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %243 = call i32 @ahci_reset_controller(%struct.ata_host* %242)
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %11, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  br label %258

247:                                              ; preds = %241
  %248 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %249 = call i32 @ahci_init_controller(%struct.ata_host* %248)
  %250 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %251 = call i32 @ahci_print_info(%struct.ata_host* %250, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %252 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %253 = call i32 @ahci_host_activate(%struct.ata_host* %252, i32* @ahci_highbank_platform_sht)
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %247
  br label %258

257:                                              ; preds = %247
  store i32 0, i32* %2, align 4
  br label %260

258:                                              ; preds = %256, %246, %167
  %259 = load i32, i32* %11, align 4
  store i32 %259, i32* %2, align 4
  br label %260

260:                                              ; preds = %258, %257, %102, %88, %60, %48, %36, %26
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #2

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #2

declare dso_local i32 @resource_size(%struct.resource*) #2

declare dso_local i32 @highbank_initialize_phys(%struct.device*, i32) #2

declare dso_local i32 @ahci_save_initial_config(%struct.device*, %struct.ahci_host_priv*) #2

declare dso_local i32 @dma_set_coherent_mask(%struct.device*, i32) #2

declare dso_local i32 @DMA_BIT_MASK(i32) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @ahci_nr_ports(i32) #2

declare dso_local i32 @fls(i32) #2

declare dso_local i32 @highbank_set_em_messages(%struct.device*, %struct.ahci_host_priv*, %struct.ata_port_info*) #2

declare dso_local %struct.ata_host* @ata_host_alloc_pinfo(%struct.device*, %struct.ata_port_info**, i32) #2

declare dso_local i32 @ata_port_desc(%struct.ata_port*, i8*, ...) #2

declare dso_local i32 @ahci_reset_controller(%struct.ata_host*) #2

declare dso_local i32 @ahci_init_controller(%struct.ata_host*) #2

declare dso_local i32 @ahci_print_info(%struct.ata_host*, i8*) #2

declare dso_local i32 @ahci_host_activate(%struct.ata_host*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
