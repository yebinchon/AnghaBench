; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_cstate.c_cstate_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_cstate.c_cstate_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.perf_event = type { i32, %struct.TYPE_8__, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cstate_core_pmu = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PERF_CSTATE_CORE_EVENT_MAX = common dso_local global i32 0, align 4
@core_msr_mask = common dso_local global i32 0, align 4
@core_msr = common dso_local global %struct.TYPE_11__* null, align 8
@cstate_core_cpu_mask = common dso_local global i32 0, align 4
@cstate_pkg_pmu = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PERF_CSTATE_PKG_EVENT_MAX = common dso_local global i32 0, align 4
@pkg_msr_mask = common dso_local global i32 0, align 4
@pkg_msr = common dso_local global %struct.TYPE_9__* null, align 8
@cstate_pkg_cpu_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @cstate_pmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cstate_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %13, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %142

23:                                               ; preds = %1
  %24 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %25 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %142

32:                                               ; preds = %23
  %33 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %142

40:                                               ; preds = %32
  %41 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = icmp eq %struct.TYPE_10__* %43, @cstate_core_pmu
  br i1 %44, label %45, label %80

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @PERF_CSTATE_CORE_EVENT_MAX, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %142

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* @PERF_CSTATE_CORE_EVENT_MAX, align 4
  %56 = call i32 @array_index_nospec(i64 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @core_msr_mask, align 4
  %58 = load i32, i32* %4, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %142

65:                                               ; preds = %52
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** @core_msr, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %73 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %76 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @topology_sibling_cpumask(i32 %77)
  %79 = call i32 @cpumask_any_and(i32* @cstate_core_cpu_mask, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %124

80:                                               ; preds = %40
  %81 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %82 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %81, i32 0, i32 2
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = icmp eq %struct.TYPE_10__* %83, @cstate_pkg_pmu
  br i1 %84, label %85, label %120

85:                                               ; preds = %80
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @PERF_CSTATE_PKG_EVENT_MAX, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %142

92:                                               ; preds = %85
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* @PERF_CSTATE_PKG_EVENT_MAX, align 4
  %96 = call i32 @array_index_nospec(i64 %94, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* @pkg_msr_mask, align 4
  %98 = load i32, i32* %4, align 4
  %99 = shl i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %92
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %142

105:                                              ; preds = %92
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pkg_msr, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %113 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 4
  %115 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %116 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @topology_die_cpumask(i32 %117)
  %119 = call i32 @cpumask_any_and(i32* @cstate_pkg_cpu_mask, i32 %118)
  store i32 %119, i32* %5, align 4
  br label %123

120:                                              ; preds = %80
  %121 = load i32, i32* @ENOENT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %142

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123, %65
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @nr_cpu_ids, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %142

131:                                              ; preds = %124
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %134 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %137 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 4
  %139 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %140 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i32 -1, i32* %141, align 4
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %131, %128, %120, %102, %89, %62, %49, %37, %29, %20
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @array_index_nospec(i64, i32) #1

declare dso_local i32 @cpumask_any_and(i32*, i32) #1

declare dso_local i32 @topology_sibling_cpumask(i32) #1

declare dso_local i32 @topology_die_cpumask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
