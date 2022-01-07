; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-imx6q.c_ventana_pciesw_early_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-imx6q.c_ventana_pciesw_early_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"gw,ventana\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ventana_pciesw_early_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ventana_pciesw_early_fixup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = call i32 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %29

7:                                                ; preds = %1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %29

13:                                               ; preds = %7
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = call i32 @pci_read_config_dword(%struct.pci_dev* %14, i32 1580, i32* %3)
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, 43688
  store i32 %17, i32* %3, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @pci_write_config_dword(%struct.pci_dev* %18, i32 1580, i32 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @pci_read_config_dword(%struct.pci_dev* %21, i32 1604, i32* %3)
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, 254
  store i32 %24, i32* %3, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @pci_write_config_dword(%struct.pci_dev* %25, i32 1604, i32 %26)
  %28 = call i32 @msleep(i32 100)
  br label %29

29:                                               ; preds = %13, %12, %6
  ret void
}

declare dso_local i32 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
