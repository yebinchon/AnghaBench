; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_brcm.c_brcm_ahci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_brcm.c_brcm_ahci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ata_host = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { %struct.brcm_ahci_priv* }
%struct.brcm_ahci_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @brcm_ahci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcm_ahci_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.ahci_host_priv*, align 8
  %6 = alloca %struct.brcm_ahci_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.ata_host* @dev_get_drvdata(i32* %9)
  store %struct.ata_host* %10, %struct.ata_host** %4, align 8
  %11 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %12 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %11, i32 0, i32 0
  %13 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %12, align 8
  store %struct.ahci_host_priv* %13, %struct.ahci_host_priv** %5, align 8
  %14 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %15 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %14, i32 0, i32 0
  %16 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %15, align 8
  store %struct.brcm_ahci_priv* %16, %struct.brcm_ahci_priv** %6, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @ata_platform_remove_one(%struct.platform_device* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %25 = call i32 @brcm_sata_phys_disable(%struct.brcm_ahci_priv* %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %21
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.ata_host* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ata_platform_remove_one(%struct.platform_device*) #1

declare dso_local i32 @brcm_sata_phys_disable(%struct.brcm_ahci_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
