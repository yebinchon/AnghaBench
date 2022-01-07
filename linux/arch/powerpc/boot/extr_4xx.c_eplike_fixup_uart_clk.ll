; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_eplike_fixup_uart_clk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_eplike_fixup_uart_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCRN_SDR0_UART0 = common dso_local global i32 0, align 4
@DCRN_SDR0_UART1 = common dso_local global i32 0, align 4
@DCRN_SDR0_UART2 = common dso_local global i32 0, align 4
@DCRN_SDR0_UART3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32)* @eplike_fixup_uart_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eplike_fixup_uart_clk(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %24 [
    i32 0, label %12
    i32 1, label %15
    i32 2, label %18
    i32 3, label %21
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* @DCRN_SDR0_UART0, align 4
  %14 = call i32 @SDR0_READ(i32 %13)
  store i32 %14, i32* %9, align 4
  br label %25

15:                                               ; preds = %4
  %16 = load i32, i32* @DCRN_SDR0_UART1, align 4
  %17 = call i32 @SDR0_READ(i32 %16)
  store i32 %17, i32* %9, align 4
  br label %25

18:                                               ; preds = %4
  %19 = load i32, i32* @DCRN_SDR0_UART2, align 4
  %20 = call i32 @SDR0_READ(i32 %19)
  store i32 %20, i32* %9, align 4
  br label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @DCRN_SDR0_UART3, align 4
  %23 = call i32 @SDR0_READ(i32 %22)
  store i32 %23, i32* %9, align 4
  br label %25

24:                                               ; preds = %4
  br label %41

25:                                               ; preds = %21, %18, %15, %12
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 8388608
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %10, align 4
  br label %37

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 255
  %35 = call i32 @__fix_zero(i32 %34, i32 256)
  %36 = udiv i32 %32, %35
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @dt_fixup_clock(i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %24
  ret void
}

declare dso_local i32 @SDR0_READ(i32) #1

declare dso_local i32 @__fix_zero(i32, i32) #1

declare dso_local i32 @dt_fixup_clock(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
