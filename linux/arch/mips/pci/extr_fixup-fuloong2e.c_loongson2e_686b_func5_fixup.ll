; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-fuloong2e.c_loongson2e_686b_func5_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-fuloong2e.c_loongson2e_686b_func5_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @loongson2e_686b_func5_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loongson2e_686b_func5_fixup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = load i32, i32* @PCI_COMMAND, align 4
  %7 = load i32, i32* @PCI_COMMAND_IO, align 4
  %8 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @pci_write_config_byte(%struct.pci_dev* %5, i32 %6, i32 %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = call i32 @pci_read_config_dword(%struct.pci_dev* %13, i32 4, i32* %3)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, 1
  %18 = call i32 @pci_write_config_dword(%struct.pci_dev* %15, i32 4, i32 %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @pci_write_config_byte(%struct.pci_dev* %19, i32 60, i32 9)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @pci_read_config_byte(%struct.pci_dev* %21, i32 8, i8* %4)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @pci_write_config_byte(%struct.pci_dev* %23, i32 65, i32 204)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = call i32 @pci_write_config_byte(%struct.pci_dev* %25, i32 66, i32 32)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = call i32 @pci_write_config_word(%struct.pci_dev* %27, i32 44, i32 4101)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = call i32 @pci_write_config_word(%struct.pci_dev* %29, i32 46, i32 18192)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = call i32 @pci_read_config_dword(%struct.pci_dev* %31, i32 44, i32* %3)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_write_config_byte(%struct.pci_dev* %33, i32 66, i32 0)
  ret void
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
