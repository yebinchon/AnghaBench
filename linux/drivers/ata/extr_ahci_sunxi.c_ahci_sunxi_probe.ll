; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_sunxi.c_ahci_sunxi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_sunxi.c_ahci_sunxi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ahci_host_priv = type { i32, i32, i32 }

@AHCI_PLATFORM_GET_RESETS = common dso_local global i32 0, align 4
@ahci_sunxi_start_engine = common dso_local global i32 0, align 4
@AHCI_HFLAG_32BIT_ONLY = common dso_local global i32 0, align 4
@AHCI_HFLAG_NO_MSI = common dso_local global i32 0, align 4
@AHCI_HFLAG_YES_NCQ = common dso_local global i32 0, align 4
@enable_pmp = common dso_local global i32 0, align 4
@AHCI_HFLAG_NO_PMP = common dso_local global i32 0, align 4
@ahci_sunxi_port_info = common dso_local global i32 0, align 4
@ahci_platform_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ahci_sunxi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_sunxi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ahci_host_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @AHCI_PLATFORM_GET_RESETS, align 4
  %11 = call %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device* %9, i32 %10)
  store %struct.ahci_host_priv* %11, %struct.ahci_host_priv** %5, align 8
  %12 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %13 = call i64 @IS_ERR(%struct.ahci_host_priv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %17 = call i32 @PTR_ERR(%struct.ahci_host_priv* %16)
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load i32, i32* @ahci_sunxi_start_engine, align 4
  %20 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %21 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %23 = call i32 @ahci_platform_enable_resources(%struct.ahci_host_priv* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %65

28:                                               ; preds = %18
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ahci_sunxi_phy_init(%struct.device* %29, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %61

37:                                               ; preds = %28
  %38 = load i32, i32* @AHCI_HFLAG_32BIT_ONLY, align 4
  %39 = load i32, i32* @AHCI_HFLAG_NO_MSI, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @AHCI_HFLAG_YES_NCQ, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %44 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @enable_pmp, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @AHCI_HFLAG_NO_PMP, align 4
  %49 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %50 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %37
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %56 = call i32 @ahci_platform_init_host(%struct.platform_device* %54, %struct.ahci_host_priv* %55, i32* @ahci_sunxi_port_info, i32* @ahci_platform_sht)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %61

60:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %65

61:                                               ; preds = %59, %36
  %62 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %63 = call i32 @ahci_platform_disable_resources(%struct.ahci_host_priv* %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %60, %26, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_enable_resources(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_sunxi_phy_init(%struct.device*, i32) #1

declare dso_local i32 @ahci_platform_init_host(%struct.platform_device*, %struct.ahci_host_priv*, i32*, i32*) #1

declare dso_local i32 @ahci_platform_disable_resources(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
