; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_pmu_event_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_pmu_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i64 }
%struct.intel_uncore_box = type { i32, i64*, %struct.perf_event** }

@UNCORE_PMC_IDX_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_ARCH = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uncore_pmu_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_uncore_box*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %15 = call %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event* %14)
  store %struct.intel_uncore_box* %15, %struct.intel_uncore_box** %6, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  store %struct.hw_perf_event* %17, %struct.hw_perf_event** %7, align 8
  %18 = load i32, i32* @UNCORE_PMC_IDX_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %23 = icmp ne %struct.intel_uncore_box* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %207

27:                                               ; preds = %2
  %28 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %29 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @uncore_pmc_freerunning(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PERF_EF_START, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %40 = call i32 @uncore_pmu_event_start(%struct.perf_event* %39, i32 0)
  br label %41

41:                                               ; preds = %38, %33
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %207

42:                                               ; preds = %27
  %43 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %44 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %45 = call i32 @uncore_collect_events(%struct.intel_uncore_box* %43, %struct.perf_event* %44, i32 0)
  store i32 %45, i32* %11, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %207

50:                                               ; preds = %42
  %51 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %52 = load i32, i32* @PERF_HES_STOPPED, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %55 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @PERF_EF_START, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @PERF_HES_ARCH, align 4
  %62 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %63 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %50
  %67 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @uncore_assign_events(%struct.intel_uncore_box* %67, i32* %21, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %207

74:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %132, %74
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %78 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %135

81:                                               ; preds = %75
  %82 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %83 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %82, i32 0, i32 2
  %84 = load %struct.perf_event**, %struct.perf_event*** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %84, i64 %86
  %88 = load %struct.perf_event*, %struct.perf_event** %87, align 8
  store %struct.perf_event* %88, %struct.perf_event** %4, align 8
  %89 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %90 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %89, i32 0, i32 0
  store %struct.hw_perf_event* %90, %struct.hw_perf_event** %7, align 8
  %91 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %92 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %21, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %93, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %81
  %100 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %101 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %104 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %21, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %105, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %102, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %99
  br label %132

115:                                              ; preds = %99, %81
  %116 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %117 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PERF_HES_STOPPED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load i32, i32* @PERF_HES_ARCH, align 4
  %124 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %125 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %115
  %129 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %130 = load i32, i32* @PERF_EF_UPDATE, align 4
  %131 = call i32 @uncore_pmu_event_stop(%struct.perf_event* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %114
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %75

135:                                              ; preds = %75
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %200, %135
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %203

140:                                              ; preds = %136
  %141 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %142 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %141, i32 0, i32 2
  %143 = load %struct.perf_event**, %struct.perf_event*** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %143, i64 %145
  %147 = load %struct.perf_event*, %struct.perf_event** %146, align 8
  store %struct.perf_event* %147, %struct.perf_event** %4, align 8
  %148 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %149 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %148, i32 0, i32 0
  store %struct.hw_perf_event* %149, %struct.hw_perf_event** %7, align 8
  %150 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %151 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %21, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %152, %156
  br i1 %157, label %173, label %158

158:                                              ; preds = %140
  %159 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %160 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %163 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %162, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %21, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %164, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %161, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %158, %140
  %174 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %175 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %21, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @uncore_assign_hw_event(%struct.intel_uncore_box* %174, %struct.perf_event* %175, i32 %179)
  br label %189

181:                                              ; preds = %158
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %184 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %200

188:                                              ; preds = %181
  br label %189

189:                                              ; preds = %188, %173
  %190 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %191 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @PERF_HES_ARCH, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  br label %200

197:                                              ; preds = %189
  %198 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %199 = call i32 @uncore_pmu_event_start(%struct.perf_event* %198, i32 0)
  br label %200

200:                                              ; preds = %197, %196, %187
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  br label %136

203:                                              ; preds = %136
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %206 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %207

207:                                              ; preds = %203, %72, %48, %41, %24
  %208 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %208)
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @uncore_pmc_freerunning(i32) #1

declare dso_local i32 @uncore_pmu_event_start(%struct.perf_event*, i32) #1

declare dso_local i32 @uncore_collect_events(%struct.intel_uncore_box*, %struct.perf_event*, i32) #1

declare dso_local i32 @uncore_assign_events(%struct.intel_uncore_box*, i32*, i32) #1

declare dso_local i32 @uncore_pmu_event_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @uncore_assign_hw_event(%struct.intel_uncore_box*, %struct.perf_event*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
