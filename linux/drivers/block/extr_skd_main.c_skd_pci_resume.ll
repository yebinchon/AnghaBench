; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_pci_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.skd_device = type { i32, i64*, i32, i64*, i64* }

@.str = private unnamed_addr constant [24 x i8] c"no device data for PCI\0A\00", align 1
@PCI_D0 = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DMA mask error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"bad enable of PCIe error reporting rc=%d\0A\00", align 1
@SKD_MAX_BARS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to map adapter memory!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"mem_map=%p, phyd=%016llx, size=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"interrupt resource error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @skd_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_pci_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.skd_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.skd_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.skd_device* %8, %struct.skd_device** %6, align 8
  %9 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %10 = icmp ne %struct.skd_device* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = call i32 (i32*, i8*, ...) @dev_err(i32* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %233

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = load i32, i32* @PCI_D0, align 4
  %18 = call i32 @pci_set_power_state(%struct.pci_dev* %16, i32 %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = load i32, i32* @PCI_D0, align 4
  %21 = call i32 @pci_enable_wake(%struct.pci_dev* %19, i32 %20, i32 0)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = call i32 @pci_restore_state(%struct.pci_dev* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_enable_device(%struct.pci_dev* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %233

30:                                               ; preds = %15
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = load i32, i32* @DRV_NAME, align 4
  %33 = call i32 @pci_request_regions(%struct.pci_dev* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %229

37:                                               ; preds = %30
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @DMA_BIT_MASK(i32 64)
  %41 = call i32 @dma_set_mask_and_coherent(i32* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = call i32 @DMA_BIT_MASK(i32 32)
  %48 = call i32 @dma_set_mask_and_coherent(i32* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %226

57:                                               ; preds = %49
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = call i32 @pci_set_master(%struct.pci_dev* %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %5, align 4
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %70 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %74

71:                                               ; preds = %57
  %72 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %73 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %64
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %159, %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @SKD_MAX_BARS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %162

79:                                               ; preds = %75
  %80 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i64 @pci_resource_start(%struct.pci_dev* %80, i32 %81)
  %83 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %84 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %83, i32 0, i32 4
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %82, i64* %88, align 8
  %89 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i64 @pci_resource_len(%struct.pci_dev* %89, i32 %90)
  %92 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %93 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  store i64 %91, i64* %97, align 8
  %98 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %99 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %98, i32 0, i32 4
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %106 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %105, i32 0, i32 3
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @ioremap(i64 %104, i64 %111)
  %113 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %114 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 %112, i64* %118, align 8
  %119 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %120 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %79
  %128 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %190

133:                                              ; preds = %79
  %134 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %135 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %134, i32 0, i32 0
  %136 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %137 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %144 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %143, i32 0, i32 4
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %152 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %151, i32 0, i32 3
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @dev_dbg(i32* %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %142, i32 %150, i64 %157)
  br label %159

159:                                              ; preds = %133
  %160 = load i32, i32* %4, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %4, align 4
  br label %75

162:                                              ; preds = %75
  %163 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %164 = call i32 @skd_acquire_irq(%struct.skd_device* %163)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %169 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %168, i32 0, i32 0
  %170 = load i32, i32* %5, align 4
  %171 = call i32 (i32*, i8*, ...) @dev_err(i32* %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %170)
  br label %190

172:                                              ; preds = %162
  %173 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %174 = call i32 @skd_start_timer(%struct.skd_device* %173)
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %185

178:                                              ; preds = %172
  %179 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %180 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %179, i32 0, i32 2
  %181 = call i32 @init_waitqueue_head(i32* %180)
  %182 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %183 = call i32 @skd_start_device(%struct.skd_device* %182)
  %184 = load i32, i32* %5, align 4
  store i32 %184, i32* %2, align 4
  br label %233

185:                                              ; preds = %177
  %186 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %187 = call i32 @skd_stop_device(%struct.skd_device* %186)
  %188 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %189 = call i32 @skd_release_irq(%struct.skd_device* %188)
  br label %190

190:                                              ; preds = %185, %167, %127
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %214, %190
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @SKD_MAX_BARS, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %217

195:                                              ; preds = %191
  %196 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %197 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %195
  %205 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %206 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %205, i32 0, i32 1
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @iounmap(i64 %211)
  br label %213

213:                                              ; preds = %204, %195
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %4, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %4, align 4
  br label %191

217:                                              ; preds = %191
  %218 = load %struct.skd_device*, %struct.skd_device** %6, align 8
  %219 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %224 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %223)
  br label %225

225:                                              ; preds = %222, %217
  br label %226

226:                                              ; preds = %225, %52
  %227 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %228 = call i32 @pci_release_regions(%struct.pci_dev* %227)
  br label %229

229:                                              ; preds = %226, %36
  %230 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %231 = call i32 @pci_disable_device(%struct.pci_dev* %230)
  %232 = load i32, i32* %5, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %229, %178, %28, %11
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.skd_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @ioremap(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, i64) #1

declare dso_local i32 @skd_acquire_irq(%struct.skd_device*) #1

declare dso_local i32 @skd_start_timer(%struct.skd_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @skd_start_device(%struct.skd_device*) #1

declare dso_local i32 @skd_stop_device(%struct.skd_device*) #1

declare dso_local i32 @skd_release_irq(%struct.skd_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
