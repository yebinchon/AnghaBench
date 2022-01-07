; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c_cpumf_pmu_commit_txn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c_cpumf_pmu_commit_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.cpu_cf_events = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cpu_cf_events = common dso_local global i32 0, align 4
@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@CPUMF_LCCTL_ENABLE_SHIFT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu*)* @cpumf_pmu_commit_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpumf_pmu_commit_txn(%struct.pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmu*, align 8
  %4 = alloca %struct.cpu_cf_events*, align 8
  %5 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %3, align 8
  %6 = call %struct.cpu_cf_events* @this_cpu_ptr(i32* @cpu_cf_events)
  store %struct.cpu_cf_events* %6, %struct.cpu_cf_events** %4, align 8
  %7 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %4, align 8
  %8 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %4, align 8
  %15 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %4, align 8
  %23 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  store i32 0, i32* %2, align 4
  br label %52

24:                                               ; preds = %1
  %25 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %4, align 8
  %26 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CPUMF_LCCTL_ENABLE_SHIFT, align 4
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  %31 = xor i32 %30, -1
  %32 = and i32 %27, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @CPUMF_LCCTL_ENABLE_SHIFT, align 4
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %4, align 8
  %38 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %36, %40
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %24
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %24
  %48 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %4, align 8
  %49 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load %struct.pmu*, %struct.pmu** %3, align 8
  %51 = call i32 @perf_pmu_enable(%struct.pmu* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %44, %21
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.cpu_cf_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @perf_pmu_enable(%struct.pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
