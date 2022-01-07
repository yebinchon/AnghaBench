; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_msi.c_rtas_hack_32bit_msi_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_msi.c_rtas_hack_32bit_msi_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }

@.str = private unnamed_addr constant [62 x i8] c"rtas_msi: No 32 bit MSI firmware support, forcing 32 bit MSI\0A\00", align 1
@PCI_MSI_ADDRESS_HI = common dso_local global i64 0, align 8
@PCI_MSI_ADDRESS_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @rtas_hack_32bit_msi_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtas_hack_32bit_msi_gen2(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 1
  %7 = call i32 @dev_info(i32* %6, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PCI_MSI_ADDRESS_HI, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @pci_read_config_dword(%struct.pci_dev* %8, i64 %13, i32* %3)
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 16
  %17 = shl i32 %16, 4
  %18 = or i32 -65536, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCI_MSI_ADDRESS_LO, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pci_write_config_dword(%struct.pci_dev* %19, i64 %24, i32 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCI_MSI_ADDRESS_HI, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @pci_write_config_dword(%struct.pci_dev* %27, i64 %32, i32 0)
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
