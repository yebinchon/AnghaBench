; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-virtio-guest.c_pci_virtio_guest_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-virtio-guest.c_pci_virtio_guest_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCI_CONFIG_DATA = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pci_virtio_guest_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_virtio_guest_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
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
  %11 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @pci_virtio_guest_write_config_addr(%struct.pci_bus* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %34 [
    i32 1, label %16
    i32 2, label %23
    i32 4, label %30
  ]

16:                                               ; preds = %5
  %17 = load i32, i32* @PCI_CONFIG_DATA, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 3
  %20 = add nsw i32 %17, %19
  %21 = call i32 @inb(i32 %20)
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  br label %34

23:                                               ; preds = %5
  %24 = load i32, i32* @PCI_CONFIG_DATA, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 2
  %27 = add nsw i32 %24, %26
  %28 = call i32 @inw(i32 %27)
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  br label %34

30:                                               ; preds = %5
  %31 = load i32, i32* @PCI_CONFIG_DATA, align 4
  %32 = call i32 @inl(i32 %31)
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %5, %30, %23, %16
  %35 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %35
}

declare dso_local i32 @pci_virtio_guest_write_config_addr(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
