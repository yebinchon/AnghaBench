; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8_a73_pmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8_a73_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_pmu = type { i8*, i32**, i32 }

@.str = private unnamed_addr constant [17 x i8] c"armv8_cortex_a73\00", align 1
@armv8_a73_map_event = common dso_local global i32 0, align 4
@armv8_pmuv3_events_attr_group = common dso_local global i32 0, align 4
@ARMPMU_ATTR_GROUP_EVENTS = common dso_local global i64 0, align 8
@armv8_pmuv3_format_attr_group = common dso_local global i32 0, align 4
@ARMPMU_ATTR_GROUP_FORMATS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_pmu*)* @armv8_a73_pmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8_a73_pmu_init(%struct.arm_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_pmu*, align 8
  %4 = alloca i32, align 4
  store %struct.arm_pmu* %0, %struct.arm_pmu** %3, align 8
  %5 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %6 = call i32 @armv8_pmu_init(%struct.arm_pmu* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %13 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load i32, i32* @armv8_a73_map_event, align 4
  %15 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %16 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %18 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i64, i64* @ARMPMU_ATTR_GROUP_EVENTS, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  store i32* @armv8_pmuv3_events_attr_group, i32** %21, align 8
  %22 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %23 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %22, i32 0, i32 1
  %24 = load i32**, i32*** %23, align 8
  %25 = load i64, i64* @ARMPMU_ATTR_GROUP_FORMATS, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  store i32* @armv8_pmuv3_format_attr_group, i32** %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %11, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @armv8_pmu_init(%struct.arm_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
