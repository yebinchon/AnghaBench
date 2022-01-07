; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-malta.c_malta_piix_func1_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-malta.c_malta_piix_func1_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PIIX4_FUNC1_IDETIM_PRIMARY_HI = common dso_local global i32 0, align 4
@PIIX4_FUNC1_IDETIM_PRIMARY_HI_IDE_DECODE_EN = common dso_local global i8 0, align 1
@PIIX4_FUNC1_IDETIM_SECONDARY_HI = common dso_local global i32 0, align 4
@PIIX4_FUNC1_IDETIM_SECONDARY_HI_IDE_DECODE_EN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @malta_piix_func1_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malta_piix_func1_fixup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @PCI_SLOT(i32 %6)
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = load i32, i32* @PIIX4_FUNC1_IDETIM_PRIMARY_HI, align 4
  %12 = call i32 @pci_read_config_byte(%struct.pci_dev* %10, i32 %11, i8* %3)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = load i32, i32* @PIIX4_FUNC1_IDETIM_PRIMARY_HI, align 4
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @PIIX4_FUNC1_IDETIM_PRIMARY_HI_IDE_DECODE_EN, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = trunc i32 %19 to i8
  %21 = call i32 @pci_write_config_byte(%struct.pci_dev* %13, i32 %14, i8 zeroext %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = load i32, i32* @PIIX4_FUNC1_IDETIM_SECONDARY_HI, align 4
  %24 = call i32 @pci_read_config_byte(%struct.pci_dev* %22, i32 %23, i8* %3)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = load i32, i32* @PIIX4_FUNC1_IDETIM_SECONDARY_HI, align 4
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @PIIX4_FUNC1_IDETIM_SECONDARY_HI_IDE_DECODE_EN, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = trunc i32 %31 to i8
  %33 = call i32 @pci_write_config_byte(%struct.pci_dev* %25, i32 %26, i8 zeroext %32)
  br label %34

34:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
