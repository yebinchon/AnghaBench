; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-bcm1480ht.c_bcm1480ht_can_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-bcm1480ht.c_bcm1480ht_can_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }

@bcm1480ht_bus_status = common dso_local global i32 0, align 4
@PCI_BUS_ENABLED = common dso_local global i32 0, align 4
@PCI_DEVICE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32)* @bcm1480ht_can_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm1480ht_can_access(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @bcm1480ht_bus_status, align 4
  %8 = load i32, i32* @PCI_BUS_ENABLED, align 4
  %9 = load i32, i32* @PCI_DEVICE_MODE, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @PCI_SLOT(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @bcm1480ht_bus_status, align 4
  %23 = load i32, i32* @PCI_DEVICE_MODE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %29

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %14
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %26, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
