; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/extr_uart_base.c_prom_init_loongson_uart_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/extr_uart_base.c_prom_init_loongson_uart_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mips_machtype = common dso_local global i32 0, align 4
@LOONGSON_REG_BASE = common dso_local global i32 0, align 4
@loongson_uart_base = common dso_local global i32* null, align 8
@LOONGSON_PCIIO_BASE = common dso_local global i32 0, align 4
@LOONGSON_LIO1_BASE = common dso_local global i32 0, align 4
@_loongson_uart_base = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prom_init_loongson_uart_base() #0 {
  %1 = load i32, i32* @mips_machtype, align 4
  switch i32 %1, label %18 [
    i32 128, label %2
    i32 134, label %7
    i32 133, label %12
    i32 132, label %12
    i32 131, label %17
    i32 129, label %17
    i32 135, label %17
    i32 130, label %17
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @LOONGSON_REG_BASE, align 4
  %4 = add nsw i32 %3, 480
  %5 = load i32*, i32** @loongson_uart_base, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 %4, i32* %6, align 4
  br label %23

7:                                                ; preds = %0
  %8 = load i32, i32* @LOONGSON_PCIIO_BASE, align 4
  %9 = add nsw i32 %8, 1016
  %10 = load i32*, i32** @loongson_uart_base, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %9, i32* %11, align 4
  br label %23

12:                                               ; preds = %0, %0
  %13 = load i32, i32* @LOONGSON_PCIIO_BASE, align 4
  %14 = add nsw i32 %13, 760
  %15 = load i32*, i32** @loongson_uart_base, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  br label %23

17:                                               ; preds = %0, %0, %0, %0
  br label %18

18:                                               ; preds = %0, %17
  %19 = load i32, i32* @LOONGSON_LIO1_BASE, align 4
  %20 = add nsw i32 %19, 1016
  %21 = load i32*, i32** @loongson_uart_base, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %12, %7, %2
  %24 = load i32*, i32** @loongson_uart_base, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ioremap_nocache(i32 %26, i32 8)
  %28 = load i64*, i64** @_loongson_uart_base, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %27, i64* %29, align 8
  ret void
}

declare dso_local i64 @ioremap_nocache(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
