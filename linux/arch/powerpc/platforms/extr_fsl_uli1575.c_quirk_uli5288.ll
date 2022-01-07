; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_quirk_uli5288.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_quirk_uli5288.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@PCI_CLASS_STORAGE_SATA_AHCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_uli5288 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_uli5288(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = call i32 (...) @is_quirk_valid()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %40

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i32 @pci_read_config_byte(%struct.pci_dev* %9, i32 131, i8* %3)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %13, 128
  %15 = trunc i32 %14 to i8
  %16 = call i32 @pci_write_config_byte(%struct.pci_dev* %11, i32 131, i8 zeroext %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %19 = call i32 @pci_read_config_dword(%struct.pci_dev* %17, i32 %18, i32* %4)
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 255
  %22 = load i32, i32* @PCI_CLASS_STORAGE_SATA_AHCI, align 4
  %23 = shl i32 %22, 8
  %24 = or i32 %21, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @pci_write_config_dword(%struct.pci_dev* %25, i32 %26, i32 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = load i8, i8* %3, align 1
  %31 = call i32 @pci_write_config_byte(%struct.pci_dev* %29, i32 131, i8 zeroext %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = call i32 @pci_read_config_byte(%struct.pci_dev* %32, i32 132, i8* %3)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = load i8, i8* %3, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, -2
  %38 = trunc i32 %37 to i8
  %39 = call i32 @pci_write_config_byte(%struct.pci_dev* %34, i32 132, i8 zeroext %38)
  br label %40

40:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @is_quirk_valid(...) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
