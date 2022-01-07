; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_irq.c_puv3_high_gpio_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_irq.c_puv3_high_gpio_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@GPIO_IRQ_mask = common dso_local global i32 0, align 4
@GPIO_GRER = common dso_local global i32 0, align 4
@GPIO_GFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @puv3_high_gpio_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @puv3_high_gpio_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @GPIO_MASK(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @GPIO_IRQ_mask, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* @GPIO_IRQ_mask, align 4
  %12 = load i32, i32* @GPIO_GRER, align 4
  %13 = call i32 @readl(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load i32, i32* @GPIO_GRER, align 4
  %18 = call i32 @writel(i32 %16, i32 %17)
  %19 = load i32, i32* @GPIO_GFER, align 4
  %20 = call i32 @readl(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load i32, i32* @GPIO_GFER, align 4
  %25 = call i32 @writel(i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @GPIO_MASK(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
