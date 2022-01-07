; ModuleID = '/home/carl/AnghaBench/linux/drivers/amba/extr_tegra-ahb.c_tegra_ahb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/amba/extr_tegra-ahb.c_tegra_ahb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.tegra_ahb = type { i32*, i32 }

@tegra_ahb_gizmo = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@INCORRECT_BASE_ADDR_LOW_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"incorrect AHB base address in DT data - enabling workaround\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_ahb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_ahb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.tegra_ahb*, align 8
  %6 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @tegra_ahb_gizmo, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = add i64 16, %10
  store i64 %11, i64* %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.tegra_ahb* @devm_kzalloc(i32* %13, i64 %14, i32 %15)
  store %struct.tegra_ahb* %16, %struct.tegra_ahb** %5, align 8
  %17 = load %struct.tegra_ahb*, %struct.tegra_ahb** %5, align 8
  %18 = icmp ne %struct.tegra_ahb* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %72

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %4, align 8
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @INCORRECT_BASE_ADDR_LOW_BYTE, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @INCORRECT_BASE_ADDR_LOW_BYTE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @INCORRECT_BASE_ADDR_LOW_BYTE, align 4
  %41 = load %struct.resource*, %struct.resource** %4, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %36, %28, %22
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.resource*, %struct.resource** %4, align 8
  %49 = call i32 @devm_ioremap_resource(i32* %47, %struct.resource* %48)
  %50 = load %struct.tegra_ahb*, %struct.tegra_ahb** %5, align 8
  %51 = getelementptr inbounds %struct.tegra_ahb, %struct.tegra_ahb* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.tegra_ahb*, %struct.tegra_ahb** %5, align 8
  %53 = getelementptr inbounds %struct.tegra_ahb, %struct.tegra_ahb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load %struct.tegra_ahb*, %struct.tegra_ahb** %5, align 8
  %59 = getelementptr inbounds %struct.tegra_ahb, %struct.tegra_ahb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %2, align 4
  br label %72

62:                                               ; preds = %45
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.tegra_ahb*, %struct.tegra_ahb** %5, align 8
  %66 = getelementptr inbounds %struct.tegra_ahb, %struct.tegra_ahb* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load %struct.tegra_ahb*, %struct.tegra_ahb** %5, align 8
  %69 = call i32 @platform_set_drvdata(%struct.platform_device* %67, %struct.tegra_ahb* %68)
  %70 = load %struct.tegra_ahb*, %struct.tegra_ahb** %5, align 8
  %71 = call i32 @tegra_ahb_gizmo_init(%struct.tegra_ahb* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %62, %57, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.tegra_ahb* @devm_kzalloc(i32*, i64, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_ahb*) #1

declare dso_local i32 @tegra_ahb_gizmo_init(%struct.tegra_ahb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
