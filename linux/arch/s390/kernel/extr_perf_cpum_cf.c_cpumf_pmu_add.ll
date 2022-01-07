; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c_cpumf_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c_cpumf_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cpu_cf_events = type { i32, i32 }

@cpu_cf_events = common dso_local global i32 0, align 4
@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @cpumf_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpumf_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_cf_events*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.cpu_cf_events* @this_cpu_ptr(i32* @cpu_cf_events)
  store %struct.cpu_cf_events* %7, %struct.cpu_cf_events** %6, align 8
  %8 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %6, align 8
  %9 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = call i64 @validate_ctr_auth(%struct.TYPE_2__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %6, align 8
  %25 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %24, i32 0, i32 1
  %26 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ctr_set_enable(i32* %25, i32 %29)
  %31 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %32 = load i32, i32* @PERF_HES_STOPPED, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PERF_EF_START, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %23
  %42 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %43 = load i32, i32* @PERF_EF_RELOAD, align 4
  %44 = call i32 @cpumf_pmu_start(%struct.perf_event* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %23
  %46 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %47 = call i32 @perf_event_update_userpage(%struct.perf_event* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.cpu_cf_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @validate_ctr_auth(%struct.TYPE_2__*) #1

declare dso_local i32 @ctr_set_enable(i32*, i32) #1

declare dso_local i32 @cpumf_pmu_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
