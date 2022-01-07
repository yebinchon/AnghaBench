; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_reserve_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_reserve_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nds32_pmu = type { i32 (%struct.nds32_pmu*, i32)*, %struct.platform_device* }
%struct.platform_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@nds32_pmu_dispatch_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nds32_pmu*)* @nds32_pmu_reserve_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nds32_pmu_reserve_hardware(%struct.nds32_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nds32_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  store %struct.nds32_pmu* %0, %struct.nds32_pmu** %3, align 8
  %6 = load %struct.nds32_pmu*, %struct.nds32_pmu** %3, align 8
  %7 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %6, i32 0, i32 1
  %8 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  store %struct.platform_device* %8, %struct.platform_device** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %10 = icmp ne %struct.platform_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @pm_runtime_get_sync(i32* %16)
  %18 = load %struct.nds32_pmu*, %struct.nds32_pmu** %3, align 8
  %19 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %18, i32 0, i32 0
  %20 = load i32 (%struct.nds32_pmu*, i32)*, i32 (%struct.nds32_pmu*, i32)** %19, align 8
  %21 = load %struct.nds32_pmu*, %struct.nds32_pmu** %3, align 8
  %22 = load i32, i32* @nds32_pmu_dispatch_irq, align 4
  %23 = call i32 %20(%struct.nds32_pmu* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load %struct.nds32_pmu*, %struct.nds32_pmu** %3, align 8
  %28 = call i32 @nds32_pmu_release_hardware(%struct.nds32_pmu* %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %26, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @nds32_pmu_release_hardware(%struct.nds32_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
