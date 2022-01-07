; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_bios32.c_pci_fixup_83c553.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_bios32.c_pci_fixup_83c553.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_SPACE_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_fixup_83c553 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_fixup_83c553(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %5 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_MEMORY, align 4
  %6 = call i32 @pci_write_config_dword(%struct.pci_dev* %3, i32 %4, i32 %5)
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = load i32, i32* @PCI_COMMAND, align 4
  %9 = load i32, i32* @PCI_COMMAND_IO, align 4
  %10 = call i32 @pci_write_config_word(%struct.pci_dev* %7, i32 %8, i32 %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %16
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = call i32 @pci_write_config_byte(%struct.pci_dev* %31, i32 72, i32 255)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_write_config_byte(%struct.pci_dev* %33, i32 66, i32 1)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pci_write_config_byte(%struct.pci_dev* %35, i32 64, i32 34)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = call i32 @pci_write_config_byte(%struct.pci_dev* %37, i32 131, i32 2)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_write_config_byte(%struct.pci_dev* %39, i32 128, i32 17)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = call i32 @pci_write_config_byte(%struct.pci_dev* %41, i32 129, i32 0)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = call i32 @pci_write_config_word(%struct.pci_dev* %43, i32 68, i32 45056)
  %45 = call i32 @outb(i32 8, i32 1233)
  ret void
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
