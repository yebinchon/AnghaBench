; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_irq.c_puv3_irq_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_irq.c_puv3_irq_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puv3_irq_state = type { i32, i32, i32, i32 }

@puv3_irq_state = common dso_local global %struct.puv3_irq_state zeroinitializer, align 4
@INTC_ICMR = common dso_local global i32 0, align 4
@INTC_ICLR = common dso_local global i32 0, align 4
@INTC_ICCR = common dso_local global i32 0, align 4
@PM_PWER = common dso_local global i32 0, align 4
@GPIO_IRQ_rising_edge = common dso_local global i32 0, align 4
@GPIO_GRER = common dso_local global i32 0, align 4
@GPIO_IRQ_falling_edge = common dso_local global i32 0, align 4
@GPIO_GFER = common dso_local global i32 0, align 4
@GPIO_GEDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @puv3_irq_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_irq_suspend() #0 {
  %1 = alloca %struct.puv3_irq_state*, align 8
  store %struct.puv3_irq_state* @puv3_irq_state, %struct.puv3_irq_state** %1, align 8
  %2 = load %struct.puv3_irq_state*, %struct.puv3_irq_state** %1, align 8
  %3 = getelementptr inbounds %struct.puv3_irq_state, %struct.puv3_irq_state* %2, i32 0, i32 0
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* @INTC_ICMR, align 4
  %5 = call i32 @readl(i32 %4)
  %6 = load %struct.puv3_irq_state*, %struct.puv3_irq_state** %1, align 8
  %7 = getelementptr inbounds %struct.puv3_irq_state, %struct.puv3_irq_state* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @INTC_ICLR, align 4
  %9 = call i32 @readl(i32 %8)
  %10 = load %struct.puv3_irq_state*, %struct.puv3_irq_state** %1, align 8
  %11 = getelementptr inbounds %struct.puv3_irq_state, %struct.puv3_irq_state* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @INTC_ICCR, align 4
  %13 = call i32 @readl(i32 %12)
  %14 = load %struct.puv3_irq_state*, %struct.puv3_irq_state** %1, align 8
  %15 = getelementptr inbounds %struct.puv3_irq_state, %struct.puv3_irq_state* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @INTC_ICMR, align 4
  %17 = call i32 @readl(i32 %16)
  %18 = and i32 %17, -512
  %19 = load i32, i32* @INTC_ICMR, align 4
  %20 = call i32 @writel(i32 %18, i32 %19)
  %21 = load i32, i32* @PM_PWER, align 4
  %22 = call i32 @readl(i32 %21)
  %23 = load i32, i32* @GPIO_IRQ_rising_edge, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @GPIO_GRER, align 4
  %26 = call i32 @writel(i32 %24, i32 %25)
  %27 = load i32, i32* @PM_PWER, align 4
  %28 = call i32 @readl(i32 %27)
  %29 = load i32, i32* @GPIO_IRQ_falling_edge, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @GPIO_GFER, align 4
  %32 = call i32 @writel(i32 %30, i32 %31)
  %33 = load i32, i32* @GPIO_GEDR, align 4
  %34 = call i32 @readl(i32 %33)
  %35 = load i32, i32* @GPIO_GEDR, align 4
  %36 = call i32 @writel(i32 %34, i32 %35)
  ret i32 0
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
