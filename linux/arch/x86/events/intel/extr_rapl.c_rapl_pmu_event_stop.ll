; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_rapl.c_rapl_pmu_event_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_rapl.c_rapl_pmu_event_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event, %struct.rapl_pmu* }
%struct.hw_perf_event = type { i32 }
%struct.rapl_pmu = type { i64, i32, i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @rapl_pmu_event_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rapl_pmu_event_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rapl_pmu*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  %10 = load %struct.rapl_pmu*, %struct.rapl_pmu** %9, align 8
  store %struct.rapl_pmu* %10, %struct.rapl_pmu** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 1
  store %struct.hw_perf_event* %12, %struct.hw_perf_event** %6, align 8
  %13 = load %struct.rapl_pmu*, %struct.rapl_pmu** %5, align 8
  %14 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @raw_spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PERF_HES_STOPPED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %2
  %24 = load %struct.rapl_pmu*, %struct.rapl_pmu** %5, align 8
  %25 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  %30 = load %struct.rapl_pmu*, %struct.rapl_pmu** %5, align 8
  %31 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.rapl_pmu*, %struct.rapl_pmu** %5, align 8
  %35 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = load %struct.rapl_pmu*, %struct.rapl_pmu** %5, align 8
  %40 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %39, i32 0, i32 2
  %41 = call i32 @hrtimer_cancel(i32* %40)
  br label %42

42:                                               ; preds = %38, %23
  %43 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = call i32 @list_del(i32* %44)
  %46 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %47 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PERF_HES_STOPPED, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @WARN_ON_ONCE(i32 %50)
  %52 = load i32, i32* @PERF_HES_STOPPED, align 4
  %53 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %54 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %42, %2
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @PERF_EF_UPDATE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %64 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %62
  %70 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %71 = call i32 @rapl_event_update(%struct.perf_event* %70)
  %72 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %73 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %74 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69, %62, %57
  %78 = load %struct.rapl_pmu*, %struct.rapl_pmu** %5, align 8
  %79 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %78, i32 0, i32 1
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @raw_spin_unlock_irqrestore(i32* %79, i64 %80)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rapl_event_update(%struct.perf_event*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
