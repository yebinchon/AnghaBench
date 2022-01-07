; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xlr.c_xls_get_pcie_link.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xlr.c_xls_get_pcie_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_bus* }
%struct.pci_bus = type { i64, %struct.pci_dev*, %struct.pci_bus* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (%struct.pci_dev*)* @xls_get_pcie_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @xls_get_pcie_link(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  store %struct.pci_bus* %7, %struct.pci_bus** %3, align 8
  %8 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 2
  %10 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  store %struct.pci_bus* %10, %struct.pci_bus** %4, align 8
  br label %11

11:                                               ; preds = %23, %1
  %12 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %13 = icmp ne %struct.pci_bus* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  store %struct.pci_bus* %22, %struct.pci_bus** %3, align 8
  br label %23

23:                                               ; preds = %21
  %24 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %25 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %24, i32 0, i32 2
  %26 = load %struct.pci_bus*, %struct.pci_bus** %25, align 8
  store %struct.pci_bus* %26, %struct.pci_bus** %4, align 8
  br label %11

27:                                               ; preds = %19
  %28 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %29 = icmp ne %struct.pci_bus* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %31, i32 0, i32 1
  %33 = load %struct.pci_dev*, %struct.pci_dev** %32, align 8
  br label %35

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi %struct.pci_dev* [ %33, %30 ], [ null, %34 ]
  ret %struct.pci_dev* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
