; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_remap_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_remap_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.ahci_host_priv = type { i32, i64 }

@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@SZ_512K = common dso_local global i64 0, align 8
@AHCI_PCI_BAR_STANDARD = common dso_local global i32 0, align 4
@AHCI_VSCAP = common dso_local global i64 0, align 8
@AHCI_REMAP_CAP = common dso_local global i64 0, align 8
@AHCI_MAX_REMAP = common dso_local global i32 0, align 4
@PCI_CLASS_STORAGE_EXPRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Found %d remapped NVMe devices.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Switch your BIOS from RAID to AHCI mode to use them.\0A\00", align 1
@AHCI_HFLAG_NO_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32, %struct.ahci_host_priv*)* @ahci_remap_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_remap_check(%struct.pci_dev* %0, i32 %1, %struct.ahci_host_priv* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ahci_host_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ahci_host_priv* %2, %struct.ahci_host_priv** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %34, label %15

15:                                               ; preds = %3
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @pci_resource_len(%struct.pci_dev* %16, i32 %17)
  %19 = load i64, i64* @SZ_512K, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @AHCI_PCI_BAR_STANDARD, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %27 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AHCI_VSCAP, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i64 @readl(i64 %30)
  %32 = and i64 %31, 1
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25, %21, %15, %3
  br label %87

35:                                               ; preds = %25
  %36 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %37 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AHCI_REMAP_CAP, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readq(i64 %40)
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %67, %35
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @AHCI_MAX_REMAP, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %67

53:                                               ; preds = %46
  %54 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %55 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @ahci_remap_dcc(i32 %57)
  %59 = add nsw i64 %56, %58
  %60 = call i64 @readl(i64 %59)
  %61 = load i64, i64* @PCI_CLASS_STORAGE_EXPRESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %67

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %64, %63, %52
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %42

70:                                               ; preds = %42
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %87

74:                                               ; preds = %70
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i32*, i8*, ...) @dev_warn(i32* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 1
  %81 = call i32 (i32*, i8*, ...) @dev_warn(i32* %80, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @AHCI_HFLAG_NO_MSI, align 4
  %83 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %84 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %74, %73, %34
  ret void
}

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @ahci_remap_dcc(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
