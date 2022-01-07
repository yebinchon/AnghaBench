; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pnx833x/common/extr_interrupts.c_pnx833x_set_type_gpio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pnx833x/common/extr_interrupts.c_pnx833x_set_type_gpio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@PNX833X_GPIO_IRQ_BASE = common dso_local global i32 0, align 4
@GPIO_INT_EDGE_RISING = common dso_local global i32 0, align 4
@GPIO_INT_EDGE_FALLING = common dso_local global i32 0, align 4
@GPIO_INT_EDGE_BOTH = common dso_local global i32 0, align 4
@GPIO_INT_LEVEL_HIGH = common dso_local global i32 0, align 4
@GPIO_INT_LEVEL_LOW = common dso_local global i32 0, align 4
@GPIO_INT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @pnx833x_set_type_gpio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnx833x_set_type_gpio_irq(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PNX833X_GPIO_IRQ_BASE, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %23 [
    i32 130, label %13
    i32 131, label %15
    i32 132, label %17
    i32 129, label %19
    i32 128, label %21
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @GPIO_INT_EDGE_RISING, align 4
  store i32 %14, i32* %6, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @GPIO_INT_EDGE_FALLING, align 4
  store i32 %16, i32* %6, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @GPIO_INT_EDGE_BOTH, align 4
  store i32 %18, i32* %6, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @GPIO_INT_LEVEL_HIGH, align 4
  store i32 %20, i32* %6, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @GPIO_INT_LEVEL_LOW, align 4
  store i32 %22, i32* %6, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @GPIO_INT_NONE, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %21, %19, %17, %15, %13
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @pnx833x_gpio_setup_irq(i32 %26, i32 %27)
  ret i32 0
}

declare dso_local i32 @pnx833x_gpio_setup_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
