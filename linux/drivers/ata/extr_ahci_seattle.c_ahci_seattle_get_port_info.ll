; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_seattle.c_ahci_seattle_get_port_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_seattle.c_ahci_seattle_get_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port_info = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ahci_host_priv = type { i32, %struct.seattle_plat_data*, i32, i64 }
%struct.seattle_plat_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ahci_port_info = common dso_local global %struct.ata_port_info zeroinitializer, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EM_MSG_TYPE_LED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SGPIO LED control is enabled.\0A\00", align 1
@ahci_port_seattle_info = common dso_local global %struct.ata_port_info zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ata_port_info* (%struct.platform_device*, %struct.ahci_host_priv*)* @ahci_seattle_get_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ata_port_info* @ahci_seattle_get_port_info(%struct.platform_device* %0, %struct.ahci_host_priv* %1) #0 {
  %3 = alloca %struct.ata_port_info*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ahci_host_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.seattle_plat_data*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.ahci_host_priv* %1, %struct.ahci_host_priv** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.seattle_plat_data* @devm_kzalloc(%struct.device* %11, i32 4, i32 %12)
  store %struct.seattle_plat_data* %13, %struct.seattle_plat_data** %7, align 8
  %14 = load %struct.seattle_plat_data*, %struct.seattle_plat_data** %7, align 8
  %15 = icmp ne %struct.seattle_plat_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.ata_port_info* @ahci_port_info, %struct.ata_port_info** %3, align 8
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call i32 @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 1)
  %22 = call i32 @devm_ioremap_resource(%struct.device* %18, i32 %21)
  %23 = load %struct.seattle_plat_data*, %struct.seattle_plat_data** %7, align 8
  %24 = getelementptr inbounds %struct.seattle_plat_data, %struct.seattle_plat_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.seattle_plat_data*, %struct.seattle_plat_data** %7, align 8
  %26 = getelementptr inbounds %struct.seattle_plat_data, %struct.seattle_plat_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  store %struct.ata_port_info* @ahci_port_info, %struct.ata_port_info** %3, align 8
  br label %53

31:                                               ; preds = %17
  %32 = load %struct.seattle_plat_data*, %struct.seattle_plat_data** %7, align 8
  %33 = getelementptr inbounds %struct.seattle_plat_data, %struct.seattle_plat_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ioread32(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 15
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store %struct.ata_port_info* @ahci_port_info, %struct.ata_port_info** %3, align 8
  br label %53

40:                                               ; preds = %31
  %41 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %42 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %44 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %43, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = load i32, i32* @EM_MSG_TYPE_LED, align 4
  %46 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %47 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.seattle_plat_data*, %struct.seattle_plat_data** %7, align 8
  %49 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %50 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %49, i32 0, i32 1
  store %struct.seattle_plat_data* %48, %struct.seattle_plat_data** %50, align 8
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @dev_info(%struct.device* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.ata_port_info* @ahci_port_seattle_info, %struct.ata_port_info** %3, align 8
  br label %53

53:                                               ; preds = %40, %39, %30, %16
  %54 = load %struct.ata_port_info*, %struct.ata_port_info** %3, align 8
  ret %struct.ata_port_info* %54
}

declare dso_local %struct.seattle_plat_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, i32) #1

declare dso_local i32 @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
