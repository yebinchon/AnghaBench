; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { %struct.orion_gpio_chip* }
%struct.orion_gpio_chip = type { i32 }
%struct.irq_chip_type = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip_generic*, align 8
  %7 = alloca %struct.irq_chip_type*, align 8
  %8 = alloca %struct.orion_gpio_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.irq_chip_generic* %13, %struct.irq_chip_generic** %6, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = call %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data* %14)
  store %struct.irq_chip_type* %15, %struct.irq_chip_type** %7, align 8
  %16 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %17 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %16, i32 0, i32 0
  %18 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %17, align 8
  store %struct.orion_gpio_chip* %18, %struct.orion_gpio_chip** %8, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %20 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %8, align 8
  %23 = getelementptr inbounds %struct.orion_gpio_chip, %struct.orion_gpio_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %8, align 8
  %27 = call i32 @GPIO_IO_CONF(%struct.orion_gpio_chip* %26)
  %28 = call i32 @readl(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %143

37:                                               ; preds = %2
  %38 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %143

47:                                               ; preds = %37
  %48 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %49 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %47
  %55 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @irq_setup_alt_chip(%struct.irq_data* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %143

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67, %63
  %72 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %8, align 8
  %73 = call i32 @GPIO_IN_POL(%struct.orion_gpio_chip* %72)
  %74 = call i32 @readl(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 1, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %8, align 8
  %82 = call i32 @GPIO_IN_POL(%struct.orion_gpio_chip* %81)
  %83 = call i32 @writel(i32 %80, i32 %82)
  br label %142

84:                                               ; preds = %67
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88, %84
  %93 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %8, align 8
  %94 = call i32 @GPIO_IN_POL(%struct.orion_gpio_chip* %93)
  %95 = call i32 @readl(i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = shl i32 1, %96
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %8, align 8
  %102 = call i32 @GPIO_IN_POL(%struct.orion_gpio_chip* %101)
  %103 = call i32 @writel(i32 %100, i32 %102)
  br label %141

104:                                              ; preds = %88
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %140

108:                                              ; preds = %104
  %109 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %8, align 8
  %110 = call i32 @GPIO_IN_POL(%struct.orion_gpio_chip* %109)
  %111 = call i32 @readl(i32 %110)
  %112 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %8, align 8
  %113 = call i32 @GPIO_DATA_IN(%struct.orion_gpio_chip* %112)
  %114 = call i32 @readl(i32 %113)
  %115 = xor i32 %111, %114
  store i32 %115, i32* %11, align 4
  %116 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %8, align 8
  %117 = call i32 @GPIO_IN_POL(%struct.orion_gpio_chip* %116)
  %118 = call i32 @readl(i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %9, align 4
  %121 = shl i32 1, %120
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %108
  %125 = load i32, i32* %9, align 4
  %126 = shl i32 1, %125
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  br label %135

129:                                              ; preds = %108
  %130 = load i32, i32* %9, align 4
  %131 = shl i32 1, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %10, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %129, %124
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %8, align 8
  %138 = call i32 @GPIO_IN_POL(%struct.orion_gpio_chip* %137)
  %139 = call i32 @writel(i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %135, %104
  br label %141

141:                                              ; preds = %140, %92
  br label %142

142:                                              ; preds = %141, %71
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %59, %44, %34
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @GPIO_IO_CONF(%struct.orion_gpio_chip*) #1

declare dso_local i64 @irq_setup_alt_chip(%struct.irq_data*, i32) #1

declare dso_local i32 @GPIO_IN_POL(%struct.orion_gpio_chip*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @GPIO_DATA_IN(%struct.orion_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
