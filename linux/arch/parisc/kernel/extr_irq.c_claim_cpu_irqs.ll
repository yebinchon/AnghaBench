; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_irq.c_claim_cpu_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_irq.c_claim_cpu_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_IRQ_BASE = common dso_local global i32 0, align 4
@CPU_IRQ_MAX = common dso_local global i32 0, align 4
@cpu_interrupt_type = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4
@TIMER_IRQ = common dso_local global i32 0, align 4
@timer_action = common dso_local global i32 0, align 4
@IPI_IRQ = common dso_local global i32 0, align 4
@ipi_action = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @claim_cpu_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @claim_cpu_irqs() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CPU_IRQ_BASE, align 4
  store i32 %2, i32* %1, align 4
  br label %3

3:                                                ; preds = %11, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @CPU_IRQ_MAX, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @handle_percpu_irq, align 4
  %10 = call i32 @irq_set_chip_and_handler(i32 %8, i32* @cpu_interrupt_type, i32 %9)
  br label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %3

14:                                               ; preds = %3
  %15 = load i32, i32* @TIMER_IRQ, align 4
  %16 = load i32, i32* @handle_percpu_irq, align 4
  %17 = call i32 @irq_set_handler(i32 %15, i32 %16)
  %18 = load i32, i32* @TIMER_IRQ, align 4
  %19 = call i32 @setup_irq(i32 %18, i32* @timer_action)
  ret void
}

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_handler(i32, i32) #1

declare dso_local i32 @setup_irq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
