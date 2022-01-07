; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp_twd.c_twd_calibrate_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp_twd.c_twd_calibrate_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@twd_timer_rate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Calibrating local timer... \00", align 1
@twd_base = common dso_local global i64 0, align 8
@TWD_TIMER_CONTROL = common dso_local global i64 0, align 8
@TWD_TIMER_COUNTER = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%lu.%02luMHz.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @twd_calibrate_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twd_calibrate_rate() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @twd_timer_rate, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %50

5:                                                ; preds = %0
  %6 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %7 = call i64 (...) @get_jiffies_64()
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %2, align 8
  br label %9

9:                                                ; preds = %13, %5
  %10 = call i64 (...) @get_jiffies_64()
  %11 = load i64, i64* %2, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @udelay(i32 10)
  br label %9

15:                                               ; preds = %9
  %16 = load i64, i64* %2, align 8
  %17 = add nsw i64 %16, 5
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* @twd_base, align 8
  %19 = load i64, i64* @TWD_TIMER_CONTROL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel_relaxed(i32 1, i64 %20)
  %22 = load i64, i64* @twd_base, align 8
  %23 = load i64, i64* @TWD_TIMER_COUNTER, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 -1, i64 %24)
  br label %26

26:                                               ; preds = %30, %15
  %27 = call i64 (...) @get_jiffies_64()
  %28 = load i64, i64* %2, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @udelay(i32 10)
  br label %26

32:                                               ; preds = %26
  %33 = load i64, i64* @twd_base, align 8
  %34 = load i64, i64* @TWD_TIMER_COUNTER, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i64 @readl_relaxed(i64 %35)
  store i64 %36, i64* %1, align 8
  %37 = load i64, i64* %1, align 8
  %38 = sub i64 4294967295, %37
  %39 = load i32, i32* @HZ, align 4
  %40 = sdiv i32 %39, 5
  %41 = sext i32 %40 to i64
  %42 = mul i64 %38, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* @twd_timer_rate, align 4
  %44 = load i32, i32* @twd_timer_rate, align 4
  %45 = sdiv i32 %44, 1000000
  %46 = load i32, i32* @twd_timer_rate, align 4
  %47 = sdiv i32 %46, 10000
  %48 = srem i32 %47, 100
  %49 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %32, %0
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @pr_cont(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
