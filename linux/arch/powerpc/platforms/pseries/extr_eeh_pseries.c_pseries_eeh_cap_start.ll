; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_eeh_pseries.c_pseries_eeh_cap_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_eeh_pseries.c_pseries_eeh_cap_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { i32 }

@PCI_STATUS = common dso_local global i32 0, align 4
@PCI_STATUS_CAP_LIST = common dso_local global i32 0, align 4
@PCI_CAPABILITY_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dn*)* @pseries_eeh_cap_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_eeh_cap_start(%struct.pci_dn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dn*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dn* %0, %struct.pci_dn** %3, align 8
  %5 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %6 = icmp ne %struct.pci_dn* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %10 = load i32, i32* @PCI_STATUS, align 4
  %11 = call i32 @rtas_read_config(%struct.pci_dn* %9, i32 %10, i32 2, i32* %4)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PCI_STATUS_CAP_LIST, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %19

17:                                               ; preds = %8
  %18 = load i32, i32* @PCI_CAPABILITY_LIST, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %16, %7
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @rtas_read_config(%struct.pci_dn*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
