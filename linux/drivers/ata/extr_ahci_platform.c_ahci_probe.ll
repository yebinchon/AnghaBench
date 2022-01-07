; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_platform.c_ahci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_platform.c_ahci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port_info = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ahci_host_priv = type { i32, i32 }

@AHCI_PLATFORM_GET_RESETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ports-implemented\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"hisilicon,hisi-ahci\00", align 1
@AHCI_HFLAG_NO_FBS = common dso_local global i32 0, align 4
@AHCI_HFLAG_NO_NCQ = common dso_local global i32 0, align 4
@ahci_port_info = common dso_local global %struct.ata_port_info zeroinitializer, align 4
@ahci_platform_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ahci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ahci_host_priv*, align 8
  %6 = alloca %struct.ata_port_info*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @AHCI_PLATFORM_GET_RESETS, align 4
  %12 = call %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device* %10, i32 %11)
  store %struct.ahci_host_priv* %12, %struct.ahci_host_priv** %5, align 8
  %13 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %14 = call i64 @IS_ERR(%struct.ahci_host_priv* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %18 = call i32 @PTR_ERR(%struct.ahci_host_priv* %17)
  store i32 %18, i32* %2, align 4
  br label %65

19:                                               ; preds = %1
  %20 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %21 = call i32 @ahci_platform_enable_resources(%struct.ahci_host_priv* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %65

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %30, i32 0, i32 1
  %32 = call i32 @of_property_read_u32(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %31)
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @of_device_is_compatible(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load i32, i32* @AHCI_HFLAG_NO_FBS, align 4
  %40 = load i32, i32* @AHCI_HFLAG_NO_NCQ, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %43 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %38, %26
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call %struct.ata_port_info* @acpi_device_get_match_data(%struct.device* %47)
  store %struct.ata_port_info* %48, %struct.ata_port_info** %6, align 8
  %49 = load %struct.ata_port_info*, %struct.ata_port_info** %6, align 8
  %50 = icmp ne %struct.ata_port_info* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store %struct.ata_port_info* @ahci_port_info, %struct.ata_port_info** %6, align 8
  br label %52

52:                                               ; preds = %51, %46
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %55 = load %struct.ata_port_info*, %struct.ata_port_info** %6, align 8
  %56 = call i32 @ahci_platform_init_host(%struct.platform_device* %53, %struct.ahci_host_priv* %54, %struct.ata_port_info* %55, i32* @ahci_platform_sht)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %61

60:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %65

61:                                               ; preds = %59
  %62 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %63 = call i32 @ahci_platform_disable_resources(%struct.ahci_host_priv* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %60, %24, %16
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_enable_resources(%struct.ahci_host_priv*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local %struct.ata_port_info* @acpi_device_get_match_data(%struct.device*) #1

declare dso_local i32 @ahci_platform_init_host(%struct.platform_device*, %struct.ahci_host_priv*, %struct.ata_port_info*, i32*) #1

declare dso_local i32 @ahci_platform_disable_resources(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
