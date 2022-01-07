; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/embedded6xx/extr_ls_uart.c_avr_uart_configure.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/embedded6xx/extr_ls_uart.c_avr_uart_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_LCR_WLEN8 = common dso_local global i8 0, align 1
@avr_clock = common dso_local global i32 0, align 4
@avr_addr = common dso_local global i64 0, align 8
@UART_LCR = common dso_local global i64 0, align 8
@UART_MCR = common dso_local global i64 0, align 8
@UART_IER = common dso_local global i64 0, align 8
@UART_LCR_STOP = common dso_local global i8 0, align 1
@UART_LCR_PARITY = common dso_local global i8 0, align 1
@UART_LCR_EPAR = common dso_local global i8 0, align 1
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@UART_DLL = common dso_local global i64 0, align 8
@UART_DLM = common dso_local global i64 0, align 8
@UART_FCR = common dso_local global i64 0, align 8
@UART_FCR_ENABLE_FIFO = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avr_uart_configure() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = load i8, i8* @UART_LCR_WLEN8, align 1
  store i8 %3, i8* %1, align 1
  %4 = load i32, i32* @avr_clock, align 4
  %5 = call i32 @AVR_QUOT(i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i64, i64* @avr_addr, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @avr_clock, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %0
  br label %77

12:                                               ; preds = %8
  %13 = load i64, i64* @avr_addr, align 8
  %14 = load i64, i64* @UART_LCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i8, i8* %1, align 1
  %17 = call i32 @out_8(i64 %15, i8 zeroext %16)
  %18 = load i64, i64* @avr_addr, align 8
  %19 = load i64, i64* @UART_MCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @out_8(i64 %20, i8 zeroext 0)
  %22 = load i64, i64* @avr_addr, align 8
  %23 = load i64, i64* @UART_IER, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @out_8(i64 %24, i8 zeroext 0)
  %26 = load i8, i8* @UART_LCR_STOP, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @UART_LCR_PARITY, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = load i8, i8* @UART_LCR_EPAR, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %30, %32
  %34 = load i8, i8* %1, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %1, align 1
  %38 = load i64, i64* @avr_addr, align 8
  %39 = load i64, i64* @UART_LCR, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i8, i8* %1, align 1
  %42 = call i32 @out_8(i64 %40, i8 zeroext %41)
  %43 = load i64, i64* @avr_addr, align 8
  %44 = load i64, i64* @UART_LCR, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i8, i8* %1, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @UART_LCR_DLAB, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %47, %49
  %51 = trunc i32 %50 to i8
  %52 = call i32 @out_8(i64 %45, i8 zeroext %51)
  %53 = load i64, i64* @avr_addr, align 8
  %54 = load i64, i64* @UART_DLL, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* %2, align 4
  %57 = and i32 %56, 255
  %58 = trunc i32 %57 to i8
  %59 = call i32 @out_8(i64 %55, i8 zeroext %58)
  %60 = load i64, i64* @avr_addr, align 8
  %61 = load i64, i64* @UART_DLM, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %2, align 4
  %64 = lshr i32 %63, 8
  %65 = trunc i32 %64 to i8
  %66 = call i32 @out_8(i64 %62, i8 zeroext %65)
  %67 = load i64, i64* @avr_addr, align 8
  %68 = load i64, i64* @UART_LCR, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i8, i8* %1, align 1
  %71 = call i32 @out_8(i64 %69, i8 zeroext %70)
  %72 = load i64, i64* @avr_addr, align 8
  %73 = load i64, i64* @UART_FCR, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %76 = call i32 @out_8(i64 %74, i8 zeroext %75)
  br label %77

77:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @AVR_QUOT(i32) #1

declare dso_local i32 @out_8(i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
