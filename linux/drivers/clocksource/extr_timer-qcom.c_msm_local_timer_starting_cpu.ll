; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-qcom.c_msm_local_timer_starting_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-qcom.c_msm_local_timer_starting_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i8*, i32, i32, i32, i32, i8*, i8*, i8*, i32 }

@msm_evt = common dso_local global i32 0, align 4
@msm_timer_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"msm_timer\00", align 1
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@msm_timer_shutdown = common dso_local global i8* null, align 8
@msm_timer_set_next_event = common dso_local global i32 0, align 4
@GPT_HZ = common dso_local global i32 0, align 4
@msm_timer_has_ppi = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@msm_timer_interrupt = common dso_local global i32 0, align 4
@IRQF_TIMER = common dso_local global i32 0, align 4
@IRQF_NOBALANCING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"gp_timer\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @msm_local_timer_starting_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_local_timer_starting_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @msm_evt, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.clock_event_device* @per_cpu_ptr(i32 %5, i32 %6)
  store %struct.clock_event_device* %7, %struct.clock_event_device** %3, align 8
  %8 = load i32, i32* @msm_timer_irq, align 4
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %10 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %12 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %14 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %15 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 8
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %17 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %16, i32 0, i32 1
  store i32 200, i32* %17, align 8
  %18 = load i8*, i8** @msm_timer_shutdown, align 8
  %19 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %20 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %19, i32 0, i32 7
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @msm_timer_shutdown, align 8
  %22 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %23 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @msm_timer_shutdown, align 8
  %25 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %26 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @msm_timer_set_next_event, align 4
  %28 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %29 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @cpumask_of(i32 %30)
  %32 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %33 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %35 = load i32, i32* @GPT_HZ, align 4
  %36 = call i32 @clockevents_config_and_register(%struct.clock_event_device* %34, i32 %35, i32 4, i32 -1)
  %37 = load i64, i64* @msm_timer_has_ppi, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %1
  %40 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %41 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %44 = call i32 @enable_percpu_irq(i32 %42, i32 %43)
  br label %62

45:                                               ; preds = %1
  %46 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %47 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @msm_timer_interrupt, align 4
  %50 = load i32, i32* @IRQF_TIMER, align 4
  %51 = load i32, i32* @IRQF_NOBALANCING, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %56 = call i32 @request_irq(i32 %48, i32 %49, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.clock_event_device* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %45
  br label %62

62:                                               ; preds = %61, %39
  ret i32 0
}

declare dso_local %struct.clock_event_device* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @clockevents_config_and_register(%struct.clock_event_device*, i32, i32, i32) #1

declare dso_local i32 @enable_percpu_irq(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.clock_event_device*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
