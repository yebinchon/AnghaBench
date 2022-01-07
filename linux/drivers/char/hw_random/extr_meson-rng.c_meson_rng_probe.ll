; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_meson-rng.c_meson_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_meson-rng.c_meson_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.meson_rng_data = type { %struct.TYPE_2__, i32*, i32*, %struct.platform_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@meson_rng_clk_disable = common dso_local global i32 0, align 4
@meson_rng_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.meson_rng_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.meson_rng_data* @devm_kzalloc(%struct.device* %10, i32 32, i32 %11)
  store %struct.meson_rng_data* %12, %struct.meson_rng_data** %5, align 8
  %13 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %14 = icmp ne %struct.meson_rng_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %97

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %21 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %20, i32 0, i32 3
  store %struct.platform_device* %19, %struct.platform_device** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %6, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = call i32* @devm_ioremap_resource(%struct.device* %25, %struct.resource* %26)
  %28 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %29 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %31 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @IS_ERR(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %37 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @PTR_ERR(i32* %38)
  store i32 %39, i32* %2, align 4
  br label %97

40:                                               ; preds = %18
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32* @devm_clk_get(%struct.device* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %44 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %46 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @IS_ERR(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %52 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %50, %40
  %54 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %55 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %60 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @clk_prepare_enable(i32* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %97

67:                                               ; preds = %58
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load i32, i32* @meson_rng_clk_disable, align 4
  %70 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %71 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @devm_add_action_or_reset(%struct.device* %68, i32 %69, i32* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %97

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %53
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %84 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @meson_rng_read, align 4
  %87 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %88 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %92 = call i32 @platform_set_drvdata(%struct.platform_device* %90, %struct.meson_rng_data* %91)
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = load %struct.meson_rng_data*, %struct.meson_rng_data** %5, align 8
  %95 = getelementptr inbounds %struct.meson_rng_data, %struct.meson_rng_data* %94, i32 0, i32 0
  %96 = call i32 @devm_hwrng_register(%struct.device* %93, %struct.TYPE_2__* %95)
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %79, %76, %65, %35, %15
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.meson_rng_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_rng_data*) #1

declare dso_local i32 @devm_hwrng_register(%struct.device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
