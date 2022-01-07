; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_tegra-gmi.c_tegra_gmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_tegra-gmi.c_tegra_gmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.tegra_gmi = type { i32, i32, i32, %struct.device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"gmi\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"can not get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"can not get reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"fail to create devices.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_gmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gmi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_gmi*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tegra_gmi* @devm_kzalloc(%struct.device* %10, i32 24, i32 %11)
  store %struct.tegra_gmi* %12, %struct.tegra_gmi** %5, align 8
  %13 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %14 = icmp ne %struct.tegra_gmi* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %106

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %20, i32 0, i32 3
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %6, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = call i32 @devm_ioremap_resource(%struct.device* %25, %struct.resource* %26)
  %28 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %37 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %106

40:                                               ; preds = %18
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @devm_clk_get(%struct.device* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %44 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %46 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %40
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %54 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %106

57:                                               ; preds = %40
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @devm_reset_control_get(%struct.device* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %61 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %63 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @IS_ERR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %71 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %106

74:                                               ; preds = %57
  %75 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %76 = call i32 @tegra_gmi_parse_dt(%struct.tegra_gmi* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %106

81:                                               ; preds = %74
  %82 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %83 = call i32 @tegra_gmi_enable(%struct.tegra_gmi* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %106

88:                                               ; preds = %81
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i32 @of_platform_default_populate(i32 %91, i32* null, %struct.device* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %100 = call i32 @tegra_gmi_disable(%struct.tegra_gmi* %99)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %106

102:                                              ; preds = %88
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = load %struct.tegra_gmi*, %struct.tegra_gmi** %5, align 8
  %105 = call i32 @platform_set_drvdata(%struct.platform_device* %103, %struct.tegra_gmi* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %96, %86, %79, %67, %50, %35, %15
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.tegra_gmi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i32 @tegra_gmi_parse_dt(%struct.tegra_gmi*) #1

declare dso_local i32 @tegra_gmi_enable(%struct.tegra_gmi*) #1

declare dso_local i32 @of_platform_default_populate(i32, i32*, %struct.device*) #1

declare dso_local i32 @tegra_gmi_disable(%struct.tegra_gmi*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_gmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
