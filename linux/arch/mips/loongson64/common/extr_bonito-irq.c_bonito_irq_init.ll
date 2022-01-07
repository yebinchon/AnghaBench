; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/extr_bonito-irq.c_bonito_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/extr_bonito-irq.c_bonito_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOONGSON_IRQ_BASE = common dso_local global i64 0, align 8
@bonito_irq_type = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@dma_timeout_irqaction = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bonito_irq_init() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @LOONGSON_IRQ_BASE, align 8
  store i64 %2, i64* %1, align 8
  br label %3

3:                                                ; preds = %12, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @LOONGSON_IRQ_BASE, align 8
  %6 = add nsw i64 %5, 32
  %7 = icmp slt i64 %4, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = load i64, i64* %1, align 8
  %10 = load i32, i32* @handle_level_irq, align 4
  %11 = call i32 @irq_set_chip_and_handler(i64 %9, i32* @bonito_irq_type, i32 %10)
  br label %12

12:                                               ; preds = %8
  %13 = load i64, i64* %1, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %1, align 8
  br label %3

15:                                               ; preds = %3
  ret void
}

declare dso_local i32 @irq_set_chip_and_handler(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
