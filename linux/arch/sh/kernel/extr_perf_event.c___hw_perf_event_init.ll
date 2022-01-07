; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_perf_event.c___hw_perf_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_perf_event.c___hw_perf_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 (i32)* }
%struct.perf_event = type { i32, %struct.hw_perf_event, %struct.perf_event_attr }
%struct.hw_perf_event = type { i32 }
%struct.perf_event_attr = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@num_events = common dso_local global i32 0, align 4
@pmc_reserve_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@hw_perf_event_destroy = common dso_local global i32 0, align 4
@sh_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @__hw_perf_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hw_perf_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  store %struct.perf_event_attr* %9, %struct.perf_event_attr** %4, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %5, align 8
  store i32 -1, i32* %6, align 4
  %12 = call i32 (...) @sh_pmu_initialized()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %95

17:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %18 = call i32 @atomic_inc_not_zero(i32* @num_events)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = call i32 @mutex_lock(i32* @pmc_reserve_mutex)
  %22 = call i64 @atomic_read(i32* @num_events)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = call i64 (...) @reserve_pmc_hardware()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %24, %20
  %31 = call i32 @atomic_inc(i32* @num_events)
  br label %32

32:                                               ; preds = %30, %27
  %33 = call i32 @mutex_unlock(i32* @pmc_reserve_mutex)
  br label %34

34:                                               ; preds = %32, %17
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %95

39:                                               ; preds = %34
  %40 = load i32, i32* @hw_perf_event_destroy, align 4
  %41 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %83 [
    i32 128, label %46
    i32 129, label %54
    i32 130, label %64
  ]

46:                                               ; preds = %39
  %47 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %48 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_pmu, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %49, %52
  store i32 %53, i32* %6, align 4
  br label %83

54:                                               ; preds = %39
  %55 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %56 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @hw_perf_cache_event(i32 %57, i32* %6)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %95

63:                                               ; preds = %54
  br label %83

64:                                               ; preds = %39
  %65 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %66 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_pmu, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %95

75:                                               ; preds = %64
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_pmu, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32 (i32)*, i32 (i32)** %77, align 8
  %79 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %80 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 %78(i32 %81)
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %39, %75, %63, %46
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %95

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %92 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %89, %86, %72, %61, %37, %14
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @sh_pmu_initialized(...) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @reserve_pmc_hardware(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hw_perf_cache_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
