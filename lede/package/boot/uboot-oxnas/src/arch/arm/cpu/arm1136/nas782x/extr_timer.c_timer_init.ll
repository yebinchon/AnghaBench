; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/arch/arm/cpu/arm1136/nas782x/extr_timer.c_timer_init.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/arch/arm/cpu/arm1136/nas782x/extr_timer.c_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@TIMER_LOAD_VAL = common dso_local global i32 0, align 4
@CONFIG_SYS_TIMERBASE = common dso_local global i64 0, align 8
@TIMER_LOAD = common dso_local global i64 0, align 8
@CONFIG_TIMER_PRESCALE = common dso_local global i32 0, align 4
@TIMER_PRESCALE_SHIFT = common dso_local global i32 0, align 4
@TIMER_MODE_PERIODIC = common dso_local global i32 0, align 4
@TIMER_MODE_SHIFT = common dso_local global i32 0, align 4
@TIMER_ENABLE = common dso_local global i32 0, align 4
@TIMER_ENABLE_SHIFT = common dso_local global i32 0, align 4
@TIMER_CTRL = common dso_local global i64 0, align 8
@READ_TIMER = common dso_local global i32 0, align 4
@gd = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timer_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TIMER_LOAD_VAL, align 4
  %3 = load i64, i64* @CONFIG_SYS_TIMERBASE, align 8
  %4 = load i64, i64* @TIMER_LOAD, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @writel(i32 %2, i64 %5)
  %7 = load i32, i32* @CONFIG_TIMER_PRESCALE, align 4
  %8 = load i32, i32* @TIMER_PRESCALE_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = load i32, i32* @TIMER_MODE_PERIODIC, align 4
  %11 = load i32, i32* @TIMER_MODE_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = or i32 %9, %12
  %14 = load i32, i32* @TIMER_ENABLE, align 4
  %15 = load i32, i32* @TIMER_ENABLE_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = or i32 %13, %16
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i64, i64* @CONFIG_SYS_TIMERBASE, align 8
  %20 = load i64, i64* @TIMER_CTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %18, i64 %21)
  %23 = load i32, i32* @READ_TIMER, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gd, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
