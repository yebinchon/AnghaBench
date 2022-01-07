; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_event.c_csky_pmu_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_event.c_csky_pmu_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@csky_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no irqs for PMUs defined\0A\00", align 1
@csky_pmu_irq = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"csky-pmu\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"unable to request IRQ%d for CSKY PMU counters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @csky_pmu_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csky_pmu_request_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @csky_pmu, i32 0, i32 1), align 8
  store %struct.platform_device* %7, %struct.platform_device** %6, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %9 = icmp ne %struct.platform_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (...) @num_possible_cpus()
  %18 = call i32 @min(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %13
  %26 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %27 = call i64 @platform_get_irq(%struct.platform_device* %26, i32 0)
  store i64 %27, i64* @csky_pmu_irq, align 8
  %28 = load i64, i64* @csky_pmu_irq, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %46

33:                                               ; preds = %25
  %34 = load i64, i64* @csky_pmu_irq, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @csky_pmu, i32 0, i32 0), align 8
  %37 = call i32 @this_cpu_ptr(i32 %36)
  %38 = call i32 @request_percpu_irq(i64 %34, i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i64, i64* @csky_pmu_irq, align 8
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %41, %30, %21, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_percpu_irq(i64, i32, i8*, i32) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
