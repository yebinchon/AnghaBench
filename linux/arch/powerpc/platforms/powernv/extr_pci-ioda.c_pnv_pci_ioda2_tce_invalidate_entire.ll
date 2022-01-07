; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda2_tce_invalidate_entire.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda2_tce_invalidate_entire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_phb = type { i64, i32 }

@PNV_PHB_MODEL_NPU = common dso_local global i64 0, align 8
@PNV_PHB_MODEL_PHB3 = common dso_local global i64 0, align 8
@OPAL_PCI_TCE_KILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnv_pci_ioda2_tce_invalidate_entire(%struct.pnv_phb* %0, i32 %1) #0 {
  %3 = alloca %struct.pnv_phb*, align 8
  %4 = alloca i32, align 4
  store %struct.pnv_phb* %0, %struct.pnv_phb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %6 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PNV_PHB_MODEL_NPU, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %12 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PNV_PHB_MODEL_PHB3, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10, %2
  %17 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pnv_pci_phb3_tce_invalidate_entire(%struct.pnv_phb* %17, i32 %18)
  br label %26

20:                                               ; preds = %10
  %21 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %22 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @OPAL_PCI_TCE_KILL, align 4
  %25 = call i32 @opal_pci_tce_kill(i32 %23, i32 %24, i32 0, i32 0, i32 0, i32 0)
  br label %26

26:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @pnv_pci_phb3_tce_invalidate_entire(%struct.pnv_phb*, i32) #1

declare dso_local i32 @opal_pci_tce_kill(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
