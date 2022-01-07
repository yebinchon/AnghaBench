; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_register_clockevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_register_clockevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_channel = type { i32, i32, %struct.TYPE_3__*, %struct.clock_event_device }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.clock_event_device = type { i8*, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@sh_cmt_interrupt = common dso_local global i32 0, align 4
@IRQF_TIMER = common dso_local global i32 0, align 4
@IRQF_IRQPOLL = common dso_local global i32 0, align 4
@IRQF_NOBALANCING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ch%u: failed to request irq %d\0A\00", align 1
@CLOCK_EVT_FEAT_PERIODIC = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@cpu_possible_mask = common dso_local global i32 0, align 4
@sh_cmt_clock_event_next = common dso_local global i32 0, align 4
@sh_cmt_clock_event_shutdown = common dso_local global i32 0, align 4
@sh_cmt_clock_event_set_periodic = common dso_local global i32 0, align 4
@sh_cmt_clock_event_set_oneshot = common dso_local global i32 0, align 4
@sh_cmt_clock_event_suspend = common dso_local global i32 0, align 4
@sh_cmt_clock_event_resume = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ch%u: used for clock events\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_cmt_channel*, i8*)* @sh_cmt_register_clockevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_register_clockevent(%struct.sh_cmt_channel* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_cmt_channel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clock_event_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sh_cmt_channel* %0, %struct.sh_cmt_channel** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %4, align 8
  %10 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %9, i32 0, i32 3
  store %struct.clock_event_device* %10, %struct.clock_event_device** %6, align 8
  %11 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %4, align 8
  %12 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %4, align 8
  %17 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @platform_get_irq(%struct.TYPE_4__* %15, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %135

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @sh_cmt_interrupt, align 4
  %27 = load i32, i32* @IRQF_TIMER, align 4
  %28 = load i32, i32* @IRQF_IRQPOLL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IRQF_NOBALANCING, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %4, align 8
  %33 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @dev_name(i32* %37)
  %39 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %4, align 8
  %40 = call i32 @request_irq(i32 %25, i32 %26, i32 %31, i32 %38, %struct.sh_cmt_channel* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %24
  %44 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %4, align 8
  %45 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %4, align 8
  %51 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %135

56:                                               ; preds = %24
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %59 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @CLOCK_EVT_FEAT_PERIODIC, align 4
  %61 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %62 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %61, i32 0, i32 15
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %64 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %65 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %64, i32 0, i32 15
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %69 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %68, i32 0, i32 1
  store i32 125, i32* %69, align 8
  %70 = load i32, i32* @cpu_possible_mask, align 4
  %71 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %72 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %71, i32 0, i32 14
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @sh_cmt_clock_event_next, align 4
  %74 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %75 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @sh_cmt_clock_event_shutdown, align 4
  %77 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %78 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %77, i32 0, i32 12
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @sh_cmt_clock_event_set_periodic, align 4
  %80 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %81 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %80, i32 0, i32 11
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @sh_cmt_clock_event_set_oneshot, align 4
  %83 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %84 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %83, i32 0, i32 10
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @sh_cmt_clock_event_suspend, align 4
  %86 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %87 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @sh_cmt_clock_event_resume, align 4
  %89 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %90 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 4
  %91 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %92 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %91, i32 0, i32 2
  store i32 32, i32* %92, align 4
  %93 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %4, align 8
  %94 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @NSEC_PER_SEC, align 4
  %99 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %100 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @div_sc(i32 %97, i32 %98, i32 %101)
  %103 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %104 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 8
  %105 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %4, align 8
  %106 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %109 = call i8* @clockevent_delta2ns(i32 %107, %struct.clock_event_device* %108)
  %110 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %111 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %110, i32 0, i32 6
  store i8* %109, i8** %111, align 8
  %112 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %4, align 8
  %113 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %116 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %118 = call i8* @clockevent_delta2ns(i32 31, %struct.clock_event_device* %117)
  %119 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %120 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %119, i32 0, i32 5
  store i8* %118, i8** %120, align 8
  %121 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %122 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %121, i32 0, i32 4
  store i32 31, i32* %122, align 4
  %123 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %4, align 8
  %124 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %4, align 8
  %130 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_info(i32* %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %134 = call i32 @clockevents_register_device(%struct.clock_event_device* %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %56, %43, %22
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @platform_get_irq(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.sh_cmt_channel*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @div_sc(i32, i32, i32) #1

declare dso_local i8* @clockevent_delta2ns(i32, %struct.clock_event_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @clockevents_register_device(%struct.clock_event_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
