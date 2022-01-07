; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_orion_gpio_mask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_orion_gpio_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i32 }
%struct.irq_chip_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @orion_gpio_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orion_gpio_mask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca %struct.irq_chip_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.irq_chip_generic* %8, %struct.irq_chip_generic** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data* %9)
  store %struct.irq_chip_type* %10, %struct.irq_chip_type** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %15 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %14)
  %16 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %17 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %18 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @irq_reg_readl(%struct.irq_chip_generic* %16, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %29 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %26, i32 %27, i32 %31)
  %33 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %34 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %33)
  ret void
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data*) #1

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @irq_reg_readl(%struct.irq_chip_generic*, i32) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i32) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
