; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/82xx/extr_ep8248e.c_ep8248e_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/82xx/extr_ep8248e.c_ep8248e_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mii_bus = type { i8*, i32, %struct.TYPE_2__* }
%struct.resource = type { i32 }

@ep8248e_bcsr_node = common dso_local global %struct.device_node* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ep8248e_mdio_ctrl = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ep8248e-mdio-bitbang\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep8248e_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep8248e_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca %struct.resource, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device_node* @of_get_parent(i32 %11)
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = call i32 @of_node_put(%struct.device_node* %13)
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** @ep8248e_bcsr_node, align 8
  %17 = icmp ne %struct.device_node* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %66

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @of_address_to_resource(i32 %25, i32 0, %struct.resource* %5)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %66

31:                                               ; preds = %21
  %32 = call %struct.mii_bus* @alloc_mdio_bitbang(i32* @ep8248e_mdio_ctrl)
  store %struct.mii_bus* %32, %struct.mii_bus** %4, align 8
  %33 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %34 = icmp ne %struct.mii_bus* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %66

38:                                               ; preds = %31
  %39 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %40 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %44 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %43, i32 0, i32 2
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** %44, align 8
  %45 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %46 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snprintf(i32 %47, i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @of_mdiobus_register(%struct.mii_bus* %52, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %38
  br label %62

61:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %66

62:                                               ; preds = %60
  %63 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %64 = call i32 @free_mdio_bitbang(%struct.mii_bus* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %61, %35, %29, %18
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.device_node* @of_get_parent(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local %struct.mii_bus* @alloc_mdio_bitbang(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, i32) #1

declare dso_local i32 @free_mdio_bitbang(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
