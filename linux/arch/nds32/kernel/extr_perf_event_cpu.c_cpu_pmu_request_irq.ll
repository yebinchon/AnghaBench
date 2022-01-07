; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_cpu_pmu_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_cpu_pmu_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nds32_pmu = type { %struct.platform_device* }
%struct.platform_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no irqs for PMUs defined\0A\00", align 1
@IRQF_NOBALANCING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"nds32-pfm\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"unable to request IRQ%d for NDS PMU counters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nds32_pmu*, i32)* @cpu_pmu_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_pmu_request_irq(%struct.nds32_pmu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nds32_pmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.platform_device*, align 8
  store %struct.nds32_pmu* %0, %struct.nds32_pmu** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nds32_pmu*, %struct.nds32_pmu** %4, align 8
  %11 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %10, i32 0, i32 0
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %9, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %14 = icmp ne %struct.platform_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (...) @num_possible_cpus()
  %23 = call i32 @min(i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %18
  %31 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %32 = call i32 @platform_get_irq(%struct.platform_device* %31, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IRQF_NOBALANCING, align 4
  %36 = load %struct.nds32_pmu*, %struct.nds32_pmu** %4, align 8
  %37 = call i32 @request_irq(i32 %33, i32 %34, i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.nds32_pmu* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %40, %26, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.nds32_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
