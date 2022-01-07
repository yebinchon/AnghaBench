; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_init_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_init_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ahci_host_priv = type { i32, i32, i32, i32, i64 }
%struct.ata_port_info = type { i32, i8* }
%struct.scsi_host_template = type { i32 }
%struct.ata_host = type { i32, %struct.ata_port**, i32, %struct.ahci_host_priv* }
%struct.ata_port = type { i32, i32, i32*, i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"no irq\0A\00", align 1
@HOST_CAP_NCQ = common dso_local global i32 0, align 4
@ATA_FLAG_NCQ = common dso_local global i32 0, align 4
@HOST_CAP_PMP = common dso_local global i32 0, align 4
@ATA_FLAG_PMP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HOST_CAP_SSS = common dso_local global i32 0, align 4
@ahci_ignore_sss = common dso_local global i64 0, align 8
@ATA_HOST_PARALLEL_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"SSS flag set, parallel bus scan disabled\0A\00", align 1
@ATA_FLAG_EM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"mmio %pR\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"port 0x%x\00", align 1
@ata_dummy_port_ops = common dso_local global i32 0, align 4
@HOST_CAP_64 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to enable 64-bit DMA.\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Enable 32-bit DMA instead of 64-bit.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"platform\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_platform_init_host(%struct.platform_device* %0, %struct.ahci_host_priv* %1, %struct.ata_port_info* %2, %struct.scsi_host_template* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.ahci_host_priv*, align 8
  %8 = alloca %struct.ata_port_info*, align 8
  %9 = alloca %struct.scsi_host_template*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.ata_port_info, align 8
  %12 = alloca [2 x %struct.ata_port_info*], align 16
  %13 = alloca %struct.ata_host*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ata_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.ahci_host_priv* %1, %struct.ahci_host_priv** %7, align 8
  store %struct.ata_port_info* %2, %struct.ata_port_info** %8, align 8
  store %struct.scsi_host_template* %3, %struct.scsi_host_template** %9, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %10, align 8
  %21 = load %struct.ata_port_info*, %struct.ata_port_info** %8, align 8
  %22 = bitcast %struct.ata_port_info* %11 to i8*
  %23 = bitcast %struct.ata_port_info* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = getelementptr inbounds [2 x %struct.ata_port_info*], [2 x %struct.ata_port_info*]* %12, i64 0, i64 0
  store %struct.ata_port_info* %11, %struct.ata_port_info** %24, align 8
  %25 = getelementptr inbounds %struct.ata_port_info*, %struct.ata_port_info** %24, i64 1
  store %struct.ata_port_info* null, %struct.ata_port_info** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %27 = call i32 @platform_get_irq(%struct.platform_device* %26, i32 0)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %10, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %5, align 4
  br label %223

40:                                               ; preds = %4
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %43 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %45 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %11, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = load %struct.device*, %struct.device** %10, align 8
  %50 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %51 = call i32 @ahci_save_initial_config(%struct.device* %49, %struct.ahci_host_priv* %50)
  %52 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %53 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HOST_CAP_NCQ, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = load i32, i32* @ATA_FLAG_NCQ, align 4
  %60 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %11, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %58, %40
  %64 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %65 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @HOST_CAP_PMP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i32, i32* @ATA_FLAG_PMP, align 4
  %72 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %11, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %70, %63
  %76 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %77 = call i32 @ahci_set_em_messages(%struct.ahci_host_priv* %76, %struct.ata_port_info* %11)
  %78 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %79 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ahci_nr_ports(i32 %80)
  %82 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %83 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @fls(i32 %84)
  %86 = call i32 @max(i32 %81, i32 %85)
  store i32 %86, i32* %16, align 4
  %87 = load %struct.device*, %struct.device** %10, align 8
  %88 = getelementptr inbounds [2 x %struct.ata_port_info*], [2 x %struct.ata_port_info*]* %12, i64 0, i64 0
  %89 = load i32, i32* %16, align 4
  %90 = call %struct.ata_host* @ata_host_alloc_pinfo(%struct.device* %87, %struct.ata_port_info** %88, i32 %89)
  store %struct.ata_host* %90, %struct.ata_host** %13, align 8
  %91 = load %struct.ata_host*, %struct.ata_host** %13, align 8
  %92 = icmp ne %struct.ata_host* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %75
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %223

96:                                               ; preds = %75
  %97 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %98 = load %struct.ata_host*, %struct.ata_host** %13, align 8
  %99 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %98, i32 0, i32 3
  store %struct.ahci_host_priv* %97, %struct.ahci_host_priv** %99, align 8
  %100 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %101 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @HOST_CAP_SSS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load i64, i64* @ahci_ignore_sss, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106, %96
  %110 = load i32, i32* @ATA_HOST_PARALLEL_SCAN, align 4
  %111 = load %struct.ata_host*, %struct.ata_host** %13, align 8
  %112 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %118

115:                                              ; preds = %106
  %116 = load %struct.device*, %struct.device** %10, align 8
  %117 = call i32 @dev_info(%struct.device* %116, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %109
  %119 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %11, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ATA_FLAG_EM, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.ata_host*, %struct.ata_host** %13, align 8
  %126 = call i32 @ahci_reset_em(%struct.ata_host* %125)
  br label %127

127:                                              ; preds = %124, %118
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %178, %127
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.ata_host*, %struct.ata_host** %13, align 8
  %131 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %181

134:                                              ; preds = %128
  %135 = load %struct.ata_host*, %struct.ata_host** %13, align 8
  %136 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %135, i32 0, i32 1
  %137 = load %struct.ata_port**, %struct.ata_port*** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %137, i64 %139
  %141 = load %struct.ata_port*, %struct.ata_port** %140, align 8
  store %struct.ata_port* %141, %struct.ata_port** %18, align 8
  %142 = load %struct.ata_port*, %struct.ata_port** %18, align 8
  %143 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %144 = load i32, i32* @IORESOURCE_MEM, align 4
  %145 = call i32 @platform_get_resource(%struct.platform_device* %143, i32 %144, i32 0)
  %146 = call i32 @ata_port_desc(%struct.ata_port* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  %147 = load %struct.ata_port*, %struct.ata_port** %18, align 8
  %148 = load %struct.ata_port*, %struct.ata_port** %18, align 8
  %149 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %150, 128
  %152 = add nsw i32 256, %151
  %153 = call i32 @ata_port_desc(%struct.ata_port* %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  %154 = load %struct.ata_port*, %struct.ata_port** %18, align 8
  %155 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ATA_FLAG_EM, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %134
  %161 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %162 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ata_port*, %struct.ata_port** %18, align 8
  %165 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %160, %134
  %167 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %168 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = shl i32 1, %170
  %172 = and i32 %169, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %166
  %175 = load %struct.ata_port*, %struct.ata_port** %18, align 8
  %176 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %175, i32 0, i32 2
  store i32* @ata_dummy_port_ops, i32** %176, align 8
  br label %177

177:                                              ; preds = %174, %166
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %128

181:                                              ; preds = %128
  %182 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %183 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @HOST_CAP_64, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %208

188:                                              ; preds = %181
  %189 = load %struct.device*, %struct.device** %10, align 8
  %190 = call i32 @DMA_BIT_MASK(i32 64)
  %191 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %189, i32 %190)
  store i32 %191, i32* %17, align 4
  %192 = load i32, i32* %17, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %188
  %195 = load %struct.device*, %struct.device** %10, align 8
  %196 = call i32 @DMA_BIT_MASK(i32 32)
  %197 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %195, i32 %196)
  store i32 %197, i32* %17, align 4
  %198 = load i32, i32* %17, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load %struct.device*, %struct.device** %10, align 8
  %202 = call i32 @dev_err(%struct.device* %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %203 = load i32, i32* %17, align 4
  store i32 %203, i32* %5, align 4
  br label %223

204:                                              ; preds = %194
  %205 = load %struct.device*, %struct.device** %10, align 8
  %206 = call i32 @dev_warn(%struct.device* %205, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %207

207:                                              ; preds = %204, %188
  br label %208

208:                                              ; preds = %207, %181
  %209 = load %struct.ata_host*, %struct.ata_host** %13, align 8
  %210 = call i32 @ahci_reset_controller(%struct.ata_host* %209)
  store i32 %210, i32* %17, align 4
  %211 = load i32, i32* %17, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load i32, i32* %17, align 4
  store i32 %214, i32* %5, align 4
  br label %223

215:                                              ; preds = %208
  %216 = load %struct.ata_host*, %struct.ata_host** %13, align 8
  %217 = call i32 @ahci_init_controller(%struct.ata_host* %216)
  %218 = load %struct.ata_host*, %struct.ata_host** %13, align 8
  %219 = call i32 @ahci_print_info(%struct.ata_host* %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %220 = load %struct.ata_host*, %struct.ata_host** %13, align 8
  %221 = load %struct.scsi_host_template*, %struct.scsi_host_template** %9, align 8
  %222 = call i32 @ahci_host_activate(%struct.ata_host* %220, %struct.scsi_host_template* %221)
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %215, %213, %200, %93, %38
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @ahci_save_initial_config(%struct.device*, %struct.ahci_host_priv*) #2

declare dso_local i32 @ahci_set_em_messages(%struct.ahci_host_priv*, %struct.ata_port_info*) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @ahci_nr_ports(i32) #2

declare dso_local i32 @fls(i32) #2

declare dso_local %struct.ata_host* @ata_host_alloc_pinfo(%struct.device*, %struct.ata_port_info**, i32) #2

declare dso_local i32 @dev_info(%struct.device*, i8*) #2

declare dso_local i32 @ahci_reset_em(%struct.ata_host*) #2

declare dso_local i32 @ata_port_desc(%struct.ata_port*, i8*, i32) #2

declare dso_local i32 @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #2

declare dso_local i32 @DMA_BIT_MASK(i32) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i32 @ahci_reset_controller(%struct.ata_host*) #2

declare dso_local i32 @ahci_init_controller(%struct.ata_host*) #2

declare dso_local i32 @ahci_print_info(%struct.ata_host*, i8*) #2

declare dso_local i32 @ahci_host_activate(%struct.ata_host*, %struct.scsi_host_template*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
