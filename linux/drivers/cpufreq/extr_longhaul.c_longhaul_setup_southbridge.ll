; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longhaul.c_longhaul_setup_southbridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longhaul.c_longhaul_setup_southbridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_VIA = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VIA_8235 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VIA_8237 = common dso_local global i32 0, align 4
@acpi_regs_addr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ACPI I/O at 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @longhaul_setup_southbridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @longhaul_setup_southbridge() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %5 = load i32, i32* @PCI_DEVICE_ID_VIA_8235, align 4
  %6 = call %struct.pci_dev* @pci_get_device(i32 %4, i32 %5, i32* null)
  store %struct.pci_dev* %6, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = icmp eq %struct.pci_dev* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %11 = load i32, i32* @PCI_DEVICE_ID_VIA_8237, align 4
  %12 = call %struct.pci_dev* @pci_get_device(i32 %10, i32 %11, i32* null)
  store %struct.pci_dev* %12, %struct.pci_dev** %2, align 8
  br label %13

13:                                               ; preds = %9, %0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = icmp ne %struct.pci_dev* %14, null
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = call i32 @pci_read_config_byte(%struct.pci_dev* %17, i32 236, i32* %3)
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, -5
  store i32 %20, i32* %3, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pci_write_config_byte(%struct.pci_dev* %21, i32 236, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @pci_read_config_byte(%struct.pci_dev* %24, i32 228, i32* %3)
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, -129
  store i32 %27, i32* %3, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pci_write_config_byte(%struct.pci_dev* %28, i32 228, i32 %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %31, i32 229, i32* %3)
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, 128
  store i32 %34, i32* %3, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @pci_write_config_byte(%struct.pci_dev* %35, i32 229, i32 %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = call i32 @pci_read_config_byte(%struct.pci_dev* %38, i32 129, i32* %3)
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 128
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %16
  %44 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %45 = call i32 @pci_read_config_dword(%struct.pci_dev* %44, i32 136, i32* @acpi_regs_addr)
  %46 = load i32, i32* @acpi_regs_addr, align 4
  %47 = and i32 %46, 65280
  store i32 %47, i32* @acpi_regs_addr, align 4
  %48 = load i32, i32* @acpi_regs_addr, align 4
  %49 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %16
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = call i32 @pci_dev_put(%struct.pci_dev* %51)
  store i32 1, i32* %1, align 4
  br label %54

53:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
