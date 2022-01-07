; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_disable_and_save_dev_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_disable_and_save_dev_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_dev = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_D0 = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeh_dev*, i8*)* @eeh_disable_and_save_dev_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeh_disable_and_save_dev_state(%struct.eeh_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.eeh_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.eeh_dev* %0, %struct.eeh_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %8 = call %struct.pci_dev* @eeh_dev_to_pci_dev(%struct.eeh_dev* %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.pci_dev*
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = icmp ne %struct.pci_dev* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = icmp eq %struct.pci_dev* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  br label %28

18:                                               ; preds = %13
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = load i32, i32* @PCI_D0, align 4
  %21 = call i32 @pci_set_power_state(%struct.pci_dev* %19, i32 %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = call i32 @pci_save_state(%struct.pci_dev* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = load i32, i32* @PCI_COMMAND, align 4
  %26 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %27 = call i32 @pci_write_config_word(%struct.pci_dev* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.pci_dev* @eeh_dev_to_pci_dev(%struct.eeh_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
