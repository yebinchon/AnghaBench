; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atlas7.c_sirfsoc_local_timer_starting_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atlas7.c_sirfsoc_local_timer_starting_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i32, %struct.clock_event_device* }
%struct.clock_event_device = type { i8*, i32, i64, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i32 }

@sirfsoc_clockevent = common dso_local global i32 0, align 4
@sirfsoc_timer_irq = common dso_local global %struct.irqaction zeroinitializer, align 8
@sirfsoc_timer1_irq = common dso_local global %struct.irqaction zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"local_timer\00", align 1
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@sirfsoc_timer_shutdown = common dso_local global i8* null, align 8
@sirfsoc_timer_set_next_event = common dso_local global i32 0, align 4
@atlas7_timer_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sirfsoc_local_timer_starting_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_local_timer_starting_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca %struct.irqaction*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @sirfsoc_clockevent, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.clock_event_device* @per_cpu_ptr(i32 %5, i32 %6)
  store %struct.clock_event_device* %7, %struct.clock_event_device** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.irqaction* @sirfsoc_timer_irq, %struct.irqaction** %4, align 8
  br label %12

11:                                               ; preds = %1
  store %struct.irqaction* @sirfsoc_timer1_irq, %struct.irqaction** %4, align 8
  br label %12

12:                                               ; preds = %11, %10
  %13 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %14 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %17 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %19 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %21 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %22 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %21, i32 0, i32 12
  store i32 %20, i32* %22, align 8
  %23 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %24 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %23, i32 0, i32 1
  store i32 200, i32* %24, align 8
  %25 = load i8*, i8** @sirfsoc_timer_shutdown, align 8
  %26 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %27 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %26, i32 0, i32 11
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @sirfsoc_timer_shutdown, align 8
  %29 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %30 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %29, i32 0, i32 10
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @sirfsoc_timer_shutdown, align 8
  %32 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %33 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %32, i32 0, i32 9
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @sirfsoc_timer_set_next_event, align 4
  %35 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %36 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %38 = load i32, i32* @atlas7_timer_rate, align 4
  %39 = call i32 @clockevents_calc_mult_shift(%struct.clock_event_device* %37, i32 %38, i32 60)
  %40 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %41 = call i8* @clockevent_delta2ns(i32 -2, %struct.clock_event_device* %40)
  %42 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %43 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %45 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %44, i32 0, i32 2
  store i64 -2, i64* %45, align 8
  %46 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %47 = call i8* @clockevent_delta2ns(i32 2, %struct.clock_event_device* %46)
  %48 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %49 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %51 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %50, i32 0, i32 3
  store i32 2, i32* %51, align 8
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @cpumask_of(i32 %52)
  %54 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %55 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %57 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %58 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %57, i32 0, i32 1
  store %struct.clock_event_device* %56, %struct.clock_event_device** %58, align 8
  %59 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %60 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %63 = call i32 @setup_irq(i32 %61, %struct.irqaction* %62)
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %66 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @cpumask_of(i32 %68)
  %70 = call i32 @irq_force_affinity(i32 %67, i32 %69)
  %71 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %72 = call i32 @clockevents_register_device(%struct.clock_event_device* %71)
  ret i32 0
}

declare dso_local %struct.clock_event_device* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @clockevents_calc_mult_shift(%struct.clock_event_device*, i32, i32) #1

declare dso_local i8* @clockevent_delta2ns(i32, %struct.clock_event_device*) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @setup_irq(i32, %struct.irqaction*) #1

declare dso_local i32 @irq_force_affinity(i32, i32) #1

declare dso_local i32 @clockevents_register_device(%struct.clock_event_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
