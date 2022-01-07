; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_ali_sound_dma_hack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_ali_sound_dma_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iommu* }
%struct.iommu = type { i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@PCI_VENDOR_ID_AL = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_AL_M5451 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_AL_M1533 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ali_sound_dma_hack(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iommu*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.iommu*, %struct.iommu** %11, align 8
  store %struct.iommu* %12, %struct.iommu** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @dev_is_pci(%struct.device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.TYPE_4__* @to_pci_dev(%struct.device* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI_VENDOR_ID_AL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call %struct.TYPE_4__* @to_pci_dev(%struct.device* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCI_DEVICE_ID_AL_M5451, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 2147483647
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %24, %17
  store i32 0, i32* %3, align 4
  br label %58

35:                                               ; preds = %31
  %36 = load i64, i64* @PCI_VENDOR_ID_AL, align 8
  %37 = load i32, i32* @PCI_DEVICE_ID_AL_M1533, align 4
  %38 = call %struct.pci_dev* @pci_get_device(i64 %36, i32 %37, i32* null)
  store %struct.pci_dev* %38, %struct.pci_dev** %7, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %40 = call i32 @pci_read_config_byte(%struct.pci_dev* %39, i32 126, i32* %8)
  %41 = load %struct.iommu*, %struct.iommu** %6, align 8
  %42 = getelementptr inbounds %struct.iommu, %struct.iommu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, -2147483648
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %52

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, -2
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @pci_write_config_byte(%struct.pci_dev* %53, i32 126, i32 %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %57 = call i32 @pci_dev_put(%struct.pci_dev* %56)
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %34, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local %struct.TYPE_4__* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.pci_dev* @pci_get_device(i64, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
