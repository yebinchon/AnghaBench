; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_gpio_mdio.c_gpio_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_gpio_mdio.c_gpio_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mii_bus = type { i8*, i32, i32, %struct.device*, %struct.mii_bus*, i32, i32*, i32*, i32* }
%struct.gpio_priv = type { i8*, i32, i32, %struct.device*, %struct.gpio_priv*, i32, i32*, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"pasemi gpio mdio bus\00", align 1
@gpio_mdio_read = common dso_local global i32 0, align 4
@gpio_mdio_write = common dso_local global i32 0, align 4
@gpio_mdio_reset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mdc-pin\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"mdio-pin\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%s: Cannot register as MDIO bus, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca %struct.gpio_priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mii_bus* @kzalloc(i32 64, i32 %18)
  %20 = bitcast %struct.mii_bus* %19 to %struct.gpio_priv*
  store %struct.gpio_priv* %20, %struct.gpio_priv** %7, align 8
  %21 = load %struct.gpio_priv*, %struct.gpio_priv** %7, align 8
  %22 = icmp ne %struct.gpio_priv* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %88

24:                                               ; preds = %1
  %25 = call %struct.mii_bus* (...) @mdiobus_alloc()
  store %struct.mii_bus* %25, %struct.mii_bus** %6, align 8
  %26 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %27 = icmp ne %struct.mii_bus* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %84

29:                                               ; preds = %24
  %30 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %31 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %33 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %32, i32 0, i32 8
  store i32* @gpio_mdio_read, i32** %33, align 8
  %34 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %35 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %34, i32 0, i32 7
  store i32* @gpio_mdio_write, i32** %35, align 8
  %36 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %37 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %36, i32 0, i32 6
  store i32* @gpio_mdio_reset, i32** %37, align 8
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32* @of_get_property(%struct.device_node* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %39, i32** %8, align 8
  %40 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %41 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @snprintf(i32 %42, i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load %struct.gpio_priv*, %struct.gpio_priv** %7, align 8
  %48 = bitcast %struct.gpio_priv* %47 to %struct.mii_bus*
  %49 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %50 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %49, i32 0, i32 4
  store %struct.mii_bus* %48, %struct.mii_bus** %50, align 8
  %51 = load %struct.device_node*, %struct.device_node** %5, align 8
  %52 = call i32* @of_get_property(%struct.device_node* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.gpio_priv*, %struct.gpio_priv** %7, align 8
  %56 = getelementptr inbounds %struct.gpio_priv, %struct.gpio_priv* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = call i32* @of_get_property(%struct.device_node* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gpio_priv*, %struct.gpio_priv** %7, align 8
  %62 = getelementptr inbounds %struct.gpio_priv, %struct.gpio_priv* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %65 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %64, i32 0, i32 3
  store %struct.device* %63, %struct.device** %65, align 8
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %68 = call i32 @dev_set_drvdata(%struct.device* %66, %struct.mii_bus* %67)
  %69 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %70 = load %struct.device_node*, %struct.device_node** %5, align 8
  %71 = call i32 @of_mdiobus_register(%struct.mii_bus* %69, %struct.device_node* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %29
  %75 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %76 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %77, i32 %78)
  br label %81

80:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %90

81:                                               ; preds = %74
  %82 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %83 = call i32 @kfree(%struct.mii_bus* %82)
  br label %84

84:                                               ; preds = %81, %28
  %85 = load %struct.gpio_priv*, %struct.gpio_priv** %7, align 8
  %86 = bitcast %struct.gpio_priv* %85 to %struct.mii_bus*
  %87 = call i32 @kfree(%struct.mii_bus* %86)
  br label %88

88:                                               ; preds = %84, %23
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %80
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.mii_bus* @kzalloc(i32, i32) #1

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.mii_bus*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
