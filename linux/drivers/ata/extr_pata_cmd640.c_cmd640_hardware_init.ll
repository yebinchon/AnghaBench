; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_cmd640.c_cmd640_hardware_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_cmd640.c_cmd640_hardware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@CMDTIM = common dso_local global i32 0, align 4
@BRST = common dso_local global i32 0, align 4
@CNTRL = common dso_local global i32 0, align 4
@ARTIM23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cmd640_hardware_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd640_hardware_init(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call i32 @pci_write_config_byte(%struct.pci_dev* %4, i32 91, i32 0)
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = load i32, i32* @CMDTIM, align 4
  %8 = call i32 @pci_write_config_byte(%struct.pci_dev* %6, i32 %7, i32 0)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = load i32, i32* @BRST, align 4
  %11 = call i32 @pci_write_config_byte(%struct.pci_dev* %9, i32 %10, i32 64)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load i32, i32* @CNTRL, align 4
  %14 = call i32 @pci_read_config_byte(%struct.pci_dev* %12, i32 %13, i32* %3)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = load i32, i32* @CNTRL, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 192
  %19 = call i32 @pci_write_config_byte(%struct.pci_dev* %15, i32 %16, i32 %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = load i32, i32* @ARTIM23, align 4
  %22 = call i32 @pci_read_config_byte(%struct.pci_dev* %20, i32 %21, i32* %3)
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, 12
  store i32 %24, i32* %3, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = load i32, i32* @ARTIM23, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @pci_write_config_byte(%struct.pci_dev* %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
