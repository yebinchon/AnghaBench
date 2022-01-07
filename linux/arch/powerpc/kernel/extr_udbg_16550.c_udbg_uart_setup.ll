; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_udbg_16550.c_udbg_uart_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_udbg_16550.c_udbg_uart_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_LCR = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@LCR_DLAB = common dso_local global i32 0, align 4
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udbg_uart_setup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1843200, i32* %4, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 9600, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %4, align 4
  %16 = udiv i32 %15, 16
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = udiv i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @UART_LCR, align 4
  %21 = call i32 @udbg_uart_out(i32 %20, i32 0)
  %22 = load i32, i32* @UART_IER, align 4
  %23 = call i32 @udbg_uart_out(i32 %22, i32 255)
  %24 = load i32, i32* @UART_IER, align 4
  %25 = call i32 @udbg_uart_out(i32 %24, i32 0)
  %26 = load i32, i32* @UART_LCR, align 4
  %27 = load i32, i32* @LCR_DLAB, align 4
  %28 = call i32 @udbg_uart_out(i32 %26, i32 %27)
  %29 = load i32, i32* @UART_DLL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 255
  %32 = call i32 @udbg_uart_out(i32 %29, i32 %31)
  %33 = load i32, i32* @UART_DLM, align 4
  %34 = load i32, i32* %5, align 4
  %35 = lshr i32 %34, 8
  %36 = call i32 @udbg_uart_out(i32 %33, i32 %35)
  %37 = load i32, i32* @UART_LCR, align 4
  %38 = call i32 @udbg_uart_out(i32 %37, i32 3)
  %39 = load i32, i32* @UART_MCR, align 4
  %40 = call i32 @udbg_uart_out(i32 %39, i32 3)
  %41 = load i32, i32* @UART_FCR, align 4
  %42 = call i32 @udbg_uart_out(i32 %41, i32 7)
  ret void
}

declare dso_local i32 @udbg_uart_out(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
