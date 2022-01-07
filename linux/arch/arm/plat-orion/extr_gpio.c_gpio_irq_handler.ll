; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.orion_gpio_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.orion_gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.orion_gpio_chip* @irq_desc_get_handler_data(%struct.irq_desc* %9)
  store %struct.orion_gpio_chip* %10, %struct.orion_gpio_chip** %3, align 8
  %11 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %3, align 8
  %12 = icmp eq %struct.orion_gpio_chip* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %76

14:                                               ; preds = %1
  %15 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %3, align 8
  %16 = call i32 @GPIO_DATA_IN(%struct.orion_gpio_chip* %15)
  %17 = call i32 @readl(i32 %16)
  %18 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %3, align 8
  %19 = call i32 @GPIO_LEVEL_MASK(%struct.orion_gpio_chip* %18)
  %20 = call i32 @readl(i32 %19)
  %21 = and i32 %17, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %3, align 8
  %23 = call i32 @GPIO_EDGE_CAUSE(%struct.orion_gpio_chip* %22)
  %24 = call i32 @readl(i32 %23)
  %25 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %3, align 8
  %26 = call i32 @GPIO_EDGE_MASK(%struct.orion_gpio_chip* %25)
  %27 = call i32 @readl(i32 %26)
  %28 = and i32 %24, %27
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %73, %14
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %3, align 8
  %34 = getelementptr inbounds %struct.orion_gpio_chip, %struct.orion_gpio_chip* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %31
  %39 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %3, align 8
  %40 = getelementptr inbounds %struct.orion_gpio_chip, %struct.orion_gpio_chip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %73

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @irq_get_trigger_type(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %3, align 8
  %60 = call i32 @GPIO_IN_POL(%struct.orion_gpio_chip* %59)
  %61 = call i32 @readl(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %8, align 4
  %65 = xor i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %3, align 8
  %68 = call i32 @GPIO_IN_POL(%struct.orion_gpio_chip* %67)
  %69 = call i32 @writel(i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %58, %50
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @generic_handle_irq(i32 %71)
  br label %73

73:                                               ; preds = %70, %49
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %31

76:                                               ; preds = %13, %31
  ret void
}

declare dso_local %struct.orion_gpio_chip* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @GPIO_DATA_IN(%struct.orion_gpio_chip*) #1

declare dso_local i32 @GPIO_LEVEL_MASK(%struct.orion_gpio_chip*) #1

declare dso_local i32 @GPIO_EDGE_CAUSE(%struct.orion_gpio_chip*) #1

declare dso_local i32 @GPIO_EDGE_MASK(%struct.orion_gpio_chip*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @GPIO_IN_POL(%struct.orion_gpio_chip*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
