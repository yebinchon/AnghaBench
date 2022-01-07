; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i32 }

@OPAL_RESET_PCI_IODA_TABLE = common dso_local global i32 0, align 4
@OPAL_ASSERT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_controller*)* @pnv_pci_ioda_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_pci_ioda_shutdown(%struct.pci_controller* %0) #0 {
  %2 = alloca %struct.pci_controller*, align 8
  %3 = alloca %struct.pnv_phb*, align 8
  store %struct.pci_controller* %0, %struct.pci_controller** %2, align 8
  %4 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  %5 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %4, i32 0, i32 0
  %6 = load %struct.pnv_phb*, %struct.pnv_phb** %5, align 8
  store %struct.pnv_phb* %6, %struct.pnv_phb** %3, align 8
  %7 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %8 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @OPAL_RESET_PCI_IODA_TABLE, align 4
  %11 = load i32, i32* @OPAL_ASSERT_RESET, align 4
  %12 = call i32 @opal_pci_reset(i32 %9, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @opal_pci_reset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
