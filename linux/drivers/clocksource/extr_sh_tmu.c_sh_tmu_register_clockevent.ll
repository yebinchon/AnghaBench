; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_register_clockevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_register_clockevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_channel = type { i32, i32, %struct.TYPE_4__*, %struct.clock_event_device }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.clock_event_device = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CLOCK_EVT_FEAT_PERIODIC = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@cpu_possible_mask = common dso_local global i32 0, align 4
@sh_tmu_clock_event_next = common dso_local global i32 0, align 4
@sh_tmu_clock_event_shutdown = common dso_local global i32 0, align 4
@sh_tmu_clock_event_set_periodic = common dso_local global i32 0, align 4
@sh_tmu_clock_event_set_oneshot = common dso_local global i32 0, align 4
@sh_tmu_clock_event_suspend = common dso_local global i32 0, align 4
@sh_tmu_clock_event_resume = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ch%u: used for clock events\0A\00", align 1
@sh_tmu_interrupt = common dso_local global i32 0, align 4
@IRQF_TIMER = common dso_local global i32 0, align 4
@IRQF_IRQPOLL = common dso_local global i32 0, align 4
@IRQF_NOBALANCING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ch%u: failed to request irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_tmu_channel*, i8*)* @sh_tmu_register_clockevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_tmu_register_clockevent(%struct.sh_tmu_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.sh_tmu_channel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  %6 = alloca i32, align 4
  store %struct.sh_tmu_channel* %0, %struct.sh_tmu_channel** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %8 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %7, i32 0, i32 3
  store %struct.clock_event_device* %8, %struct.clock_event_device** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %11 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @CLOCK_EVT_FEAT_PERIODIC, align 4
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %14 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %17 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %21 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %20, i32 0, i32 1
  store i32 200, i32* %21, align 8
  %22 = load i32, i32* @cpu_possible_mask, align 4
  %23 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %24 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @sh_tmu_clock_event_next, align 4
  %26 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %27 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @sh_tmu_clock_event_shutdown, align 4
  %29 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %30 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @sh_tmu_clock_event_set_periodic, align 4
  %32 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %33 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @sh_tmu_clock_event_set_oneshot, align 4
  %35 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %36 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @sh_tmu_clock_event_suspend, align 4
  %38 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %39 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @sh_tmu_clock_event_resume, align 4
  %41 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %42 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %44 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %50 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %54 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %55 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @clockevents_config_and_register(%struct.clock_event_device* %53, i32 %58, i32 768, i32 -1)
  %60 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %61 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @sh_tmu_interrupt, align 4
  %64 = load i32, i32* @IRQF_TIMER, align 4
  %65 = load i32, i32* @IRQF_IRQPOLL, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @IRQF_NOBALANCING, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %70 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = call i32 @dev_name(i32* %74)
  %76 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %77 = call i32 @request_irq(i32 %62, i32 %63, i32 %68, i32 %75, %struct.sh_tmu_channel* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %2
  %81 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %82 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %88 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %91 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %80, %2
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @clockevents_config_and_register(%struct.clock_event_device*, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.sh_tmu_channel*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
