; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c_cpumf_pmu_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c_cpumf_pmu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i64 }
%struct.cpu_cf_events = type { i32*, i32 }

@cpu_cf_events = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @cpumf_pmu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpumf_pmu_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_cf_events*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.cpu_cf_events* @this_cpu_ptr(i32* @cpu_cf_events)
  store %struct.cpu_cf_events* %7, %struct.cpu_cf_events** %5, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %6, align 8
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PERF_HES_STOPPED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON_ONCE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %70

21:                                               ; preds = %2
  %22 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON_ONCE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %70

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PERF_EF_RELOAD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON_ONCE(i32 %43)
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %47 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %5, align 8
  %49 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %48, i32 0, i32 1
  %50 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %51 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ctr_set_enable(i32* %49, i64 %52)
  %54 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %5, align 8
  %55 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %54, i32 0, i32 1
  %56 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %57 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ctr_set_start(i32* %55, i64 %58)
  %60 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %61 = call i32 @hw_perf_event_reset(%struct.perf_event* %60)
  %62 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %5, align 8
  %63 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %66 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = call i32 @atomic_inc(i32* %68)
  br label %70

70:                                               ; preds = %45, %29, %20
  ret void
}

declare dso_local %struct.cpu_cf_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ctr_set_enable(i32*, i64) #1

declare dso_local i32 @ctr_set_start(i32*, i64) #1

declare dso_local i32 @hw_perf_event_reset(%struct.perf_event*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
