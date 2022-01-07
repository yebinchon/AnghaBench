; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8_pmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_pmu = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@armv8pmu_handle_irq = common dso_local global i32 0, align 4
@armv8pmu_enable_event = common dso_local global i32 0, align 4
@armv8pmu_disable_event = common dso_local global i32 0, align 4
@armv8pmu_read_counter = common dso_local global i32 0, align 4
@armv8pmu_write_counter = common dso_local global i32 0, align 4
@armv8pmu_get_event_idx = common dso_local global i32 0, align 4
@armv8pmu_clear_event_idx = common dso_local global i32 0, align 4
@armv8pmu_start = common dso_local global i32 0, align 4
@armv8pmu_stop = common dso_local global i32 0, align 4
@armv8pmu_reset = common dso_local global i32 0, align 4
@armv8pmu_set_event_filter = common dso_local global i32 0, align 4
@armv8pmu_filter_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_pmu*)* @armv8_pmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8_pmu_init(%struct.arm_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_pmu*, align 8
  %4 = alloca i32, align 4
  store %struct.arm_pmu* %0, %struct.arm_pmu** %3, align 8
  %5 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %6 = call i32 @armv8pmu_probe_pmu(%struct.arm_pmu* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %48

11:                                               ; preds = %1
  %12 = load i32, i32* @armv8pmu_handle_irq, align 4
  %13 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %14 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @armv8pmu_enable_event, align 4
  %16 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %17 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @armv8pmu_disable_event, align 4
  %19 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %20 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @armv8pmu_read_counter, align 4
  %22 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %23 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @armv8pmu_write_counter, align 4
  %25 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %26 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @armv8pmu_get_event_idx, align 4
  %28 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %29 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @armv8pmu_clear_event_idx, align 4
  %31 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %32 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @armv8pmu_start, align 4
  %34 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %35 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @armv8pmu_stop, align 4
  %37 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %38 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @armv8pmu_reset, align 4
  %40 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %41 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @armv8pmu_set_event_filter, align 4
  %43 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %44 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @armv8pmu_filter_match, align 4
  %46 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %47 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %11, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @armv8pmu_probe_pmu(%struct.arm_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
