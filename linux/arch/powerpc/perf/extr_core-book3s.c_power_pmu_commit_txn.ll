; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_power_pmu_commit_txn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_power_pmu_commit_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.cpu_hw_events = type { i32, i64, i64, i32*, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ppmu = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu*)* @power_pmu_commit_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_pmu_commit_txn(%struct.pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmu*, align 8
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pmu* %0, %struct.pmu** %3, align 8
  %7 = load i32, i32* @ppmu, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EAGAIN, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %93

12:                                               ; preds = %1
  %13 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %13, %struct.cpu_hw_events** %4, align 8
  %14 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %15 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %22 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %12
  %29 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %30 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  store i32 0, i32* %2, align 4
  br label %93

31:                                               ; preds = %12
  %32 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %33 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  %35 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %36 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %35, i32 0, i32 4
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %39 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @check_excludes(%struct.TYPE_4__** %37, i32 %40, i32 0, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %93

47:                                               ; preds = %31
  %48 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %49 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %50 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %53 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @power_check_constraints(%struct.cpu_hw_events* %48, i32* %51, i32 %54, i64 %55)
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %93

62:                                               ; preds = %47
  %63 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %64 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %85, %62
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %72 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %78 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %77, i32 0, i32 4
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %79, i64 %80
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 %76, i32* %84, align 4
  br label %85

85:                                               ; preds = %70
  %86 = load i64, i64* %5, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %5, align 8
  br label %66

88:                                               ; preds = %66
  %89 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %90 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.pmu*, %struct.pmu** %3, align 8
  %92 = call i32 @perf_pmu_enable(%struct.pmu* %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %88, %59, %44, %28, %9
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @check_excludes(%struct.TYPE_4__**, i32, i32, i64) #1

declare dso_local i64 @power_check_constraints(%struct.cpu_hw_events*, i32*, i32, i64) #1

declare dso_local i32 @perf_pmu_enable(%struct.pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
