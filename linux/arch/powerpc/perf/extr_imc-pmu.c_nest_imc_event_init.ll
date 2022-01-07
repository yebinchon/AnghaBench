; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_nest_imc_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_nest_imc_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.imc_mem_info = type { i64, i32 }
%struct.imc_pmu = type { i32, %struct.imc_mem_info* }
%struct.imc_pmu_ref = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMC_EVENT_OFFSET_MASK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OPAL_IMC_COUNTERS_NEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"nest-imc: Unable to start the counters for node %d\0A\00", align 1
@nest_imc_counters_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @nest_imc_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nest_imc_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.imc_mem_info*, align 8
  %10 = alloca %struct.imc_pmu*, align 8
  %11 = alloca %struct.imc_pmu_ref*, align 8
  %12 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %20, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %157

30:                                               ; preds = %1
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %157

39:                                               ; preds = %30
  %40 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %157

47:                                               ; preds = %39
  %48 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %49 = call %struct.imc_pmu* @imc_event_to_pmu(%struct.perf_event* %48)
  store %struct.imc_pmu* %49, %struct.imc_pmu** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @IMC_EVENT_OFFSET_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.imc_pmu*, %struct.imc_pmu** %10, align 8
  %54 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %157

60:                                               ; preds = %47
  %61 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %62 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @cpu_to_chip_id(i64 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %157

70:                                               ; preds = %60
  %71 = load %struct.imc_pmu*, %struct.imc_pmu** %10, align 8
  %72 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %71, i32 0, i32 1
  %73 = load %struct.imc_mem_info*, %struct.imc_mem_info** %72, align 8
  store %struct.imc_mem_info* %73, %struct.imc_mem_info** %9, align 8
  br label %74

74:                                               ; preds = %84, %70
  %75 = load %struct.imc_mem_info*, %struct.imc_mem_info** %9, align 8
  %76 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, i32* %12, align 4
  br label %89

81:                                               ; preds = %74
  %82 = load %struct.imc_mem_info*, %struct.imc_mem_info** %9, align 8
  %83 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %82, i32 1
  store %struct.imc_mem_info* %83, %struct.imc_mem_info** %9, align 8
  br label %84

84:                                               ; preds = %81
  %85 = load %struct.imc_mem_info*, %struct.imc_mem_info** %9, align 8
  %86 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %74, label %89

89:                                               ; preds = %84, %80
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %157

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @IMC_EVENT_OFFSET_MASK, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %7, align 4
  %99 = load %struct.imc_mem_info*, %struct.imc_mem_info** %9, align 8
  %100 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %106 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i64 %104, i64* %107, align 8
  %108 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %109 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @cpu_to_node(i64 %110)
  store i32 %111, i32* %6, align 4
  %112 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %113 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call %struct.imc_pmu_ref* @get_nest_pmu_ref(i64 %114)
  store %struct.imc_pmu_ref* %115, %struct.imc_pmu_ref** %11, align 8
  %116 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %11, align 8
  %117 = icmp ne %struct.imc_pmu_ref* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %95
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %157

121:                                              ; preds = %95
  %122 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %11, align 8
  %123 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %122, i32 0, i32 1
  %124 = call i32 @mutex_lock(i32* %123)
  %125 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %11, align 8
  %126 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %121
  %130 = load i32, i32* @OPAL_IMC_COUNTERS_NEST, align 4
  %131 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %132 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @get_hard_smp_processor_id(i64 %133)
  %135 = call i32 @opal_imc_counters_start(i32 %130, i32 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %129
  %139 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %11, align 8
  %140 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %139, i32 0, i32 1
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %157

145:                                              ; preds = %129
  br label %146

146:                                              ; preds = %145, %121
  %147 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %11, align 8
  %148 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %148, align 8
  %151 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %11, align 8
  %152 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %151, i32 0, i32 1
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i32, i32* @nest_imc_counters_release, align 4
  %155 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %156 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %146, %138, %118, %92, %67, %57, %44, %36, %27
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.imc_pmu* @imc_event_to_pmu(%struct.perf_event*) #1

declare dso_local i32 @cpu_to_chip_id(i64) #1

declare dso_local i32 @cpu_to_node(i64) #1

declare dso_local %struct.imc_pmu_ref* @get_nest_pmu_ref(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @opal_imc_counters_start(i32, i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
