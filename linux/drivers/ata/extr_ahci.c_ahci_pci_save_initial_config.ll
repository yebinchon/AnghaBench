; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_pci_save_initial_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_pci_save_initial_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, i32 }
%struct.ahci_host_priv = type { i32, i32, i32 }

@PCI_VENDOR_ID_JMICRON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"JMB361 has only one port\0A\00", align 1
@AHCI_HFLAG_MV_PATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"Disabling your PATA port. Use the boot option 'ahci.marvell_enable=0' to avoid this.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.ahci_host_priv*)* @ahci_pci_save_initial_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_pci_save_initial_config(%struct.pci_dev* %0, %struct.ahci_host_priv* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.ahci_host_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.ahci_host_priv* %1, %struct.ahci_host_priv** %4, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PCI_VENDOR_ID_JMICRON, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 9057
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 2
  %18 = call i32 @dev_info(i32* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %20 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %15, %10, %2
  %22 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %23 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AHCI_HFLAG_MV_PATA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 24865
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %34, i32 0, i32 2
  store i32 3, i32* %35, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %38 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %37, i32 0, i32 2
  store i32 15, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 2
  %42 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %21
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 2
  %46 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %47 = call i32 @ahci_save_initial_config(i32* %45, %struct.ahci_host_priv* %46)
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @ahci_save_initial_config(i32*, %struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
