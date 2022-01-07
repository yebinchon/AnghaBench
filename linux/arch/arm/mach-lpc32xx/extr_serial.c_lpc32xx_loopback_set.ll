; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-lpc32xx/extr_serial.c_lpc32xx_loopback_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-lpc32xx/extr_serial.c_lpc32xx_loopback_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"lpc32xx_hs: Warning: Unknown port at %08x\0A\00", align 1
@LPC32XX_UARTCTL_CLOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpc32xx_loopback_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %11 [
    i32 130, label %8
    i32 129, label %9
    i32 128, label %10
  ]

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %14

9:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  br label %14

10:                                               ; preds = %2
  store i32 6, i32* %5, align 4
  br label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %34

14:                                               ; preds = %10, %9, %8
  %15 = load i32, i32* @LPC32XX_UARTCTL_CLOOP, align 4
  %16 = call i32 @readl(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %30

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @LPC32XX_UARTCTL_CLOOP, align 4
  %33 = call i32 @writel(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %11
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
