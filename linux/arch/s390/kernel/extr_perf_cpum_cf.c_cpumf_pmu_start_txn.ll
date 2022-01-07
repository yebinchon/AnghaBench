; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c_cpumf_pmu_start_txn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c_cpumf_pmu_start_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.cpu_cf_events = type { i32, i32, i32 }

@cpu_cf_events = common dso_local global i32 0, align 4
@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*, i32)* @cpumf_pmu_start_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpumf_pmu_start_txn(%struct.pmu* %0, i32 %1) #0 {
  %3 = alloca %struct.pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_cf_events*, align 8
  store %struct.pmu* %0, %struct.pmu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.cpu_cf_events* @this_cpu_ptr(i32* @cpu_cf_events)
  store %struct.cpu_cf_events* %6, %struct.cpu_cf_events** %5, align 8
  %7 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %5, align 8
  %8 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @WARN_ON_ONCE(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %5, align 8
  %13 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.pmu*, %struct.pmu** %3, align 8
  %22 = call i32 @perf_pmu_disable(%struct.pmu* %21)
  %23 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %5, align 8
  %24 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %5, align 8
  %27 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.cpu_cf_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @perf_pmu_disable(%struct.pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
