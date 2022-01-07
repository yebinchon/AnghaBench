; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_tzic.c_tzic_enable_wake.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_tzic.c_tzic_enable_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tzic_base = common dso_local global i64 0, align 8
@TZIC_DSMINT = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tzic_enable_wake() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @tzic_base, align 8
  %4 = load i64, i64* @TZIC_DSMINT, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @imx_writel(i32 1, i64 %5)
  %7 = load i64, i64* @tzic_base, align 8
  %8 = load i64, i64* @TZIC_DSMINT, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @imx_readl(i64 %9)
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %1, align 4
  br label %37

18:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %33, %18
  %20 = load i32, i32* %2, align 4
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i64, i64* @tzic_base, align 8
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @TZIC_ENSET0(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @imx_readl(i64 %26)
  %28 = load i64, i64* @tzic_base, align 8
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @TZIC_WAKEUP0(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i32 @imx_writel(i32 %27, i64 %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %2, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %19

36:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @imx_writel(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @imx_readl(i64) #1

declare dso_local i64 @TZIC_ENSET0(i32) #1

declare dso_local i64 @TZIC_WAKEUP0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
