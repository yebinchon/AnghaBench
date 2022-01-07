; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_irq.c_au1300_set_dbdma_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_irq.c_au1300_set_dbdma_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AU1300_GPIC_ADDR = common dso_local global i64 0, align 8
@AU1300_GPIC_DMASEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au1300_set_dbdma_gpio(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 1
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load i64, i64* @AU1300_GPIC_ADDR, align 8
  %13 = load i64, i64* @AU1300_GPIC_DMASEL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @__raw_readl(i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = mul nsw i32 8, %16
  %18 = shl i32 255, %17
  %19 = xor i32 %18, -1
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %5, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 127
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 8, %25
  %27 = shl i32 %24, %26
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %5, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @AU1300_GPIC_ADDR, align 8
  %33 = load i64, i64* @AU1300_GPIC_DMASEL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @__raw_writel(i64 %31, i64 %34)
  %36 = call i32 (...) @wmb()
  br label %37

37:                                               ; preds = %11, %8, %2
  ret void
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
