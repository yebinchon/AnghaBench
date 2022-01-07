; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_commit_txn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_commit_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.cpu_hw_events = type { i32, i32, i32, i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@sparc_pmu = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu*)* @sparc_pmu_commit_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_pmu_commit_txn(%struct.pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmu*, align 8
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %3, align 8
  %6 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %6, %struct.cpu_hw_events** %4, align 8
  %7 = load i32, i32* @sparc_pmu, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %61

12:                                               ; preds = %1
  %13 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %14 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %21 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %29 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  store i32 0, i32* %2, align 4
  br label %61

30:                                               ; preds = %12
  %31 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %32 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %35 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @check_excludes(i32 %36, i32 0, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %61

43:                                               ; preds = %30
  %44 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %45 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %48 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @sparc_check_constraints(i32 %46, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %61

56:                                               ; preds = %43
  %57 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %58 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  %59 = load %struct.pmu*, %struct.pmu** %3, align 8
  %60 = call i32 @perf_pmu_enable(%struct.pmu* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %53, %40, %27, %9
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @check_excludes(i32, i32, i32) #1

declare dso_local i64 @sparc_check_constraints(i32, i32, i32) #1

declare dso_local i32 @perf_pmu_enable(%struct.pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
