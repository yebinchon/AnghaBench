; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_irq.c_puv3_gpio_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_irq.c_puv3_gpio_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@IRQ_GPIOHIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_PROBE = common dso_local global i32 0, align 4
@GPIO_IRQ_rising_edge = common dso_local global i32 0, align 4
@GPIO_IRQ_falling_edge = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@GPIO_IRQ_mask = common dso_local global i32 0, align 4
@GPIO_GRER = common dso_local global i32 0, align 4
@GPIO_GFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @puv3_gpio_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_gpio_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IRQ_GPIOHIGH, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %6, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @GPIO_MASK(i32 %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IRQ_TYPE_PROBE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, i32* @GPIO_IRQ_rising_edge, align 4
  %28 = load i32, i32* @GPIO_IRQ_falling_edge, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %77

34:                                               ; preds = %26
  %35 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %36 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %22
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @GPIO_IRQ_rising_edge, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @GPIO_IRQ_rising_edge, align 4
  br label %52

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* @GPIO_IRQ_rising_edge, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* @GPIO_IRQ_rising_edge, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @GPIO_IRQ_falling_edge, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* @GPIO_IRQ_falling_edge, align 4
  br label %66

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* @GPIO_IRQ_falling_edge, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* @GPIO_IRQ_falling_edge, align 4
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* @GPIO_IRQ_rising_edge, align 4
  %68 = load i32, i32* @GPIO_IRQ_mask, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @GPIO_GRER, align 4
  %71 = call i32 @writel(i32 %69, i32 %70)
  %72 = load i32, i32* @GPIO_IRQ_falling_edge, align 4
  %73 = load i32, i32* @GPIO_IRQ_mask, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @GPIO_GFER, align 4
  %76 = call i32 @writel(i32 %74, i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %66, %33
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @GPIO_MASK(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
