; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_fixups-landisk.c_pci_fixup_pcic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_fixups-landisk.c_pci_fixup_pcic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_channel = type { i32 }

@SH7751_BCR1 = common dso_local global i32 0, align 4
@SH4_PCIBCR1 = common dso_local global i32 0, align 4
@SH7751_MCR = common dso_local global i32 0, align 4
@PCIMCR_MRSET_OFF = common dso_local global i64 0, align 8
@PCIMCR_RFSH_OFF = common dso_local global i64 0, align 8
@SH4_PCIMCR = common dso_local global i32 0, align 4
@SH7751_PCICONF5 = common dso_local global i32 0, align 4
@SH7751_PCICONF6 = common dso_local global i32 0, align 4
@SH4_PCILAR0 = common dso_local global i32 0, align 4
@SH4_PCILAR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_fixup_pcic(%struct.pci_channel* %0) #0 {
  %2 = alloca %struct.pci_channel*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.pci_channel* %0, %struct.pci_channel** %2, align 8
  %5 = load i32, i32* @SH7751_BCR1, align 4
  %6 = call i64 @__raw_readl(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = or i64 %7, 1074266112
  store i64 %8, i64* %3, align 8
  %9 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @SH4_PCIBCR1, align 4
  %13 = call i32 @pci_write_reg(%struct.pci_channel* %9, i32 %11, i32 %12)
  %14 = load i32, i32* @SH7751_MCR, align 4
  %15 = call i64 @__raw_readl(i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @PCIMCR_MRSET_OFF, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @PCIMCR_RFSH_OFF, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %4, align 8
  %21 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %22 = load i64, i64* %4, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @SH4_PCIMCR, align 4
  %25 = call i32 @pci_write_reg(%struct.pci_channel* %21, i32 %23, i32 %24)
  %26 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %27 = load i32, i32* @SH7751_PCICONF5, align 4
  %28 = call i32 @pci_write_reg(%struct.pci_channel* %26, i32 201326592, i32 %27)
  %29 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %30 = load i32, i32* @SH7751_PCICONF6, align 4
  %31 = call i32 @pci_write_reg(%struct.pci_channel* %29, i32 -805306368, i32 %30)
  %32 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %33 = load i32, i32* @SH4_PCILAR0, align 4
  %34 = call i32 @pci_write_reg(%struct.pci_channel* %32, i32 201326592, i32 %33)
  %35 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %36 = load i32, i32* @SH4_PCILAR1, align 4
  %37 = call i32 @pci_write_reg(%struct.pci_channel* %35, i32 0, i32 %36)
  ret i32 0
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @pci_write_reg(%struct.pci_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
