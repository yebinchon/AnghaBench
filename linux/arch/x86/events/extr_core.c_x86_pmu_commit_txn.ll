; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_commit_txn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_commit_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpu_hw_events*, i32, i32*)* }
%struct.cpu_hw_events = type { i32, i32, i32 }
%struct.pmu = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@X86_PMC_IDX_MAX = common dso_local global i32 0, align 4
@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu*)* @x86_pmu_commit_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_pmu_commit_txn(%struct.pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmu*, align 8
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %3, align 8
  %10 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %10, %struct.cpu_hw_events** %4, align 8
  %11 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %16 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %23 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %31 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %63

32:                                               ; preds = %1
  %33 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %34 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = call i32 (...) @x86_pmu_initialized()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %63

41:                                               ; preds = %32
  %42 = load i32 (%struct.cpu_hw_events*, i32, i32*)*, i32 (%struct.cpu_hw_events*, i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %43 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 %42(%struct.cpu_hw_events* %43, i32 %44, i32* %14)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %63

50:                                               ; preds = %41
  %51 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %52 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memcpy(i32 %53, i32* %14, i32 %57)
  %59 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %60 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.pmu*, %struct.pmu** %3, align 8
  %62 = call i32 @perf_pmu_enable(%struct.pmu* %61)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %63

63:                                               ; preds = %50, %48, %38, %29
  %64 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @x86_pmu_initialized(...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @perf_pmu_enable(%struct.pmu*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
