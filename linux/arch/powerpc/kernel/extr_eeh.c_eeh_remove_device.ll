; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.eeh_dev = type { i32, i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"EEH: Removing device\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"EEH: Device not referenced!\0A\00", align 1
@EEH_PE_KEEP = common dso_local global i32 0, align 4
@EEH_DEV_DISCONNECTED = common dso_local global i32 0, align 4
@EEH_DEV_NO_HANDLER = common dso_local global i32 0, align 4
@EEH_DEV_SYSFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeh_remove_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.eeh_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = icmp ne %struct.pci_dev* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = call i32 (...) @eeh_enabled()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %1
  br label %74

10:                                               ; preds = %6
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = call %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev* %11)
  store %struct.eeh_dev* %12, %struct.eeh_dev** %3, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 @dev_dbg(%struct.TYPE_6__* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %17 = icmp ne %struct.eeh_dev* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %20 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %25 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23, %18, %10
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_dbg(%struct.TYPE_6__* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %74

32:                                               ; preds = %23
  %33 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %34 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %36 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %42 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EEH_PE_KEEP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %32
  %50 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %51 = call i32 @eeh_rmv_from_parent_pe(%struct.eeh_dev* %50)
  br label %58

52:                                               ; preds = %32
  %53 = load i32, i32* @EEH_DEV_DISCONNECTED, align 4
  %54 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %55 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32, i32* @EEH_DEV_NO_HANDLER, align 4
  %60 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %61 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %65 = call i32 @eeh_addr_cache_rmv_dev(%struct.pci_dev* %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %67 = call i32 @eeh_sysfs_remove_device(%struct.pci_dev* %66)
  %68 = load i32, i32* @EEH_DEV_SYSFS, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %71 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %58, %28, %9
  ret void
}

declare dso_local i32 @eeh_enabled(...) #1

declare dso_local %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @eeh_rmv_from_parent_pe(%struct.eeh_dev*) #1

declare dso_local i32 @eeh_addr_cache_rmv_dev(%struct.pci_dev*) #1

declare dso_local i32 @eeh_sysfs_remove_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
