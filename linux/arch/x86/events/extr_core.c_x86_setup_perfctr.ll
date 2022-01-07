; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_setup_perfctr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_setup_perfctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 (i64)*, i32 }
%struct.perf_event = type { %struct.perf_event_attr, %struct.hw_perf_event }
%struct.perf_event_attr = type { i64, i64 }
%struct.hw_perf_event = type { i64, i32, i32, i32 }

@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PERF_TYPE_RAW = common dso_local global i64 0, align 8
@PERF_TYPE_HW_CACHE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_setup_perfctr(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  store %struct.perf_event_attr* %8, %struct.perf_event_attr** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = call i32 @is_sampling_event(%struct.perf_event* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 2), align 8
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %22 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %23, i32 0, i32 2
  %25 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %26 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @local64_set(i32* %24, i32 %27)
  br label %29

29:                                               ; preds = %14, %1
  %30 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %31 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PERF_TYPE_RAW, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %41 = call i32 @x86_pmu_extra_regs(i64 %39, %struct.perf_event* %40)
  store i32 %41, i32* %2, align 4
  br label %91

42:                                               ; preds = %29
  %43 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PERF_TYPE_HW_CACHE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %50 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %51 = call i32 @set_ext_hw_attr(%struct.hw_perf_event* %49, %struct.perf_event* %50)
  store i32 %51, i32* %2, align 4
  br label %91

52:                                               ; preds = %42
  %53 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %54 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %91

61:                                               ; preds = %52
  %62 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %63 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %66 = call i64 @array_index_nospec(i64 %64, i64 %65)
  %67 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %68 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 8
  %70 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %71 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 %69(i64 %72)
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %61
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %91

79:                                               ; preds = %61
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %91

85:                                               ; preds = %79
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %88 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = or i64 %89, %86
  store i64 %90, i64* %88, align 8
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %85, %82, %76, %58, %48, %35
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @x86_pmu_extra_regs(i64, %struct.perf_event*) #1

declare dso_local i32 @set_ext_hw_attr(%struct.hw_perf_event*, %struct.perf_event*) #1

declare dso_local i64 @array_index_nospec(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
