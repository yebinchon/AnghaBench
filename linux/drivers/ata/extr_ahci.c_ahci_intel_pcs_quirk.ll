; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_intel_pcs_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_intel_pcs_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ahci_host_priv = type { i32 }
%struct.pci_device_id = type { i64, i64 }

@ahci_pci_tbl = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@board_ahci_pcs7 = common dso_local global i32 0, align 4
@PCS_6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.ahci_host_priv*)* @ahci_intel_pcs_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_intel_pcs_quirk(%struct.pci_dev* %0, %struct.ahci_host_priv* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.ahci_host_priv*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.ahci_host_priv* %1, %struct.ahci_host_priv** %4, align 8
  %7 = load i32, i32* @ahci_pci_tbl, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.pci_device_id* @pci_match_id(i32 %7, %struct.pci_dev* %8)
  store %struct.pci_device_id* %9, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %11 = icmp ne %struct.pci_device_id* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  br label %50

19:                                               ; preds = %12
  %20 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @board_ahci_pcs7, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %50

27:                                               ; preds = %19
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = load i32, i32* @PCS_6, align 4
  %30 = call i32 @pci_read_config_word(%struct.pci_dev* %28, i32 %29, i32* %6)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %33 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %37 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %27
  %41 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %42 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = load i32, i32* @PCS_6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pci_write_config_word(%struct.pci_dev* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %18, %26, %40, %27
  ret void
}

declare dso_local %struct.pci_device_id* @pci_match_id(i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
