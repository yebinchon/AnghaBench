; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-malta.c_malta_piix_func3_base_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-malta.c_malta_piix_func3_base_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PIIX4_FUNC3_PMBA = common dso_local global i32 0, align 4
@PIIX4_FUNC3_PMREGMISC = common dso_local global i32 0, align 4
@PIIX4_FUNC3_PMREGMISC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @malta_piix_func3_base_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malta_piix_func3_base_fixup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = load i32, i32* @PIIX4_FUNC3_PMBA, align 4
  %5 = call i32 @pci_write_config_word(%struct.pci_dev* %3, i32 %4, i32 4096)
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = load i32, i32* @PIIX4_FUNC3_PMREGMISC, align 4
  %8 = load i32, i32* @PIIX4_FUNC3_PMREGMISC_EN, align 4
  %9 = call i32 @pci_write_config_byte(%struct.pci_dev* %6, i32 %7, i32 %8)
  ret void
}

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
