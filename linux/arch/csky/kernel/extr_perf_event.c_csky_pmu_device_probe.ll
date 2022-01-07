; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_event.c_csky_pmu_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_event.c_csky_pmu_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.platform_device*, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"[perf] failed to probe PMU!\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"count-width\00", align 1
@csky_pmu = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@DEFAULT_COUNT_WIDTH = common dso_local global i32 0, align 4
@csky_pmu_reset = common dso_local global i32 0, align 4
@csky_pmu_handle_irq = common dso_local global i32 0, align 4
@PERF_PMU_CAP_NO_INTERRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"[perf] PMU request irq fail!\0A\00", align 1
@CPUHP_AP_PERF_ONLINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"AP_PERF_ONLINE\00", align 1
@csky_pmu_starting_cpu = common dso_local global i32 0, align 4
@csky_pmu_dying_cpu = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@PERF_TYPE_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csky_pmu_device_probe(%struct.platform_device* %0, %struct.of_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = call i32 (...) @init_hw_perf_events()
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @pr_notice(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = call i64 @of_property_read_u32(%struct.device_node* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csky_pmu, i32 0, i32 3))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @DEFAULT_COUNT_WIDTH, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csky_pmu, i32 0, i32 3), align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csky_pmu, i32 0, i32 3), align 8
  %26 = call i64 @BIT_ULL(i32 %25)
  %27 = sub nsw i64 %26, 1
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csky_pmu, i32 0, i32 4), align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  store %struct.platform_device* %28, %struct.platform_device** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csky_pmu, i32 0, i32 2), align 8
  %29 = load i32, i32* @csky_pmu_reset, align 4
  %30 = call i32 @on_each_cpu(i32 %29, %struct.TYPE_7__* @csky_pmu, i32 1)
  %31 = load i32, i32* @csky_pmu_handle_irq, align 4
  %32 = call i32 @csky_pmu_request_irq(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load i32, i32* @PERF_PMU_CAP_NO_INTERRUPT, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csky_pmu, i32 0, i32 1, i32 0), align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csky_pmu, i32 0, i32 1, i32 0), align 4
  %39 = call i32 @pr_notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %24
  %41 = load i32, i32* @CPUHP_AP_PERF_ONLINE, align 4
  %42 = load i32, i32* @csky_pmu_starting_cpu, align 4
  %43 = load i32, i32* @csky_pmu_dying_cpu, align 4
  %44 = call i32 @cpuhp_setup_state(i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = call i32 (...) @csky_pmu_free_irq()
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csky_pmu, i32 0, i32 0), align 8
  %50 = call i32 @free_percpu(i32 %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %63

52:                                               ; preds = %40
  %53 = load i32, i32* @PERF_TYPE_RAW, align 4
  %54 = call i32 @perf_pmu_register(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csky_pmu, i32 0, i32 1), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = call i32 (...) @csky_pmu_free_irq()
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @csky_pmu, i32 0, i32 0), align 8
  %60 = call i32 @free_percpu(i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %47, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @init_hw_perf_events(...) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @BIT_ULL(i32) #1

declare dso_local i32 @on_each_cpu(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @csky_pmu_request_irq(i32) #1

declare dso_local i32 @cpuhp_setup_state(i32, i8*, i32, i32) #1

declare dso_local i32 @csky_pmu_free_irq(...) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @perf_pmu_register(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
