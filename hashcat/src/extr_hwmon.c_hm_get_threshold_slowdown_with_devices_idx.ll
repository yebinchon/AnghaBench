; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_get_threshold_slowdown_with_devices_idx.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_get_threshold_slowdown_with_devices_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@NVML_TEMPERATURE_THRESHOLD_SLOWDOWN = common dso_local global i32 0, align 4
@CL_DEVICE_TYPE_GPU = common dso_local global i32 0, align 4
@VENDOR_ID_AMD = common dso_local global i64 0, align 8
@VENDOR_ID_NV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hm_get_threshold_slowdown_with_devices_idx(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %7, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %207

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %207

34:                                               ; preds = %23
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %73

44:                                               ; preds = %34
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NVML_TEMPERATURE_THRESHOLD_SLOWDOWN, align 4
  %60 = call i32 @hm_NVML_nvmlDeviceGetTemperatureThreshold(%struct.TYPE_12__* %50, i32 %58, i32 %59, i32* %8)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
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
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %199

83:                                               ; preds = %73
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CL_DEVICE_TYPE_GPU, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  store i32 -1, i32* %3, align 4
  br label %207

96:                                               ; preds = %83
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VENDOR_ID_AMD, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %158

107:                                              ; preds = %96
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %157

112:                                              ; preds = %107
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %156

123:                                              ; preds = %112
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 6
  br i1 %132, label %133, label %155

133:                                              ; preds = %123
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @hm_ADL_Overdrive6_TargetTemperatureData_Get(%struct.TYPE_12__* %134, i32 %142, i32* %9, i32* %10)
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %153

145:                                              ; preds = %133
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  store i32 0, i32* %152, align 4
  store i32 -1, i32* %3, align 4
  br label %207

153:                                              ; preds = %133
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %3, align 4
  br label %207

155:                                              ; preds = %123
  br label %156

156:                                              ; preds = %155, %122
  br label %157

157:                                              ; preds = %156, %107
  br label %158

158:                                              ; preds = %157, %96
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @VENDOR_ID_NV, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %198

169:                                              ; preds = %158
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %197

174:                                              ; preds = %169
  store i32 0, i32* %11, align 4
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @NVML_TEMPERATURE_THRESHOLD_SLOWDOWN, align 4
  %185 = call i32 @hm_NVML_nvmlDeviceGetTemperatureThreshold(%struct.TYPE_12__* %175, i32 %183, i32 %184, i32* %11)
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %195

187:                                              ; preds = %174
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
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
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  store i32 0, i32* %206, align 4
  store i32 -1, i32* %3, align 4
  br label %207

207:                                              ; preds = %199, %195, %187, %153, %145, %95, %70, %62, %33, %22
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @hm_NVML_nvmlDeviceGetTemperatureThreshold(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @hm_ADL_Overdrive6_TargetTemperatureData_Get(%struct.TYPE_12__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
