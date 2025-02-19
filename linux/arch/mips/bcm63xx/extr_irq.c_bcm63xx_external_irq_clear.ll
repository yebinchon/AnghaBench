; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_irq.c_bcm63xx_external_irq_clear.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_irq.c_bcm63xx_external_irq_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@IRQ_EXTERNAL_BASE = common dso_local global i32 0, align 4
@epic_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @bcm63xx_external_irq_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_external_irq_clear(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IRQ_EXTERNAL_BASE, align 4
  %11 = sub i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @get_ext_irq_perf_reg(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @epic_lock, i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @bcm_perf_readl(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = call i64 (...) @BCMCPU_IS_6348()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = urem i32 %21, 4
  %23 = call i32 @EXTIRQ_CFG_CLEAR_6348(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = urem i32 %27, 4
  %29 = call i32 @EXTIRQ_CFG_CLEAR(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @bcm_perf_writel(i32 %33, i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* @epic_lock, i64 %36)
  ret void
}

declare dso_local i32 @get_ext_irq_perf_reg(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bcm_perf_readl(i32) #1

declare dso_local i64 @BCMCPU_IS_6348(...) #1

declare dso_local i32 @EXTIRQ_CFG_CLEAR_6348(i32) #1

declare dso_local i32 @EXTIRQ_CFG_CLEAR(i32) #1

declare dso_local i32 @bcm_perf_writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
