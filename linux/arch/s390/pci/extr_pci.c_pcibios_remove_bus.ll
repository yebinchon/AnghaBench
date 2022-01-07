; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_pcibios_remove_bus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_pcibios_remove_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.zpci_dev = type { i32, i32 }

@zpci_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"rem fid:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcibios_remove_bus(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.zpci_dev*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %4 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %5 = call %struct.zpci_dev* @get_zdev_by_bus(%struct.pci_bus* %4)
  store %struct.zpci_dev* %5, %struct.zpci_dev** %3, align 8
  %6 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %7 = call i32 @zpci_exit_slot(%struct.zpci_dev* %6)
  %8 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %9 = call i32 @zpci_cleanup_bus_resources(%struct.zpci_dev* %8)
  %10 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %11 = call i32 @zpci_destroy_iommu(%struct.zpci_dev* %10)
  %12 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %13 = call i32 @zpci_free_domain(%struct.zpci_dev* %12)
  %14 = call i32 @spin_lock(i32* @zpci_list_lock)
  %15 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %15, i32 0, i32 1
  %17 = call i32 @list_del(i32* %16)
  %18 = call i32 @spin_unlock(i32* @zpci_list_lock)
  %19 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @zpci_dbg(i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %24 = call i32 @kfree(%struct.zpci_dev* %23)
  ret void
}

declare dso_local %struct.zpci_dev* @get_zdev_by_bus(%struct.pci_bus*) #1

declare dso_local i32 @zpci_exit_slot(%struct.zpci_dev*) #1

declare dso_local i32 @zpci_cleanup_bus_resources(%struct.zpci_dev*) #1

declare dso_local i32 @zpci_destroy_iommu(%struct.zpci_dev*) #1

declare dso_local i32 @zpci_free_domain(%struct.zpci_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @zpci_dbg(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.zpci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
