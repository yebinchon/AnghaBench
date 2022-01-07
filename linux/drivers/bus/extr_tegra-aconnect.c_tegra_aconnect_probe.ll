; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_tegra-aconnect.c_tegra_aconnect_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_tegra-aconnect.c_tegra_aconnect_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.tegra_aconnect = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ape\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't retrieve ape clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"apb2ape\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Can't retrieve apb2ape clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Tegra ACONNECT bus registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_aconnect_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_aconnect_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_aconnect*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %79

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.tegra_aconnect* @devm_kzalloc(%struct.TYPE_8__* %15, i32 16, i32 %16)
  store %struct.tegra_aconnect* %17, %struct.tegra_aconnect** %4, align 8
  %18 = load %struct.tegra_aconnect*, %struct.tegra_aconnect** %4, align 8
  %19 = icmp ne %struct.tegra_aconnect* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %79

23:                                               ; preds = %13
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i8* @devm_clk_get(%struct.TYPE_8__* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.tegra_aconnect*, %struct.tegra_aconnect** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_aconnect, %struct.tegra_aconnect* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.tegra_aconnect*, %struct.tegra_aconnect** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_aconnect, %struct.tegra_aconnect* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(%struct.TYPE_8__* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.tegra_aconnect*, %struct.tegra_aconnect** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_aconnect, %struct.tegra_aconnect* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %2, align 4
  br label %79

42:                                               ; preds = %23
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i8* @devm_clk_get(%struct.TYPE_8__* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.tegra_aconnect*, %struct.tegra_aconnect** %4, align 8
  %47 = getelementptr inbounds %struct.tegra_aconnect, %struct.tegra_aconnect* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.tegra_aconnect*, %struct.tegra_aconnect** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_aconnect, %struct.tegra_aconnect* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @IS_ERR(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_8__* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %57 = load %struct.tegra_aconnect*, %struct.tegra_aconnect** %4, align 8
  %58 = getelementptr inbounds %struct.tegra_aconnect, %struct.tegra_aconnect* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @PTR_ERR(i8* %59)
  store i32 %60, i32* %2, align 4
  br label %79

61:                                               ; preds = %42
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.tegra_aconnect*, %struct.tegra_aconnect** %4, align 8
  %65 = call i32 @dev_set_drvdata(%struct.TYPE_8__* %63, %struct.tegra_aconnect* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @pm_runtime_enable(%struct.TYPE_8__* %67)
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @of_platform_populate(i32 %72, i32* null, i32* null, %struct.TYPE_8__* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @dev_info(%struct.TYPE_8__* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %61, %53, %34, %20, %10
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.tegra_aconnect* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_8__*, %struct.tegra_aconnect*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
