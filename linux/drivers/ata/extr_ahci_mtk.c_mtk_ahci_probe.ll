; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_mtk.c_mtk_ahci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_mtk.c_mtk_ahci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_ahci_plat = type { i32 }
%struct.ahci_host_priv = type { %struct.mtk_ahci_plat* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ahci_port_info = common dso_local global i32 0, align 4
@ahci_platform_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_ahci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ahci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_ahci_plat*, align 8
  %6 = alloca %struct.ahci_host_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mtk_ahci_plat* @devm_kzalloc(%struct.device* %10, i32 4, i32 %11)
  store %struct.mtk_ahci_plat* %12, %struct.mtk_ahci_plat** %5, align 8
  %13 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %5, align 8
  %14 = icmp ne %struct.mtk_ahci_plat* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device* %19, i32 0)
  store %struct.ahci_host_priv* %20, %struct.ahci_host_priv** %6, align 8
  %21 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %22 = call i64 @IS_ERR(%struct.ahci_host_priv* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %26 = call i32 @PTR_ERR(%struct.ahci_host_priv* %25)
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %18
  %28 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %5, align 8
  %29 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %30 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %29, i32 0, i32 0
  store %struct.mtk_ahci_plat* %28, %struct.mtk_ahci_plat** %30, align 8
  %31 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @mtk_ahci_parse_property(%struct.ahci_host_priv* %31, %struct.device* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %65

38:                                               ; preds = %27
  %39 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 @mtk_ahci_platform_resets(%struct.ahci_host_priv* %39, %struct.device* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %65

46:                                               ; preds = %38
  %47 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %48 = call i32 @ahci_platform_enable_resources(%struct.ahci_host_priv* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %65

53:                                               ; preds = %46
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %56 = call i32 @ahci_platform_init_host(%struct.platform_device* %54, %struct.ahci_host_priv* %55, i32* @ahci_port_info, i32* @ahci_platform_sht)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %61

60:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %65

61:                                               ; preds = %59
  %62 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %63 = call i32 @ahci_platform_disable_resources(%struct.ahci_host_priv* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %60, %51, %44, %36, %24, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.mtk_ahci_plat* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @mtk_ahci_parse_property(%struct.ahci_host_priv*, %struct.device*) #1

declare dso_local i32 @mtk_ahci_platform_resets(%struct.ahci_host_priv*, %struct.device*) #1

declare dso_local i32 @ahci_platform_enable_resources(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_init_host(%struct.platform_device*, %struct.ahci_host_priv*, i32*, i32*) #1

declare dso_local i32 @ahci_platform_disable_resources(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
