; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_quirk_uli5229.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_quirk_uli5229.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i16 0, align 2
@PCI_COMMAND_MASTER = common dso_local global i16 0, align 2
@PCI_COMMAND_IO = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_uli5229 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_uli5229(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i16, align 2
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = call i32 (...) @is_quirk_valid()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %28

7:                                                ; preds = %1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = load i32, i32* @PCI_COMMAND, align 4
  %10 = load i16, i16* @PCI_COMMAND_INTX_DISABLE, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @PCI_COMMAND_MASTER, align 2
  %13 = zext i16 %12 to i32
  %14 = or i32 %11, %13
  %15 = load i16, i16* @PCI_COMMAND_IO, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %14, %16
  %18 = trunc i32 %17 to i16
  %19 = call i32 @pci_write_config_word(%struct.pci_dev* %8, i32 %9, i16 zeroext %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = call i32 @pci_read_config_word(%struct.pci_dev* %20, i32 74, i16* %3)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = load i16, i16* %3, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %24, 4096
  %26 = trunc i32 %25 to i16
  %27 = call i32 @pci_write_config_word(%struct.pci_dev* %22, i32 74, i16 zeroext %26)
  br label %28

28:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @is_quirk_valid(...) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
