; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_udbg_16550.c_udbg_probe_uart_speed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_udbg_16550.c_udbg_probe_uart_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_LCR = common dso_local global i32 0, align 4
@LCR_DLAB = common dso_local global i32 0, align 4
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udbg_probe_uart_speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @UART_LCR, align 4
  %10 = call i32 @udbg_uart_in(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @UART_LCR, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @LCR_DLAB, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @udbg_uart_out(i32 %11, i32 %14)
  %16 = load i32, i32* @UART_DLL, align 4
  %17 = call i32 @udbg_uart_in(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @UART_DLM, align 4
  %19 = call i32 @udbg_uart_in(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 %20, 8
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @UART_MCR, align 4
  %25 = call i32 @udbg_uart_in(i32 %24)
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 4, i32* %6, align 4
  br label %30

29:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* @UART_LCR, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @udbg_uart_out(i32 %31, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %6, align 4
  %36 = udiv i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = mul i32 %37, 16
  %39 = udiv i32 %36, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %2, align 4
  %42 = udiv i32 %41, 16
  %43 = icmp ugt i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i32 9600, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @udbg_uart_in(i32) #1

declare dso_local i32 @udbg_uart_out(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
