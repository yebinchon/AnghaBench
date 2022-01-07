; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_neponset.c_neponset_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_neponset.c_neponset_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.neponset_drvdata = type { i32, i32, i32, i32 }

@neponset_pcmcia_table = common dso_local global i32 0, align 4
@neponset_uart3_gpio_table = common dso_local global i32 0, align 4
@neponset_uart1_gpio_table = common dso_local global i32 0, align 4
@NEP_IRQ_NR = common dso_local global i32 0, align 4
@nep = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @neponset_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neponset_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.neponset_drvdata*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.neponset_drvdata* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.neponset_drvdata* %6, %struct.neponset_drvdata** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call i32 @platform_get_irq(%struct.platform_device* %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.neponset_drvdata*, %struct.neponset_drvdata** %3, align 8
  %10 = getelementptr inbounds %struct.neponset_drvdata, %struct.neponset_drvdata* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @IS_ERR(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.neponset_drvdata*, %struct.neponset_drvdata** %3, align 8
  %16 = getelementptr inbounds %struct.neponset_drvdata, %struct.neponset_drvdata* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @platform_device_unregister(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.neponset_drvdata*, %struct.neponset_drvdata** %3, align 8
  %21 = getelementptr inbounds %struct.neponset_drvdata, %struct.neponset_drvdata* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IS_ERR(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.neponset_drvdata*, %struct.neponset_drvdata** %3, align 8
  %27 = getelementptr inbounds %struct.neponset_drvdata, %struct.neponset_drvdata* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @platform_device_unregister(i32 %28)
  br label %30

30:                                               ; preds = %25, %19
  %31 = call i32 @gpiod_remove_lookup_table(i32* @neponset_pcmcia_table)
  %32 = call i32 @gpiod_remove_lookup_table(i32* @neponset_uart3_gpio_table)
  %33 = call i32 @gpiod_remove_lookup_table(i32* @neponset_uart1_gpio_table)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @irq_set_chained_handler(i32 %34, i32* null)
  %36 = load %struct.neponset_drvdata*, %struct.neponset_drvdata** %3, align 8
  %37 = getelementptr inbounds %struct.neponset_drvdata, %struct.neponset_drvdata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NEP_IRQ_NR, align 4
  %40 = call i32 @irq_free_descs(i32 %38, i32 %39)
  store i32* null, i32** @nep, align 8
  %41 = load %struct.neponset_drvdata*, %struct.neponset_drvdata** %3, align 8
  %42 = getelementptr inbounds %struct.neponset_drvdata, %struct.neponset_drvdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @iounmap(i32 %43)
  %45 = load %struct.neponset_drvdata*, %struct.neponset_drvdata** %3, align 8
  %46 = call i32 @kfree(%struct.neponset_drvdata* %45)
  ret i32 0
}

declare dso_local %struct.neponset_drvdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @gpiod_remove_lookup_table(i32*) #1

declare dso_local i32 @irq_set_chained_handler(i32, i32*) #1

declare dso_local i32 @irq_free_descs(i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.neponset_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
