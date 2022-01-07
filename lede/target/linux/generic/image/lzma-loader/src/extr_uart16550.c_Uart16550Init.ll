; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/image/lzma-loader/src/extr_uart16550.c_Uart16550Init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/image/lzma-loader/src/extr_uart16550.c_Uart16550Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFS_INTR_ENABLE = common dso_local global i32 0, align 4
@OFS_LINE_CONTROL = common dso_local global i32 0, align 4
@MAX_BAUD = common dso_local global i32 0, align 4
@OFS_DIVISOR_LSB = common dso_local global i32 0, align 4
@OFS_DIVISOR_MSB = common dso_local global i32 0, align 4
@OFS_DATA_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Uart16550Init(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @OFS_INTR_ENABLE, align 4
  %11 = call i32 @UART16550_WRITE(i32 %10, i32 0)
  %12 = load i32, i32* @OFS_LINE_CONTROL, align 4
  %13 = call i32 @UART16550_WRITE(i32 %12, i32 128)
  %14 = load i32, i32* @MAX_BAUD, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @OFS_DIVISOR_LSB, align 4
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 255
  %20 = call i32 @UART16550_WRITE(i32 %17, i32 %19)
  %21 = load i32, i32* @OFS_DIVISOR_MSB, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 65280
  %24 = ashr i32 %23, 8
  %25 = call i32 @UART16550_WRITE(i32 %21, i32 %24)
  %26 = load i32, i32* @OFS_LINE_CONTROL, align 4
  %27 = call i32 @UART16550_WRITE(i32 %26, i32 0)
  %28 = load i32, i32* @OFS_DATA_FORMAT, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @UART16550_WRITE(i32 %28, i32 %33)
  ret void
}

declare dso_local i32 @UART16550_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
