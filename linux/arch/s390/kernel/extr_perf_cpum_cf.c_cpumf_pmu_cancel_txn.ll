; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c_cpumf_pmu_cancel_txn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c_cpumf_pmu_cancel_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.cpu_cf_events = type { i32, i64, i64 }

@cpu_cf_events = common dso_local global i32 0, align 4
@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @cpumf_pmu_cancel_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpumf_pmu_cancel_txn(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_cf_events*, align 8
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %5 = call %struct.cpu_cf_events* @this_cpu_ptr(i32* @cpu_cf_events)
  store %struct.cpu_cf_events* %5, %struct.cpu_cf_events** %4, align 8
  %6 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %4, align 8
  %7 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  %13 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %4, align 8
  %14 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %4, align 8
  %17 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %36

24:                                               ; preds = %1
  %25 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %4, align 8
  %26 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %4, align 8
  %29 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.pmu*, %struct.pmu** %2, align 8
  %35 = call i32 @perf_pmu_enable(%struct.pmu* %34)
  br label %36

36:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.cpu_cf_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @perf_pmu_enable(%struct.pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
