; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_get_corespeed_with_devices_idx.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_get_corespeed_with_devices_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i64, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@NVML_CLOCK_SM = common dso_local global i32 0, align 4
@CL_DEVICE_TYPE_GPU = common dso_local global i32 0, align 4
@VENDOR_ID_AMD = common dso_local global i64 0, align 8
@VENDOR_ID_NV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hm_get_corespeed_with_devices_idx(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %6, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %7, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %207

23:                                               ; preds = %2
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %207

34:                                               ; preds = %23
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %73

44:                                               ; preds = %34
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NVML_CLOCK_SM, align 4
  %60 = call i32 @hm_NVML_nvmlDeviceGetClockInfo(%struct.TYPE_15__* %50, i32 %58, i32 %59, i32* %8)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  store i32 -1, i32* %3, align 4
  br label %207

70:                                               ; preds = %49
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %207

72:                                               ; preds = %44
  br label %73

73:                                               ; preds = %72, %34
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %199

83:                                               ; preds = %73
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CL_DEVICE_TYPE_GPU, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  store i32 -1, i32* %3, align 4
  br label %207

96:                                               ; preds = %83
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VENDOR_ID_AMD, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %158

107:                                              ; preds = %96
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %137

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  store i32 8, i32* %113, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @hm_ADL_Overdrive_CurrentActivity_Get(%struct.TYPE_15__* %114, i32 %122, %struct.TYPE_17__* %9)
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %133

125:                                              ; preds = %112
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 4
  store i32 -1, i32* %3, align 4
  br label %207

133:                                              ; preds = %112
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %135, 100
  store i32 %136, i32* %3, align 4
  br label %207

137:                                              ; preds = %107
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %137
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @hm_SYSFS_get_pp_dpm_sclk(%struct.TYPE_15__* %143, i32 %144, i32* %10)
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  store i32 0, i32* %154, align 4
  store i32 -1, i32* %3, align 4
  br label %207

155:                                              ; preds = %142
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %3, align 4
  br label %207

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %157, %96
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @VENDOR_ID_NV, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %198

169:                                              ; preds = %158
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %197

174:                                              ; preds = %169
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @NVML_CLOCK_SM, align 4
  %185 = call i32 @hm_NVML_nvmlDeviceGetClockInfo(%struct.TYPE_15__* %175, i32 %183, i32 %184, i32* %11)
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %195

187:                                              ; preds = %174
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  store i32 0, i32* %194, align 4
  store i32 -1, i32* %3, align 4
  br label %207

195:                                              ; preds = %174
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %3, align 4
  br label %207

197:                                              ; preds = %169
  br label %198

198:                                              ; preds = %197, %158
  br label %199

199:                                              ; preds = %198, %73
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  store i32 0, i32* %206, align 4
  store i32 -1, i32* %3, align 4
  br label %207

207:                                              ; preds = %199, %195, %187, %155, %147, %133, %125, %95, %70, %62, %33, %22
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @hm_NVML_nvmlDeviceGetClockInfo(%struct.TYPE_15__*, i32, i32, i32*) #1

declare dso_local i32 @hm_ADL_Overdrive_CurrentActivity_Get(%struct.TYPE_15__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @hm_SYSFS_get_pp_dpm_sclk(%struct.TYPE_15__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
