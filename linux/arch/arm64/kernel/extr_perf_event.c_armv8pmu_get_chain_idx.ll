; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_get_chain_idx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_get_chain_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_hw_events = type { i32 }
%struct.arm_pmu = type { i32 }

@ARMV8_IDX_COUNTER0 = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu_hw_events*, %struct.arm_pmu*)* @armv8pmu_get_chain_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8pmu_get_chain_idx(%struct.pmu_hw_events* %0, %struct.arm_pmu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmu_hw_events*, align 8
  %5 = alloca %struct.arm_pmu*, align 8
  %6 = alloca i32, align 4
  store %struct.pmu_hw_events* %0, %struct.pmu_hw_events** %4, align 8
  store %struct.arm_pmu* %1, %struct.arm_pmu** %5, align 8
  %7 = load i32, i32* @ARMV8_IDX_COUNTER0, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %39, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.arm_pmu*, %struct.arm_pmu** %5, align 8
  %12 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %18 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @test_and_set_bit(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %26 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @test_and_set_bit(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %35 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clear_bit(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %6, align 4
  br label %9

42:                                               ; preds = %9
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %30
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
