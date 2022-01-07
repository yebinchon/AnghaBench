; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-cobalt.c_qube_raq_via_bmIDE_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-cobalt.c_qube_raq_via_bmIDE_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_FAST_BACK = common dso_local global i16 0, align 2
@PCI_COMMAND_MASTER = common dso_local global i16 0, align 2
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @qube_raq_via_bmIDE_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qube_raq_via_bmIDE_fixup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = load i32, i32* @PCI_COMMAND, align 4
  %7 = call i32 @pci_read_config_word(%struct.pci_dev* %5, i32 %6, i16* %3)
  %8 = load i16, i16* @PCI_COMMAND_FAST_BACK, align 2
  %9 = zext i16 %8 to i32
  %10 = load i16, i16* @PCI_COMMAND_MASTER, align 2
  %11 = zext i16 %10 to i32
  %12 = or i32 %9, %11
  %13 = load i16, i16* %3, align 2
  %14 = zext i16 %13 to i32
  %15 = or i32 %14, %12
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %3, align 2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load i32, i32* @PCI_COMMAND, align 4
  %19 = load i16, i16* %3, align 2
  %20 = call i32 @pci_write_config_word(%struct.pci_dev* %17, i32 %18, i16 zeroext %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @pci_write_config_byte(%struct.pci_dev* %21, i32 64, i32 11)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %25 = call i32 @pci_read_config_byte(%struct.pci_dev* %23, i32 %24, i8* %4)
  %26 = load i8, i8* %4, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 64
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %32 = call i32 @pci_write_config_byte(%struct.pci_dev* %30, i32 %31, i32 64)
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %36 = call i32 @pci_write_config_byte(%struct.pci_dev* %34, i32 %35, i32 8)
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
