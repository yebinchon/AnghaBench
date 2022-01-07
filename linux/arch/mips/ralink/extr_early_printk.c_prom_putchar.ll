; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ralink/extr_early_printk.c_prom_putchar.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ralink/extr_early_printk.c_prom_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_complete = common dso_local global i32 0, align 4
@CONFIG_SOC_MT7621 = common dso_local global i32 0, align 4
@UART_TX = common dso_local global i32 0, align 4
@UART_REG_LSR = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_REG_LSR_RT2880 = common dso_local global i32 0, align 4
@UART_REG_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prom_putchar(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i32, i32* @init_complete, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (...) @find_uart_base()
  store i32 1, i32* @init_complete, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32, i32* @CONFIG_SOC_MT7621, align 4
  %9 = call i64 @IS_ENABLED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = call i64 (...) @soc_is_mt7628()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11, %7
  %15 = load i8, i8* %2, align 1
  %16 = load i32, i32* @UART_TX, align 4
  %17 = call i32 @uart_w32(i8 zeroext %15, i32 %16)
  br label %18

18:                                               ; preds = %24, %14
  %19 = load i32, i32* @UART_REG_LSR, align 4
  %20 = call i32 @uart_r32(i32 %19)
  %21 = load i32, i32* @UART_LSR_THRE, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %18

25:                                               ; preds = %18
  br label %46

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %33, %26
  %28 = load i32, i32* @UART_REG_LSR_RT2880, align 4
  %29 = call i32 @uart_r32(i32 %28)
  %30 = load i32, i32* @UART_LSR_THRE, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %27

34:                                               ; preds = %27
  %35 = load i8, i8* %2, align 1
  %36 = load i32, i32* @UART_REG_TX, align 4
  %37 = call i32 @uart_w32(i8 zeroext %35, i32 %36)
  br label %38

38:                                               ; preds = %44, %34
  %39 = load i32, i32* @UART_REG_LSR_RT2880, align 4
  %40 = call i32 @uart_r32(i32 %39)
  %41 = load i32, i32* @UART_LSR_THRE, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %38

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %25
  ret void
}

declare dso_local i32 @find_uart_base(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @soc_is_mt7628(...) #1

declare dso_local i32 @uart_w32(i8 zeroext, i32) #1

declare dso_local i32 @uart_r32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
