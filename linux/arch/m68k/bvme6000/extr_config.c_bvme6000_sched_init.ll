; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/bvme6000/extr_config.c_bvme6000_sched_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/bvme6000/extr_config.c_bvme6000_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@BVME_RTC_BASE = common dso_local global i32 0, align 4
@BVME_IRQ_RTC = common dso_local global i32 0, align 4
@bvme6000_timer_int = common dso_local global i32 0, align 4
@IRQF_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't register timer int\00", align 1
@RTC_TIMER_COUNT = common dso_local global i32 0, align 4
@bvme6000_clk = common dso_local global i32 0, align 4
@RTC_TIMER_CLOCK_FREQ = common dso_local global i32 0, align 4
@BVME_IRQ_ABORT = common dso_local global i32 0, align 4
@bvme6000_abort_int = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Couldn't register abort int\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bvme6000_sched_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @BVME_RTC_BASE, align 4
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to %struct.TYPE_2__*
  store volatile %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 192
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %4, align 1
  %13 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @BVME_IRQ_RTC, align 4
  %16 = load i32, i32* @bvme6000_timer_int, align 4
  %17 = load i32, i32* @IRQF_TIMER, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @request_irq(i32 %15, i32 %16, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %1
  %24 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 4, i32* %25, align 4
  %26 = load i32, i32* @RTC_TIMER_COUNT, align 4
  %27 = ashr i32 %26, 8
  %28 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @RTC_TIMER_COUNT, align 4
  %31 = and i32 %30, 255
  %32 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 239
  store i32 %37, i32* %35, align 4
  %38 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 64, i32* %39, align 4
  %40 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  store i32 128, i32* %41, align 4
  %42 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i32 0, i32* %43, align 4
  %44 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 10, i32* %45, align 4
  %46 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 223
  store i32 %49, i32* %47, align 4
  %50 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 5, i32* %53, align 4
  %54 = load i8, i8* %4, align 1
  %55 = zext i8 %54 to i32
  %56 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @RTC_TIMER_CLOCK_FREQ, align 4
  %59 = call i32 @clocksource_register_hz(i32* @bvme6000_clk, i32 %58)
  %60 = load i32, i32* @BVME_IRQ_ABORT, align 4
  %61 = load i32, i32* @bvme6000_abort_int, align 4
  %62 = load i32, i32* @bvme6000_abort_int, align 4
  %63 = call i64 @request_irq(i32 %60, i32 %61, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %23
  %66 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %23
  ret void
}

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @clocksource_register_hz(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
