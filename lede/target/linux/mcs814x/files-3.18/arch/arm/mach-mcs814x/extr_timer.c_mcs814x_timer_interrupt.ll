; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_timer.c_mcs814x_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_timer.c_mcs814x_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcs814x_timer_base = common dso_local global i64 0, align 8
@TIMER_VAL = common dso_local global i64 0, align 8
@timer_correct = common dso_local global i64 0, align 8
@timer_reload_value = common dso_local global i64 0, align 8
@last_reload = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mcs814x_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs814x_timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i64, i64* @mcs814x_timer_base, align 8
  %7 = load i64, i64* @TIMER_VAL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @readl_relaxed(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @timer_correct, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i64, i64* @timer_reload_value, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* @last_reload, align 8
  %15 = load i64, i64* @last_reload, align 8
  %16 = load i64, i64* @timer_reload_value, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @timer_reload_value, align 8
  store i64 %19, i64* @last_reload, align 8
  br label %31

20:                                               ; preds = %2
  %21 = load i64, i64* @timer_correct, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i64, i64* @mcs814x_timer_base, align 8
  %25 = load i64, i64* @TIMER_VAL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @readl_relaxed(i64 %26)
  %28 = load i64, i64* %5, align 8
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* @timer_correct, align 8
  br label %30

30:                                               ; preds = %23, %20
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i64, i64* @last_reload, align 8
  %33 = load i64, i64* @mcs814x_timer_base, align 8
  %34 = load i64, i64* @TIMER_VAL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel_relaxed(i64 %32, i64 %35)
  %37 = call i32 (...) @timer_tick()
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @timer_tick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
