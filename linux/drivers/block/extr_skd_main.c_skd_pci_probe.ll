; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.skd_device = type { i32, i64, i64*, i32, i64*, i64* }

@.str = private unnamed_addr constant [25 x i8] c"vendor=%04X device=%04x\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DMA mask error %d\0A\00", align 1
@skd_major = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s 64bit\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"bad enable of PCIe error reporting rc=%d\0A\00", align 1
@SKD_MAX_BARS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Unable to map adapter memory!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"mem_map=%p, phyd=%016llx, size=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"interrupt resource error %d\0A\00", align 1
@SKD_START_WAIT_SECONDS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"error: waiting for s1120 timed out %d!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @skd_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca %struct.skd_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32*, i8*, i64, i32, ...) @dev_dbg(i32* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pci_enable_device(%struct.pci_dev* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %298

26:                                               ; preds = %2
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* @DRV_NAME, align 4
  %29 = call i32 @pci_request_regions(%struct.pci_dev* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %292

33:                                               ; preds = %26
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 @DMA_BIT_MASK(i32 64)
  %37 = call i32 @dma_set_mask_and_coherent(i32* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = call i32 @DMA_BIT_MASK(i32 32)
  %44 = call i32 @dma_set_mask_and_coherent(i32* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %33
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %289

53:                                               ; preds = %45
  %54 = load i32, i32* @skd_major, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @DRV_NAME, align 4
  %58 = call i32 @register_blkdev(i32 0, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %289

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* @skd_major, align 4
  br label %69

69:                                               ; preds = %62, %53
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call %struct.skd_device* @skd_construct(%struct.pci_dev* %70)
  store %struct.skd_device* %71, %struct.skd_device** %9, align 8
  %72 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %73 = icmp eq %struct.skd_device* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %289

77:                                               ; preds = %69
  %78 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %80 = call i32 @skd_pci_info(%struct.skd_device* %78, i8* %79)
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %84 = call i32 @dev_info(i32* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = call i32 @pci_set_master(%struct.pci_dev* %85)
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %77
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i32*, i8*, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %97 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %101

98:                                               ; preds = %77
  %99 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %100 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %91
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %104 = call i32 @pci_set_drvdata(%struct.pci_dev* %102, %struct.skd_device* %103)
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %189, %101
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @SKD_MAX_BARS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %192

109:                                              ; preds = %105
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i64 @pci_resource_start(%struct.pci_dev* %110, i32 %111)
  %113 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %114 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %113, i32 0, i32 5
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 %112, i64* %118, align 8
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i64 @pci_resource_len(%struct.pci_dev* %119, i32 %120)
  %122 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %123 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %122, i32 0, i32 4
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  store i64 %121, i64* %127, align 8
  %128 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %129 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %128, i32 0, i32 5
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %136 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %135, i32 0, i32 4
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @ioremap(i64 %134, i64 %141)
  %143 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %144 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %143, i32 0, i32 2
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  store i64 %142, i64* %148, align 8
  %149 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %150 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %149, i32 0, i32 2
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %109
  %158 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = call i32 (i32*, i8*, ...) @dev_err(i32* %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %161 = load i32, i32* @ENODEV, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %7, align 4
  br label %251

163:                                              ; preds = %109
  %164 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %165 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %164, i32 0, i32 0
  %166 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %167 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %166, i32 0, i32 2
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %174 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %173, i32 0, i32 5
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %182 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %181, i32 0, i32 4
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (i32*, i8*, i64, i32, ...) @dev_dbg(i32* %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %172, i32 %180, i64 %187)
  br label %189

189:                                              ; preds = %163
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  br label %105

192:                                              ; preds = %105
  %193 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %194 = call i32 @skd_acquire_irq(%struct.skd_device* %193)
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %199 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %198, i32 0, i32 0
  %200 = load i32, i32* %7, align 4
  %201 = call i32 (i32*, i8*, ...) @dev_err(i32* %199, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %200)
  br label %251

202:                                              ; preds = %192
  %203 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %204 = call i32 @skd_start_timer(%struct.skd_device* %203)
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %246

208:                                              ; preds = %202
  %209 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %210 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %209, i32 0, i32 3
  %211 = call i32 @init_waitqueue_head(i32* %210)
  %212 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %213 = call i32 @skd_start_device(%struct.skd_device* %212)
  %214 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %215 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %218 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i32, i32* @SKD_START_WAIT_SECONDS, align 4
  %221 = load i32, i32* @HZ, align 4
  %222 = mul nsw i32 %220, %221
  %223 = call i32 @wait_event_interruptible_timeout(i32 %216, i64 %219, i32 %222)
  store i32 %223, i32* %7, align 4
  %224 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %225 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp sgt i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %208
  %229 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %230 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %229, i32 0, i32 0
  %231 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %232 = call i32 @skd_bdev_attach(i32* %230, %struct.skd_device* %231)
  store i32 0, i32* %7, align 4
  br label %244

233:                                              ; preds = %208
  %234 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %235 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %234, i32 0, i32 0
  %236 = load i32, i32* %7, align 4
  %237 = call i32 (i32*, i8*, ...) @dev_err(i32* %235, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %233
  %241 = load i32, i32* @ENXIO, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %7, align 4
  br label %243

243:                                              ; preds = %240, %233
  br label %246

244:                                              ; preds = %228
  %245 = load i32, i32* %7, align 4
  store i32 %245, i32* %3, align 4
  br label %298

246:                                              ; preds = %243, %207
  %247 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %248 = call i32 @skd_stop_device(%struct.skd_device* %247)
  %249 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %250 = call i32 @skd_release_irq(%struct.skd_device* %249)
  br label %251

251:                                              ; preds = %246, %197, %157
  store i32 0, i32* %6, align 4
  br label %252

252:                                              ; preds = %275, %251
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* @SKD_MAX_BARS, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %278

256:                                              ; preds = %252
  %257 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %258 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %257, i32 0, i32 2
  %259 = load i64*, i64** %258, align 8
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %259, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %256
  %266 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %267 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %266, i32 0, i32 2
  %268 = load i64*, i64** %267, align 8
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @iounmap(i64 %272)
  br label %274

274:                                              ; preds = %265, %256
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %6, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %6, align 4
  br label %252

278:                                              ; preds = %252
  %279 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %280 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %285 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %284)
  br label %286

286:                                              ; preds = %283, %278
  %287 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %288 = call i32 @skd_destruct(%struct.skd_device* %287)
  br label %289

289:                                              ; preds = %286, %74, %61, %48
  %290 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %291 = call i32 @pci_release_regions(%struct.pci_dev* %290)
  br label %292

292:                                              ; preds = %289, %32
  %293 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %294 = call i32 @pci_disable_device(%struct.pci_dev* %293)
  %295 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %296 = call i32 @pci_set_drvdata(%struct.pci_dev* %295, %struct.skd_device* null)
  %297 = load i32, i32* %7, align 4
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %292, %244, %24
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, ...) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @register_blkdev(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.skd_device* @skd_construct(%struct.pci_dev*) #1

declare dso_local i32 @skd_pci_info(%struct.skd_device*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.skd_device*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @ioremap(i64, i64) #1

declare dso_local i32 @skd_acquire_irq(%struct.skd_device*) #1

declare dso_local i32 @skd_start_timer(%struct.skd_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @skd_start_device(%struct.skd_device*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i32) #1

declare dso_local i32 @skd_bdev_attach(i32*, %struct.skd_device*) #1

declare dso_local i32 @skd_stop_device(%struct.skd_device*) #1

declare dso_local i32 @skd_release_irq(%struct.skd_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @skd_destruct(%struct.skd_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
