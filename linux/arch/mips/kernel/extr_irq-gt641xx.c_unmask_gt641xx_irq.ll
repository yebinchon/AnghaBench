; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_irq-gt641xx.c_unmask_gt641xx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_irq-gt641xx.c_unmask_gt641xx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@gt641xx_irq_lock = common dso_local global i32 0, align 4
@GT_INTRMASK_OFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @unmask_gt641xx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmask_gt641xx_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @raw_spin_lock_irqsave(i32* @gt641xx_irq_lock, i64 %5)
  %7 = load i32, i32* @GT_INTRMASK_OFS, align 4
  %8 = call i32 @GT_READ(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @GT641XX_IRQ_TO_BIT(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @GT_INTRMASK_OFS, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @GT_WRITE(i32 %15, i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @raw_spin_unlock_irqrestore(i32* @gt641xx_irq_lock, i64 %18)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @GT_READ(i32) #1

declare dso_local i32 @GT641XX_IRQ_TO_BIT(i32) #1

declare dso_local i32 @GT_WRITE(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
