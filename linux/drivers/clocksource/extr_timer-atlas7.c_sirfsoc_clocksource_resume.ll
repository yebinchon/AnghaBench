; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atlas7.c_sirfsoc_clocksource_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atlas7.c_sirfsoc_clocksource_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }

@SIRFSOC_TIMER_REG_CNT = common dso_local global i32 0, align 4
@sirfsoc_timer_reg_val = common dso_local global i32* null, align 8
@sirfsoc_timer_base = common dso_local global i64 0, align 8
@sirfsoc_timer_reg_list = common dso_local global i64* null, align 8
@SIRFSOC_TIMER_64COUNTER_LOAD_LO = common dso_local global i64 0, align 8
@SIRFSOC_TIMER_64COUNTER_LOAD_HI = common dso_local global i64 0, align 8
@SIRFSOC_TIMER_64COUNTER_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clocksource*)* @sirfsoc_clocksource_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_clocksource_resume(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @SIRFSOC_TIMER_REG_CNT, align 4
  %7 = sub nsw i32 %6, 2
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = load i32*, i32** @sirfsoc_timer_reg_val, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @sirfsoc_timer_base, align 8
  %16 = load i64*, i64** @sirfsoc_timer_reg_list, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %15, %20
  %22 = call i32 @writel_relaxed(i32 %14, i64 %21)
  br label %23

23:                                               ; preds = %9
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %4

26:                                               ; preds = %4
  %27 = load i32*, i32** @sirfsoc_timer_reg_val, align 8
  %28 = load i32, i32* @SIRFSOC_TIMER_REG_CNT, align 4
  %29 = sub nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* @sirfsoc_timer_base, align 8
  %34 = load i64, i64* @SIRFSOC_TIMER_64COUNTER_LOAD_LO, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel_relaxed(i32 %32, i64 %35)
  %37 = load i32*, i32** @sirfsoc_timer_reg_val, align 8
  %38 = load i32, i32* @SIRFSOC_TIMER_REG_CNT, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @sirfsoc_timer_base, align 8
  %44 = load i64, i64* @SIRFSOC_TIMER_64COUNTER_LOAD_HI, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel_relaxed(i32 %42, i64 %45)
  %47 = load i64, i64* @sirfsoc_timer_base, align 8
  %48 = load i64, i64* @SIRFSOC_TIMER_64COUNTER_CTRL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl_relaxed(i64 %49)
  %51 = call i32 @BIT(i32 1)
  %52 = or i32 %50, %51
  %53 = call i32 @BIT(i32 0)
  %54 = or i32 %52, %53
  %55 = load i64, i64* @sirfsoc_timer_base, align 8
  %56 = load i64, i64* @SIRFSOC_TIMER_64COUNTER_CTRL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel_relaxed(i32 %54, i64 %57)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
