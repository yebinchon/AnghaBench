; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_probe_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_probe_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_pmu = type { i32 }
%struct.armv8pmu_probe_info = type { i32, %struct.arm_pmu* }

@__armv8pmu_probe_pmu = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_pmu*)* @armv8pmu_probe_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8pmu_probe_pmu(%struct.arm_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_pmu*, align 8
  %4 = alloca %struct.armv8pmu_probe_info, align 8
  %5 = alloca i32, align 4
  store %struct.arm_pmu* %0, %struct.arm_pmu** %3, align 8
  %6 = getelementptr inbounds %struct.armv8pmu_probe_info, %struct.armv8pmu_probe_info* %4, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.armv8pmu_probe_info, %struct.armv8pmu_probe_info* %4, i32 0, i32 1
  %8 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  store %struct.arm_pmu* %8, %struct.arm_pmu** %7, align 8
  %9 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %10 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %9, i32 0, i32 0
  %11 = load i32, i32* @__armv8pmu_probe_pmu, align 4
  %12 = call i32 @smp_call_function_any(i32* %10, i32 %11, %struct.armv8pmu_probe_info* %4, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %27

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.armv8pmu_probe_info, %struct.armv8pmu_probe_info* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi i32 [ 0, %21 ], [ %24, %22 ]
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @smp_call_function_any(i32*, i32, %struct.armv8pmu_probe_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
