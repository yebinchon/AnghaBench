; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm8668/files-3.18/arch/mips/pci/extr_pci-adm8668.c_adm8668_pci_fixup.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm8668/files-3.18/arch/mips/pci/extr_pci-adm8668.c_adm8668_pci_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"PCI: fixing up ADM8668 controller\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @adm8668_pci_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm8668_pci_fixup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = load i32, i32* @PCI_COMMAND, align 4
  %12 = load i32, i32* @PCI_COMMAND_IO, align 4
  %13 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @pci_write_config_word(%struct.pci_dev* %10, i32 %11, i32 %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %20 = call i32 @pci_write_config_byte(%struct.pci_dev* %18, i32 %19, i32 4)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %23 = call i32 @pci_write_config_dword(%struct.pci_dev* %21, i32 %22, i32 0)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = load i32, i32* @PCI_BASE_ADDRESS_1, align 4
  %26 = call i32 @pci_write_config_dword(%struct.pci_dev* %24, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
