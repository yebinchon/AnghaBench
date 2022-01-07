; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.adm6996_gpio_platform_data* }
%struct.adm6996_gpio_platform_data = type { i32, i32, i32, i32 }
%struct.adm6996_priv = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adm6996_read_gpio_reg = common dso_local global i32 0, align 4
@adm6996_write_gpio_reg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"adm_eecs\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"adm_eedi\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"adm_eesk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adm6996_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.adm6996_gpio_platform_data*, align 8
  %5 = alloca %struct.adm6996_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.adm6996_gpio_platform_data*, %struct.adm6996_gpio_platform_data** %9, align 8
  store %struct.adm6996_gpio_platform_data* %10, %struct.adm6996_gpio_platform_data** %4, align 8
  %11 = load %struct.adm6996_gpio_platform_data*, %struct.adm6996_gpio_platform_data** %4, align 8
  %12 = icmp ne %struct.adm6996_gpio_platform_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %105

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.adm6996_priv* @devm_kzalloc(%struct.TYPE_4__* %18, i32 32, i32 %19)
  store %struct.adm6996_priv* %20, %struct.adm6996_priv** %5, align 8
  %21 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %22 = icmp ne %struct.adm6996_priv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %105

26:                                               ; preds = %16
  %27 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %28 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %27, i32 0, i32 7
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %31 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %30, i32 0, i32 6
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.adm6996_gpio_platform_data*, %struct.adm6996_gpio_platform_data** %4, align 8
  %34 = getelementptr inbounds %struct.adm6996_gpio_platform_data, %struct.adm6996_gpio_platform_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %37 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.adm6996_gpio_platform_data*, %struct.adm6996_gpio_platform_data** %4, align 8
  %39 = getelementptr inbounds %struct.adm6996_gpio_platform_data, %struct.adm6996_gpio_platform_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %42 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.adm6996_gpio_platform_data*, %struct.adm6996_gpio_platform_data** %4, align 8
  %44 = getelementptr inbounds %struct.adm6996_gpio_platform_data, %struct.adm6996_gpio_platform_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %47 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.adm6996_gpio_platform_data*, %struct.adm6996_gpio_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.adm6996_gpio_platform_data, %struct.adm6996_gpio_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %52 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @adm6996_read_gpio_reg, align 4
  %54 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %55 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @adm6996_write_gpio_reg, align 4
  %57 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %58 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %62 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @devm_gpio_request(%struct.TYPE_4__* %60, i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %26
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %105

69:                                               ; preds = %26
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %73 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @devm_gpio_request(%struct.TYPE_4__* %71, i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %105

80:                                               ; preds = %69
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %84 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @devm_gpio_request(%struct.TYPE_4__* %82, i32 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %105

91:                                               ; preds = %80
  %92 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_name(%struct.TYPE_4__* %94)
  %96 = call i32 @adm6996_switch_init(%struct.adm6996_priv* %92, i32 %95, i32* null)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %105

101:                                              ; preds = %91
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.adm6996_priv* %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %99, %89, %78, %67, %23, %13
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.adm6996_priv* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_gpio_request(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @adm6996_switch_init(%struct.adm6996_priv*, i32, i32*) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.adm6996_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
