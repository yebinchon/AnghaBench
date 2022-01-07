; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_get_utilization_with_devices_idx.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_get_utilization_with_devices_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@CL_DEVICE_TYPE_GPU = common dso_local global i32 0, align 4
@VENDOR_ID_AMD = common dso_local global i64 0, align 8
@VENDOR_ID_NV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hm_get_utilization_with_devices_idx(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca %struct.TYPE_19__, align 4
  %10 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %7, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %185

22:                                               ; preds = %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %185

33:                                               ; preds = %22
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %72

43:                                               ; preds = %33
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @hm_NVML_nvmlDeviceGetUtilizationRates(%struct.TYPE_17__* %49, i32 %57, %struct.TYPE_15__* %8)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %68

60:                                               ; preds = %48
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  store i32 -1, i32* %3, align 4
  br label %185

68:                                               ; preds = %48
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %3, align 4
  br label %185

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %71, %33
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %177

82:                                               ; preds = %72
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CL_DEVICE_TYPE_GPU, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  store i32 -1, i32* %3, align 4
  br label %185

95:                                               ; preds = %82
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @VENDOR_ID_AMD, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %136

106:                                              ; preds = %95
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  store i32 8, i32* %112, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @hm_ADL_Overdrive_CurrentActivity_Get(%struct.TYPE_17__* %113, i32 %121, %struct.TYPE_19__* %9)
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %132

124:                                              ; preds = %111
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 4
  store i32 -1, i32* %3, align 4
  br label %185

132:                                              ; preds = %111
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %3, align 4
  br label %185

135:                                              ; preds = %106
  br label %136

136:                                              ; preds = %135, %95
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @VENDOR_ID_NV, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %176

147:                                              ; preds = %136
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %147
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @hm_NVML_nvmlDeviceGetUtilizationRates(%struct.TYPE_17__* %153, i32 %161, %struct.TYPE_15__* %10)
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %172

164:                                              ; preds = %152
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 4
  store i32 -1, i32* %3, align 4
  br label %185

172:                                              ; preds = %152
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %3, align 4
  br label %185

175:                                              ; preds = %147
  br label %176

176:                                              ; preds = %175, %136
  br label %177

177:                                              ; preds = %176, %72
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  store i32 0, i32* %184, align 4
  store i32 -1, i32* %3, align 4
  br label %185

185:                                              ; preds = %177, %172, %164, %132, %124, %94, %68, %60, %32, %21
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @hm_NVML_nvmlDeviceGetUtilizationRates(%struct.TYPE_17__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @hm_ADL_Overdrive_CurrentActivity_Get(%struct.TYPE_17__*, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
