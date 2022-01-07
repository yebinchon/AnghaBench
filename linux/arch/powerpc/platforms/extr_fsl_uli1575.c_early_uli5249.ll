; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_early_uli5249.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_early_uli5249.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_CLASS_PROG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @early_uli5249 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @early_uli5249(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = call i32 (...) @is_quirk_valid()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %30

7:                                                ; preds = %1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = load i32, i32* @PCI_COMMAND, align 4
  %10 = load i32, i32* @PCI_COMMAND_IO, align 4
  %11 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @pci_write_config_word(%struct.pci_dev* %8, i32 %9, i32 %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = call i32 @pci_read_config_byte(%struct.pci_dev* %16, i32 124, i8* %3)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i32 @pci_write_config_byte(%struct.pci_dev* %18, i32 124, i8 zeroext -128)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = load i32, i32* @PCI_CLASS_PROG, align 4
  %22 = call i32 @pci_write_config_byte(%struct.pci_dev* %20, i32 %21, i8 zeroext 1)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = load i8, i8* %3, align 1
  %29 = call i32 @pci_write_config_byte(%struct.pci_dev* %27, i32 124, i8 zeroext %28)
  br label %30

30:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @is_quirk_valid(...) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
