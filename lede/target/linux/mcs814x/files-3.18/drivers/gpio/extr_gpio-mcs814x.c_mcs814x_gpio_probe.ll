; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/gpio/extr_gpio-mcs814x.c_mcs814x_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/gpio/extr_gpio-mcs814x.c_mcs814x_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.resource = type { i32 }
%struct.mcs814x_gpio_chip = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"num-gpios\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"FIXME: no num-gpios property\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mcs814x_gpio_get = common dso_local global i32 0, align 4
@mcs814x_gpio_set = common dso_local global i32 0, align 4
@mcs814x_gpio_direction_input = common dso_local global i32 0, align 4
@mcs814x_gpio_direction_output = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to register gpiochip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcs814x_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs814x_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.mcs814x_gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %4, align 8
  %11 = load %struct.resource*, %struct.resource** %4, align 8
  %12 = icmp ne %struct.resource* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %100

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @of_get_property(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_err(%struct.TYPE_5__* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %16
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.mcs814x_gpio_chip* @kzalloc(i32 36, i32 %29)
  store %struct.mcs814x_gpio_chip* %30, %struct.mcs814x_gpio_chip** %5, align 8
  %31 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %32 = icmp ne %struct.mcs814x_gpio_chip* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %100

36:                                               ; preds = %28
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = call i32 @devm_ioremap_resource(%struct.TYPE_5__* %38, %struct.resource* %39)
  %41 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %42 = getelementptr inbounds %struct.mcs814x_gpio_chip, %struct.mcs814x_gpio_chip* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %44 = getelementptr inbounds %struct.mcs814x_gpio_chip, %struct.mcs814x_gpio_chip* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %94

50:                                               ; preds = %36
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %53 = call i32 @platform_set_drvdata(%struct.platform_device* %51, %struct.mcs814x_gpio_chip* %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %58 = getelementptr inbounds %struct.mcs814x_gpio_chip, %struct.mcs814x_gpio_chip* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 6
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @mcs814x_gpio_get, align 4
  %61 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %62 = getelementptr inbounds %struct.mcs814x_gpio_chip, %struct.mcs814x_gpio_chip* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 5
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @mcs814x_gpio_set, align 4
  %65 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %66 = getelementptr inbounds %struct.mcs814x_gpio_chip, %struct.mcs814x_gpio_chip* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @mcs814x_gpio_direction_input, align 4
  %69 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %70 = getelementptr inbounds %struct.mcs814x_gpio_chip, %struct.mcs814x_gpio_chip* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @mcs814x_gpio_direction_output, align 4
  %73 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %74 = getelementptr inbounds %struct.mcs814x_gpio_chip, %struct.mcs814x_gpio_chip* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @be32_to_cpup(i32* %76)
  %78 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %79 = getelementptr inbounds %struct.mcs814x_gpio_chip, %struct.mcs814x_gpio_chip* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %82 = getelementptr inbounds %struct.mcs814x_gpio_chip, %struct.mcs814x_gpio_chip* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 -1, i32* %83, align 4
  %84 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %85 = getelementptr inbounds %struct.mcs814x_gpio_chip, %struct.mcs814x_gpio_chip* %84, i32 0, i32 0
  %86 = call i32 @gpiochip_add(%struct.TYPE_4__* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %50
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @dev_err(%struct.TYPE_5__* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %94

93:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %100

94:                                               ; preds = %89, %47
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = call i32 @platform_set_drvdata(%struct.platform_device* %95, %struct.mcs814x_gpio_chip* null)
  %97 = load %struct.mcs814x_gpio_chip*, %struct.mcs814x_gpio_chip** %5, align 8
  %98 = call i32 @kfree(%struct.mcs814x_gpio_chip* %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %94, %93, %33, %13
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.mcs814x_gpio_chip* @kzalloc(i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mcs814x_gpio_chip*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @gpiochip_add(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.mcs814x_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
