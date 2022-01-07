; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/extr_early_printk.c_prom_putchar.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/extr_early_printk.c_prom_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_loongson_uart_base = common dso_local global i64* null, align 8
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prom_putchar(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8 %0, i8* %2, align 1
  %5 = load i64*, i64** @_loongson_uart_base, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %4, align 8
  store i32 1024, i32* %3, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @UART_LSR, align 4
  %12 = call i32 @serial_in(i8* %10, i32 %11)
  %13 = load i32, i32* @UART_LSR_THRE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %3, align 4
  %19 = icmp sgt i32 %17, 0
  br label %20

20:                                               ; preds = %16, %9
  %21 = phi i1 [ false, %9 ], [ %19, %16 ]
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %9

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* @UART_TX, align 4
  %26 = load i8, i8* %2, align 1
  %27 = call i32 @serial_out(i8* %24, i32 %25, i8 signext %26)
  ret void
}

declare dso_local i32 @serial_in(i8*, i32) #1

declare dso_local i32 @serial_out(i8*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
