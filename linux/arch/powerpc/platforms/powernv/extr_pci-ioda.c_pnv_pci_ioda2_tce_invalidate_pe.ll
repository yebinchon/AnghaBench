; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda2_tce_invalidate_pe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda2_tce_invalidate_pe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_ioda_pe = type { i32, %struct.pnv_phb* }
%struct.pnv_phb = type { i64, i32, i64 }

@PNV_PHB_MODEL_PHB3 = common dso_local global i64 0, align 8
@OPAL_PCI_TCE_KILL_PE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnv_ioda_pe*)* @pnv_pci_ioda2_tce_invalidate_pe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_pci_ioda2_tce_invalidate_pe(%struct.pnv_ioda_pe* %0) #0 {
  %2 = alloca %struct.pnv_ioda_pe*, align 8
  %3 = alloca %struct.pnv_phb*, align 8
  store %struct.pnv_ioda_pe* %0, %struct.pnv_ioda_pe** %2, align 8
  %4 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %5 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %4, i32 0, i32 1
  %6 = load %struct.pnv_phb*, %struct.pnv_phb** %5, align 8
  store %struct.pnv_phb* %6, %struct.pnv_phb** %3, align 8
  %7 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %8 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PNV_PHB_MODEL_PHB3, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %14 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %19 = call i32 @pnv_pci_phb3_tce_invalidate_pe(%struct.pnv_ioda_pe* %18)
  br label %29

20:                                               ; preds = %12, %1
  %21 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %22 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @OPAL_PCI_TCE_KILL_PE, align 4
  %25 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %26 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @opal_pci_tce_kill(i32 %23, i32 %24, i32 %27, i32 0, i32 0, i32 0)
  br label %29

29:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @pnv_pci_phb3_tce_invalidate_pe(%struct.pnv_ioda_pe*) #1

declare dso_local i32 @opal_pci_tce_kill(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
