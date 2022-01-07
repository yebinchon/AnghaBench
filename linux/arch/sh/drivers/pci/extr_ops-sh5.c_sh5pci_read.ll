; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_ops-sh5.c_sh5pci_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_ops-sh5.c_sh5pci_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PAR = common dso_local global i32 0, align 4
@PDR = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @sh5pci_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh5pci_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* @PAR, align 4
  %12 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @CONFIG_CMD(%struct.pci_bus* %12, i32 %13, i32 %14)
  %16 = call i32 @SH5PCI_WRITE(i32 %11, i32 %15)
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %36 [
    i32 1, label %18
    i32 2, label %25
    i32 4, label %32
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* @PDR, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 3
  %22 = add nsw i32 %19, %21
  %23 = call i32 @SH5PCI_READ_BYTE(i32 %22)
  %24 = load i32*, i32** %10, align 8
  store i32 %23, i32* %24, align 4
  br label %36

25:                                               ; preds = %5
  %26 = load i32, i32* @PDR, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 2
  %29 = add nsw i32 %26, %28
  %30 = call i32 @SH5PCI_READ_SHORT(i32 %29)
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  br label %36

32:                                               ; preds = %5
  %33 = load i32, i32* @PDR, align 4
  %34 = call i32 @SH5PCI_READ(i32 %33)
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %5, %32, %25, %18
  %37 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %37
}

declare dso_local i32 @SH5PCI_WRITE(i32, i32) #1

declare dso_local i32 @CONFIG_CMD(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @SH5PCI_READ_BYTE(i32) #1

declare dso_local i32 @SH5PCI_READ_SHORT(i32) #1

declare dso_local i32 @SH5PCI_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
