; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/image/lzma-loader/src/extr_board.c_board_putc.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/image/lzma-loader/src/extr_board.c_board_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_REG_FLAG = common dso_local global i32 0, align 4
@UART_FLAG_TXFE = common dso_local global i32 0, align 4
@UART_REG_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @board_putc(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %9, %1
  %4 = load i32, i32* @UART_REG_FLAG, align 4
  %5 = call i32 @UART_READ(i32 %4)
  %6 = load i32, i32* @UART_FLAG_TXFE, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %3

10:                                               ; preds = %3
  %11 = load i32, i32* @UART_REG_DATA, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @UART_WRITE(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %20, %10
  %15 = load i32, i32* @UART_REG_FLAG, align 4
  %16 = call i32 @UART_READ(i32 %15)
  %17 = load i32, i32* @UART_FLAG_TXFE, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %14

21:                                               ; preds = %14
  ret void
}

declare dso_local i32 @UART_READ(i32) #1

declare dso_local i32 @UART_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
