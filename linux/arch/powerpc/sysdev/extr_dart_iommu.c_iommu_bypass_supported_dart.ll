; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_dart_iommu.c_iommu_bypass_supported_dart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_dart_iommu.c_iommu_bypass_supported_dart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@dart_is_u4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @iommu_bypass_supported_dart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_bypass_supported_dart(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @dart_is_u4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = call i64 @dart_device_on_pcie(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @DMA_BIT_MASK(i32 40)
  %15 = icmp sge i64 %13, %14
  br label %16

16:                                               ; preds = %12, %7, %2
  %17 = phi i1 [ false, %7 ], [ false, %2 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i64 @dart_device_on_pcie(i32*) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
