; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_gart_64.c_gart_iommu_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_gart_64.c_gart_iommu_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@no_agp = common dso_local global i32 0, align 4
@AMD_NB_GART = common dso_local global i32 0, align 4
@AMD64_GARTAPERTURECTL = common dso_local global i32 0, align 4
@GARTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gart_iommu_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gart_iommu_shutdown() #0 {
  %1 = alloca %struct.pci_dev*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @no_agp, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %36

7:                                                ; preds = %0
  %8 = load i32, i32* @AMD_NB_GART, align 4
  %9 = call i32 @amd_nb_has_feature(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  br label %36

12:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i32, i32* %2, align 4
  %15 = call i32 (...) @amd_nb_num()
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = call %struct.TYPE_2__* @node_to_amd_nb(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %1, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %23 = load i32, i32* @AMD64_GARTAPERTURECTL, align 4
  %24 = call i32 @pci_read_config_dword(%struct.pci_dev* %22, i32 %23, i32* %3)
  %25 = load i32, i32* @GARTEN, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %30 = load i32, i32* @AMD64_GARTAPERTURECTL, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @pci_write_config_dword(%struct.pci_dev* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %13

36:                                               ; preds = %6, %11, %13
  ret void
}

declare dso_local i32 @amd_nb_has_feature(i32) #1

declare dso_local i32 @amd_nb_num(...) #1

declare dso_local %struct.TYPE_2__* @node_to_amd_nb(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
