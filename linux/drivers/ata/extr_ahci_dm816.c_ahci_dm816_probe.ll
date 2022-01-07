; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_dm816.c_ahci_dm816_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_dm816.c_ahci_dm816_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ahci_host_priv = type { i32 }

@ahci_dm816_port_info = common dso_local global i32 0, align 4
@ahci_dm816_platform_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ahci_dm816_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_dm816_probe(%struct.platform_device* %0) #0 {
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
  %10 = call %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device* %9, i32 0)
  store %struct.ahci_host_priv* %10, %struct.ahci_host_priv** %5, align 8
  %11 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %12 = call i64 @IS_ERR(%struct.ahci_host_priv* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %16 = call i32 @PTR_ERR(%struct.ahci_host_priv* %15)
  store i32 %16, i32* %2, align 4
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %19 = call i32 @ahci_platform_enable_resources(%struct.ahci_host_priv* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %43

24:                                               ; preds = %17
  %25 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @ahci_dm816_phy_init(%struct.ahci_host_priv* %25, %struct.device* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %39

31:                                               ; preds = %24
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %34 = call i32 @ahci_platform_init_host(%struct.platform_device* %32, %struct.ahci_host_priv* %33, i32* @ahci_dm816_port_info, i32* @ahci_dm816_platform_sht)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %39

38:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %43

39:                                               ; preds = %37, %30
  %40 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %41 = call i32 @ahci_platform_disable_resources(%struct.ahci_host_priv* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %38, %22, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_enable_resources(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_dm816_phy_init(%struct.ahci_host_priv*, %struct.device*) #1

declare dso_local i32 @ahci_platform_init_host(%struct.platform_device*, %struct.ahci_host_priv*, i32*, i32*) #1

declare dso_local i32 @ahci_platform_disable_resources(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
