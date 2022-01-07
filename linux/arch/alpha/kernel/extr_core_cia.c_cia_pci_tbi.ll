; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_cia.c_cia_pci_tbi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_cia.c_cia_pci_tbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i32 }

@CIA_IOC_PCI_TBIA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cia_pci_tbi(%struct.pci_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_controller* %0, %struct.pci_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = call i32 (...) @wmb()
  %8 = load i64, i64* @CIA_IOC_PCI_TBIA, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32 3, i32* %9, align 4
  %10 = call i32 (...) @mb()
  %11 = load i64, i64* @CIA_IOC_PCI_TBIA, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
