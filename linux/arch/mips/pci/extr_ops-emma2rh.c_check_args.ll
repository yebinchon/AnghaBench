; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-emma2rh.c_check_args.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-emma2rh.c_check_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32* }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32*)* @check_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_args(%struct.pci_bus* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @PCI_SLOT(i32 %24)
  %26 = icmp sge i32 %25, 10
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %28, i32* %4, align 4
  br label %42

29:                                               ; preds = %23
  br label %41

30:                                               ; preds = %19
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 64
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @PCI_SLOT(i32 %35)
  %37 = icmp sge i32 %36, 16
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %30
  %39 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %29
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38, %27
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
