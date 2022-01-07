; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_rmv_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_rmv_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_dev = type { i32, i32*, i64, i32 }
%struct.pci_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.pci_dev = type { i64 }
%struct.eeh_rmv_data = type { i32, i32 }

@PCI_HEADER_TYPE_BRIDGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"EEH: Removing %s without EEH sensitive driver\0A\00", align 1
@EEH_DEV_DISCONNECTED = common dso_local global i32 0, align 4
@IODA_INVALID_PE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeh_dev*, i8*)* @eeh_rmv_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeh_rmv_device(%struct.eeh_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.eeh_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_driver*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.eeh_rmv_data*, align 8
  store %struct.eeh_dev* %0, %struct.eeh_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %9 = call %struct.pci_dev* @eeh_dev_to_pci_dev(%struct.eeh_dev* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.eeh_rmv_data*
  store %struct.eeh_rmv_data* %11, %struct.eeh_rmv_data** %7, align 8
  %12 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %13 = call i32 @eeh_edev_actionable(%struct.eeh_dev* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCI_HEADER_TYPE_BRIDGE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  br label %92

22:                                               ; preds = %15
  %23 = load %struct.eeh_rmv_data*, %struct.eeh_rmv_data** %7, align 8
  %24 = icmp ne %struct.eeh_rmv_data* %23, null
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %27 = call %struct.pci_driver* @eeh_pcid_get(%struct.pci_dev* %26)
  store %struct.pci_driver* %27, %struct.pci_driver** %5, align 8
  %28 = load %struct.pci_driver*, %struct.pci_driver** %5, align 8
  %29 = icmp ne %struct.pci_driver* %28, null
  br i1 %29, label %30, label %55

30:                                               ; preds = %25
  %31 = load %struct.pci_driver*, %struct.pci_driver** %5, align 8
  %32 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.pci_driver*, %struct.pci_driver** %5, align 8
  %37 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.pci_driver*, %struct.pci_driver** %5, align 8
  %44 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %51 = call i32 @eeh_pcid_put(%struct.pci_dev* %50)
  br label %92

52:                                               ; preds = %42, %35, %30
  %53 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %54 = call i32 @eeh_pcid_put(%struct.pci_dev* %53)
  br label %55

55:                                               ; preds = %52, %25
  br label %56

56:                                               ; preds = %55, %22
  %57 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %58 = call i32 @pci_name(%struct.pci_dev* %57)
  %59 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EEH_DEV_DISCONNECTED, align 4
  %61 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %62 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.eeh_rmv_data*, %struct.eeh_rmv_data** %7, align 8
  %66 = icmp ne %struct.eeh_rmv_data* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load %struct.eeh_rmv_data*, %struct.eeh_rmv_data** %7, align 8
  %69 = getelementptr inbounds %struct.eeh_rmv_data, %struct.eeh_rmv_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %56
  %73 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %74 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.eeh_rmv_data*, %struct.eeh_rmv_data** %7, align 8
  %79 = icmp ne %struct.eeh_rmv_data* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %82 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %81, i32 0, i32 0
  %83 = load %struct.eeh_rmv_data*, %struct.eeh_rmv_data** %7, align 8
  %84 = getelementptr inbounds %struct.eeh_rmv_data, %struct.eeh_rmv_data* %83, i32 0, i32 0
  %85 = call i32 @list_add(i32* %82, i32* %84)
  br label %86

86:                                               ; preds = %80, %77
  br label %92

87:                                               ; preds = %72
  %88 = call i32 (...) @pci_lock_rescan_remove()
  %89 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %90 = call i32 @pci_stop_and_remove_bus_device(%struct.pci_dev* %89)
  %91 = call i32 (...) @pci_unlock_rescan_remove()
  br label %92

92:                                               ; preds = %21, %49, %87, %86
  ret void
}

declare dso_local %struct.pci_dev* @eeh_dev_to_pci_dev(%struct.eeh_dev*) #1

declare dso_local i32 @eeh_edev_actionable(%struct.eeh_dev*) #1

declare dso_local %struct.pci_driver* @eeh_pcid_get(%struct.pci_dev*) #1

declare dso_local i32 @eeh_pcid_put(%struct.pci_dev*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_stop_and_remove_bus_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
