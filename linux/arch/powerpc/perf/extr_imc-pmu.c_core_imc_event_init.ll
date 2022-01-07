; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_core_imc_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_core_imc_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.imc_mem_info* }
%struct.imc_mem_info = type { i64 }
%struct.imc_pmu_ref = type { i64, i32 }
%struct.perf_event = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.imc_pmu = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMC_EVENT_OFFSET_MASK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@threads_per_core = common dso_local global i32 0, align 4
@core_imc_pmu = common dso_local global %struct.TYPE_8__* null, align 8
@core_imc_refc = common dso_local global %struct.imc_pmu_ref* null, align 8
@OPAL_IMC_COUNTERS_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"core-imc: Unable to start the counters for core %d\0A\00", align 1
@core_imc_counters_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @core_imc_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_imc_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.imc_mem_info*, align 8
  %8 = alloca %struct.imc_pmu*, align 8
  %9 = alloca %struct.imc_pmu_ref*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %17, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %145

27:                                               ; preds = %1
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %145

36:                                               ; preds = %27
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %145

44:                                               ; preds = %36
  %45 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %46 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 8
  %48 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %49 = call %struct.imc_pmu* @imc_event_to_pmu(%struct.perf_event* %48)
  store %struct.imc_pmu* %49, %struct.imc_pmu** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @IMC_EVENT_OFFSET_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.imc_pmu*, %struct.imc_pmu** %8, align 8
  %54 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %145

60:                                               ; preds = %44
  %61 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %62 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @is_core_imc_mem_inited(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %145

69:                                               ; preds = %60
  %70 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %71 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @threads_per_core, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %4, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @core_imc_pmu, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.imc_mem_info*, %struct.imc_mem_info** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %77, i64 %79
  store %struct.imc_mem_info* %80, %struct.imc_mem_info** %7, align 8
  %81 = load %struct.imc_mem_info*, %struct.imc_mem_info** %7, align 8
  %82 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %69
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %145

88:                                               ; preds = %69
  %89 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @core_imc_refc, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %89, i64 %91
  store %struct.imc_pmu_ref* %92, %struct.imc_pmu_ref** %9, align 8
  %93 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %9, align 8
  %94 = icmp ne %struct.imc_pmu_ref* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %145

98:                                               ; preds = %88
  %99 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %9, align 8
  %100 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %99, i32 0, i32 1
  %101 = call i32 @mutex_lock(i32* %100)
  %102 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %9, align 8
  %103 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %98
  %107 = load i32, i32* @OPAL_IMC_COUNTERS_CORE, align 4
  %108 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %109 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @get_hard_smp_processor_id(i32 %110)
  %112 = call i32 @opal_imc_counters_start(i32 %107, i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %106
  %116 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %9, align 8
  %117 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  br label %145

122:                                              ; preds = %106
  br label %123

123:                                              ; preds = %122, %98
  %124 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %9, align 8
  %125 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %9, align 8
  %129 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %128, i32 0, i32 1
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load %struct.imc_mem_info*, %struct.imc_mem_info** %7, align 8
  %132 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @IMC_EVENT_OFFSET_MASK, align 4
  %137 = and i32 %135, %136
  %138 = add nsw i32 %134, %137
  %139 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %140 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* @core_imc_counters_release, align 4
  %143 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %144 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %123, %115, %95, %85, %66, %57, %41, %33, %24
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.imc_pmu* @imc_event_to_pmu(%struct.perf_event*) #1

declare dso_local i32 @is_core_imc_mem_inited(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @opal_imc_counters_start(i32, i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
