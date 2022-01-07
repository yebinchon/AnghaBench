; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_qoriq.c_ahci_qoriq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_qoriq.c_ahci_qoriq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ahci_host_priv = type { %struct.ahci_qoriq_priv* }
%struct.ahci_qoriq_priv = type { i32, i32, %struct.ahci_host_priv* }
%struct.of_device_id = type { i64 }
%struct.resource = type { i32 }

@ahci_qoriq_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ecc_initialized = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sata-ecc\00", align 1
@ahci_qoriq_port_info = common dso_local global i32 0, align 4
@ahci_qoriq_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ahci_qoriq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_qoriq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ahci_host_priv*, align 8
  %7 = alloca %struct.ahci_qoriq_priv*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device* %17, i32 0)
  store %struct.ahci_host_priv* %18, %struct.ahci_host_priv** %6, align 8
  %19 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %20 = call i64 @IS_ERR(%struct.ahci_host_priv* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.ahci_host_priv* %23)
  store i32 %24, i32* %2, align 4
  br label %112

25:                                               ; preds = %1
  %26 = load i32, i32* @ahci_qoriq_of_match, align 4
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call %struct.of_device_id* @of_match_node(i32 %26, %struct.device_node* %27)
  store %struct.of_device_id* %28, %struct.of_device_id** %8, align 8
  %29 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %30 = icmp ne %struct.of_device_id* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %112

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ahci_qoriq_priv* @devm_kzalloc(%struct.device* %35, i32 16, i32 %36)
  store %struct.ahci_qoriq_priv* %37, %struct.ahci_qoriq_priv** %7, align 8
  %38 = load %struct.ahci_qoriq_priv*, %struct.ahci_qoriq_priv** %7, align 8
  %39 = icmp ne %struct.ahci_qoriq_priv* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %112

43:                                               ; preds = %34
  %44 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %45 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.ahci_qoriq_priv*, %struct.ahci_qoriq_priv** %7, align 8
  %49 = getelementptr inbounds %struct.ahci_qoriq_priv, %struct.ahci_qoriq_priv* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @ecc_initialized, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %43
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %57, i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %59, %struct.resource** %9, align 8
  %60 = load %struct.resource*, %struct.resource** %9, align 8
  %61 = icmp ne %struct.resource* %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load %struct.resource*, %struct.resource** %9, align 8
  %65 = call %struct.ahci_host_priv* @devm_ioremap_resource(%struct.device* %63, %struct.resource* %64)
  %66 = load %struct.ahci_qoriq_priv*, %struct.ahci_qoriq_priv** %7, align 8
  %67 = getelementptr inbounds %struct.ahci_qoriq_priv, %struct.ahci_qoriq_priv* %66, i32 0, i32 2
  store %struct.ahci_host_priv* %65, %struct.ahci_host_priv** %67, align 8
  %68 = load %struct.ahci_qoriq_priv*, %struct.ahci_qoriq_priv** %7, align 8
  %69 = getelementptr inbounds %struct.ahci_qoriq_priv, %struct.ahci_qoriq_priv* %68, i32 0, i32 2
  %70 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %69, align 8
  %71 = call i64 @IS_ERR(%struct.ahci_host_priv* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.ahci_qoriq_priv*, %struct.ahci_qoriq_priv** %7, align 8
  %75 = getelementptr inbounds %struct.ahci_qoriq_priv, %struct.ahci_qoriq_priv* %74, i32 0, i32 2
  %76 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %75, align 8
  %77 = call i32 @PTR_ERR(%struct.ahci_host_priv* %76)
  store i32 %77, i32* %2, align 4
  br label %112

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %43
  %81 = load %struct.device_node*, %struct.device_node** %4, align 8
  %82 = call i32 @of_dma_is_coherent(%struct.device_node* %81)
  %83 = load %struct.ahci_qoriq_priv*, %struct.ahci_qoriq_priv** %7, align 8
  %84 = getelementptr inbounds %struct.ahci_qoriq_priv, %struct.ahci_qoriq_priv* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %86 = call i32 @ahci_platform_enable_resources(%struct.ahci_host_priv* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %2, align 4
  br label %112

91:                                               ; preds = %80
  %92 = load %struct.ahci_qoriq_priv*, %struct.ahci_qoriq_priv** %7, align 8
  %93 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %94 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %93, i32 0, i32 0
  store %struct.ahci_qoriq_priv* %92, %struct.ahci_qoriq_priv** %94, align 8
  %95 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %96 = call i32 @ahci_qoriq_phy_init(%struct.ahci_host_priv* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %108

100:                                              ; preds = %91
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %103 = call i32 @ahci_platform_init_host(%struct.platform_device* %101, %struct.ahci_host_priv* %102, i32* @ahci_qoriq_port_info, i32* @ahci_qoriq_sht)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %108

107:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %112

108:                                              ; preds = %106, %99
  %109 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %110 = call i32 @ahci_platform_disable_resources(%struct.ahci_host_priv* %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %107, %89, %73, %40, %31, %22
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.ahci_host_priv*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local %struct.ahci_qoriq_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.ahci_host_priv* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @of_dma_is_coherent(%struct.device_node*) #1

declare dso_local i32 @ahci_platform_enable_resources(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_qoriq_phy_init(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_init_host(%struct.platform_device*, %struct.ahci_host_priv*, i32*, i32*) #1

declare dso_local i32 @ahci_platform_disable_resources(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
