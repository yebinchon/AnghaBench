; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_gpt.c_mpc52xx_gpt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_gpt.c_mpc52xx_gpt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mpc52xx_gpt_priv = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mpc52xx_gpt_list_mutex = common dso_local global i32 0, align 4
@mpc52xx_gpt_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"fsl,has-wdt\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"has-wdt\00", align 1
@MPC52xx_GPT_CAN_WDT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"fsl,wdt-on-boot\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"used as watchdog\0A\00", align 1
@MPC52xx_GPT_IS_WDT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"can function as watchdog\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc52xx_gpt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_gpt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mpc52xx_gpt_priv*, align 8
  %5 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mpc52xx_gpt_priv* @devm_kzalloc(%struct.TYPE_4__* %7, i32 32, i32 %8)
  store %struct.mpc52xx_gpt_priv* %9, %struct.mpc52xx_gpt_priv** %4, align 8
  %10 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %11 = icmp ne %struct.mpc52xx_gpt_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %110

15:                                               ; preds = %1
  %16 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %16, i32 0, i32 5
  %18 = call i32 @raw_spin_lock_init(i32* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %21, i32 0, i32 0
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mpc5xxx_get_bus_frequency(i32 %26)
  %28 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @of_iomap(i32 %33, i32 0)
  %35 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %36 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %38 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %15
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %110

44:                                               ; preds = %15
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %48 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %46, %struct.mpc52xx_gpt_priv* %47)
  %49 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mpc52xx_gpt_gpio_setup(%struct.mpc52xx_gpt_priv* %49, i32 %53)
  %55 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mpc52xx_gpt_irq_setup(%struct.mpc52xx_gpt_priv* %55, i32 %59)
  %61 = call i32 @mutex_lock(i32* @mpc52xx_gpt_list_mutex)
  %62 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %63 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %62, i32 0, i32 2
  %64 = call i32 @list_add(i32* %63, i32* @mpc52xx_gpt_list)
  %65 = call i32 @mutex_unlock(i32* @mpc52xx_gpt_list_mutex)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @of_get_property(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  %71 = icmp ne i32* %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %44
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @of_get_property(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %109

79:                                               ; preds = %72, %44
  %80 = load i32, i32* @MPC52xx_GPT_CAN_WDT, align 4
  %81 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %82 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32* @of_get_property(i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %87, i32** %5, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %79
  %91 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %92 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = call i32 @dev_info(%struct.TYPE_4__* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @MPC52xx_GPT_IS_WDT, align 4
  %96 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %97 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %105

100:                                              ; preds = %79
  %101 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %102 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = call i32 @dev_info(%struct.TYPE_4__* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %100, %90
  %106 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %4, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @mpc52xx_gpt_wdt_setup(%struct.mpc52xx_gpt_priv* %106, i32* %107)
  br label %109

109:                                              ; preds = %105, %72
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %41, %12
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.mpc52xx_gpt_priv* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @mpc5xxx_get_bus_frequency(i32) #1

declare dso_local i32 @of_iomap(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_4__*, %struct.mpc52xx_gpt_priv*) #1

declare dso_local i32 @mpc52xx_gpt_gpio_setup(%struct.mpc52xx_gpt_priv*, i32) #1

declare dso_local i32 @mpc52xx_gpt_irq_setup(%struct.mpc52xx_gpt_priv*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @mpc52xx_gpt_wdt_setup(%struct.mpc52xx_gpt_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
