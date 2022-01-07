; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_get_single_idx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_get_single_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_hw_events = type { i32 }
%struct.arm_pmu = type { i32 }

@ARMV8_IDX_COUNTER0 = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu_hw_events*, %struct.arm_pmu*)* @armv8pmu_get_single_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8pmu_get_single_idx(%struct.pmu_hw_events* %0, %struct.arm_pmu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmu_hw_events*, align 8
  %5 = alloca %struct.arm_pmu*, align 8
  %6 = alloca i32, align 4
  store %struct.pmu_hw_events* %0, %struct.pmu_hw_events** %4, align 8
  store %struct.arm_pmu* %1, %struct.arm_pmu** %5, align 8
  %7 = load i32, i32* @ARMV8_IDX_COUNTER0, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.arm_pmu*, %struct.arm_pmu** %5, align 8
  %11 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %17 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @test_and_set_bit(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @test_and_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
