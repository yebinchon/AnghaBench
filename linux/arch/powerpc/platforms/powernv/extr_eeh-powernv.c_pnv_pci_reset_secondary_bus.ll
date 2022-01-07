; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_pci_reset_secondary_bus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_pci_reset_secondary_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_controller = type { i32 }

@EEH_RESET_HOT = common dso_local global i32 0, align 4
@EEH_RESET_DEACTIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnv_pci_reset_secondary_bus(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_controller*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @pci_is_root_bus(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pci_controller* @pci_bus_to_host(i32 %12)
  store %struct.pci_controller* %13, %struct.pci_controller** %3, align 8
  %14 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %15 = load i32, i32* @EEH_RESET_HOT, align 4
  %16 = call i32 @pnv_eeh_root_reset(%struct.pci_controller* %14, i32 %15)
  %17 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %18 = load i32, i32* @EEH_RESET_DEACTIVATE, align 4
  %19 = call i32 @pnv_eeh_root_reset(%struct.pci_controller* %17, i32 %18)
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = load i32, i32* @EEH_RESET_HOT, align 4
  %23 = call i32 @pnv_eeh_bridge_reset(%struct.pci_dev* %21, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = load i32, i32* @EEH_RESET_DEACTIVATE, align 4
  %26 = call i32 @pnv_eeh_bridge_reset(%struct.pci_dev* %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %9
  ret void
}

declare dso_local i64 @pci_is_root_bus(i32) #1

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local i32 @pnv_eeh_root_reset(%struct.pci_controller*, i32) #1

declare dso_local i32 @pnv_eeh_bridge_reset(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
