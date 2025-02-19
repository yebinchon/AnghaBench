; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_pcibios_bus_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_pcibios_bus_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_dn = type { i32 }

@EEH_FORCE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"EEH: Setting up device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnv_pcibios_bus_add_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dn*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.pci_dn* @pci_get_pdn(%struct.pci_dev* %4)
  store %struct.pci_dn* %5, %struct.pci_dn** %3, align 8
  %6 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %7 = icmp ne %struct.pci_dn* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @EEH_FORCE_DISABLED, align 4
  %10 = call i64 @eeh_has_flag(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  br label %23

13:                                               ; preds = %8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %18 = call i32 @eeh_add_device_early(%struct.pci_dn* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @eeh_add_device_late(%struct.pci_dev* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @eeh_sysfs_add_device(%struct.pci_dev* %21)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.pci_dn* @pci_get_pdn(%struct.pci_dev*) #1

declare dso_local i64 @eeh_has_flag(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @eeh_add_device_early(%struct.pci_dn*) #1

declare dso_local i32 @eeh_add_device_late(%struct.pci_dev*) #1

declare dso_local i32 @eeh_sysfs_add_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
