; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_fixups-rts7751r2d.c_pci_fixup_pcic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_fixups-rts7751r2d.c_pci_fixup_pcic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_channel = type { i32 }

@SH7751_BCR1 = common dso_local global i32 0, align 4
@SH4_PCIBCR1 = common dso_local global i32 0, align 4
@SH4_PCIINTM = common dso_local global i32 0, align 4
@SH4_PCIAINTM = common dso_local global i32 0, align 4
@SH7751_PCICONF1 = common dso_local global i32 0, align 4
@SH7751_PCICONF4 = common dso_local global i32 0, align 4
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
  %14 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %15 = load i32, i32* @SH4_PCIINTM, align 4
  %16 = call i32 @pci_write_reg(%struct.pci_channel* %14, i32 50175, i32 %15)
  %17 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %18 = load i32, i32* @SH4_PCIAINTM, align 4
  %19 = call i32 @pci_write_reg(%struct.pci_channel* %17, i32 14351, i32 %18)
  %20 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %21 = load i32, i32* @SH7751_PCICONF1, align 4
  %22 = call i32 @pci_write_reg(%struct.pci_channel* %20, i32 -74448825, i32 %21)
  %23 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %24 = load i32, i32* @SH7751_PCICONF4, align 4
  %25 = call i32 @pci_write_reg(%struct.pci_channel* %23, i32 -1426063359, i32 %24)
  %26 = load i32, i32* @SH7751_MCR, align 4
  %27 = call i64 @__raw_readl(i32 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @PCIMCR_MRSET_OFF, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* @PCIMCR_RFSH_OFF, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %4, align 8
  %33 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %34 = load i64, i64* %4, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @SH4_PCIMCR, align 4
  %37 = call i32 @pci_write_reg(%struct.pci_channel* %33, i32 %35, i32 %36)
  %38 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %39 = load i32, i32* @SH7751_PCICONF5, align 4
  %40 = call i32 @pci_write_reg(%struct.pci_channel* %38, i32 201326592, i32 %39)
  %41 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %42 = load i32, i32* @SH7751_PCICONF6, align 4
  %43 = call i32 @pci_write_reg(%struct.pci_channel* %41, i32 -805306368, i32 %42)
  %44 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %45 = load i32, i32* @SH4_PCILAR0, align 4
  %46 = call i32 @pci_write_reg(%struct.pci_channel* %44, i32 201326592, i32 %45)
  %47 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %48 = load i32, i32* @SH4_PCILAR1, align 4
  %49 = call i32 @pci_write_reg(%struct.pci_channel* %47, i32 0, i32 %48)
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
