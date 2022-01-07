; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-usb2-clock-sel.c_rcar_usb2_clock_sel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-usb2-clock-sel.c_rcar_usb2_clock_sel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.usb2_clock_sel_priv = type { i32, i32, %struct.TYPE_3__, %struct.clk* }
%struct.TYPE_3__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i32*, i64, i32* }
%struct.clk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"usb_extal\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"usb_xtal\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"This driver needs usb_extal or usb_xtal\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"rcar_usb2_clock_sel\00", align 1
@usb2_clock_sel_clock_ops = common dso_local global i32 0, align 4
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_usb2_clock_sel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_usb2_clock_sel_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.usb2_clock_sel_priv*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.clk_init_data, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.usb2_clock_sel_priv* @devm_kzalloc(%struct.device* %14, i32 24, i32 %15)
  store %struct.usb2_clock_sel_priv* %16, %struct.usb2_clock_sel_priv** %6, align 8
  %17 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %18 = icmp ne %struct.usb2_clock_sel_priv* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %128

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call %struct.clk* @devm_platform_ioremap_resource(%struct.platform_device* %23, i32 0)
  %25 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %26 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %25, i32 0, i32 3
  store %struct.clk* %24, %struct.clk** %26, align 8
  %27 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %28 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %27, i32 0, i32 3
  %29 = load %struct.clk*, %struct.clk** %28, align 8
  %30 = call i64 @IS_ERR(%struct.clk* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %34 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %33, i32 0, i32 3
  %35 = load %struct.clk*, %struct.clk** %34, align 8
  %36 = call i32 @PTR_ERR(%struct.clk* %35)
  store i32 %36, i32* %2, align 4
  br label %128

37:                                               ; preds = %22
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @pm_runtime_enable(%struct.device* %38)
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 @pm_runtime_get_sync(%struct.device* %40)
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call %struct.clk* @devm_clk_get(%struct.device* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %43, %struct.clk** %7, align 8
  %44 = load %struct.clk*, %struct.clk** %7, align 8
  %45 = call i64 @IS_ERR(%struct.clk* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %37
  %48 = load %struct.clk*, %struct.clk** %7, align 8
  %49 = call i32 @clk_prepare_enable(%struct.clk* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = load %struct.clk*, %struct.clk** %7, align 8
  %53 = call i32 @clk_get_rate(%struct.clk* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %59 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.clk*, %struct.clk** %7, align 8
  %61 = call i32 @clk_disable_unprepare(%struct.clk* %60)
  br label %62

62:                                               ; preds = %51, %47, %37
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call %struct.clk* @devm_clk_get(%struct.device* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %64, %struct.clk** %7, align 8
  %65 = load %struct.clk*, %struct.clk** %7, align 8
  %66 = call i64 @IS_ERR(%struct.clk* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %62
  %69 = load %struct.clk*, %struct.clk** %7, align 8
  %70 = call i32 @clk_prepare_enable(%struct.clk* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %68
  %73 = load %struct.clk*, %struct.clk** %7, align 8
  %74 = call i32 @clk_get_rate(%struct.clk* %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %80 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.clk*, %struct.clk** %7, align 8
  %82 = call i32 @clk_disable_unprepare(%struct.clk* %81)
  br label %83

83:                                               ; preds = %72, %68, %62
  %84 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %85 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %90 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @ENOENT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %128

98:                                               ; preds = %88, %83
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %101 = call i32 @platform_set_drvdata(%struct.platform_device* %99, %struct.usb2_clock_sel_priv* %100)
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %104 = call i32 @dev_set_drvdata(%struct.device* %102, %struct.usb2_clock_sel_priv* %103)
  %105 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %105, align 8
  %106 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 4
  store i32* @usb2_clock_sel_clock_ops, i32** %106, align 8
  %107 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 2
  store i32* null, i32** %108, align 8
  %109 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %111 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store %struct.clk_init_data* %8, %struct.clk_init_data** %112, align 8
  %113 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %114 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %113, i32 0, i32 2
  %115 = call %struct.clk* @clk_register(i32* null, %struct.TYPE_3__* %114)
  store %struct.clk* %115, %struct.clk** %7, align 8
  %116 = load %struct.clk*, %struct.clk** %7, align 8
  %117 = call i64 @IS_ERR(%struct.clk* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %98
  %120 = load %struct.clk*, %struct.clk** %7, align 8
  %121 = call i32 @PTR_ERR(%struct.clk* %120)
  store i32 %121, i32* %2, align 4
  br label %128

122:                                              ; preds = %98
  %123 = load %struct.device_node*, %struct.device_node** %5, align 8
  %124 = load i32, i32* @of_clk_hw_simple_get, align 4
  %125 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %6, align 8
  %126 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %125, i32 0, i32 2
  %127 = call i32 @of_clk_add_hw_provider(%struct.device_node* %123, i32 %124, %struct.TYPE_3__* %126)
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %122, %119, %93, %32, %19
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.usb2_clock_sel_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.clk* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.usb2_clock_sel_priv*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.usb2_clock_sel_priv*) #1

declare dso_local %struct.clk* @clk_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
