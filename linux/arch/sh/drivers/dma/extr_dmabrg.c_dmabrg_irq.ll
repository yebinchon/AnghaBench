; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dmabrg.c_dmabrg_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dmabrg.c_dmabrg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMABRGCR = common dso_local global i32 0, align 4
@DMABRGIRQ_USBDMA = common dso_local global i64 0, align 8
@DMABRGIRQ_USBDMAERR = common dso_local global i64 0, align 8
@DMABRGIRQ_A0TXF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dmabrg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmabrg_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @DMABRGCR, align 4
  %8 = call i64 @__raw_readl(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = and i64 %9, -16711684
  %11 = load i32, i32* @DMABRGCR, align 4
  %12 = call i32 @__raw_writel(i64 %10, i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = lshr i64 %13, 8
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, %14
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %17, 1
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i64, i64* @DMABRGIRQ_USBDMA, align 8
  %22 = call i32 @dmabrg_call_handler(i64 %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i64, i64* %5, align 8
  %25 = and i64 %24, 2
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* @DMABRGIRQ_USBDMAERR, align 8
  %29 = call i32 @dmabrg_call_handler(i64 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i64, i64* %5, align 8
  %32 = lshr i64 %31, 16
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %36, %30
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @__ffs(i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i64, i64* %5, align 8
  %40 = sub i64 %39, 1
  %41 = load i64, i64* %5, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* @DMABRGIRQ_A0TXF, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @dmabrg_call_handler(i64 %46)
  br label %33

48:                                               ; preds = %33
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %49
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @dmabrg_call_handler(i64) #1

declare dso_local i32 @__ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
