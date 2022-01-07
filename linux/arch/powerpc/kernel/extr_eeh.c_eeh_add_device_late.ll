; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_add_device_late.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_add_device_late.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.pci_dn*, i32*)* }
%struct.pci_dn = type { i32 }
%struct.pci_dev = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.eeh_dev* }
%struct.eeh_dev = type { %struct.pci_dev*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Adding device\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Device already referenced!\0A\00", align 1
@EEH_DEV_SYSFS = common dso_local global i32 0, align 4
@EEH_DEV_NO_HANDLER = common dso_local global i32 0, align 4
@EEH_PROBE_MODE_DEV = common dso_local global i32 0, align 4
@eeh_ops = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeh_add_device_late(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dn*, align 8
  %4 = alloca %struct.eeh_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = icmp ne %struct.pci_dev* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %82

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.pci_dn* @pci_get_pdn_by_devfn(i32 %11, i32 %14)
  store %struct.pci_dn* %15, %struct.pci_dn** %3, align 8
  %16 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %17 = call %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn* %16)
  store %struct.eeh_dev* %17, %struct.eeh_dev** %4, align 8
  %18 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %19 = call i32 @eeh_edev_dbg(%struct.eeh_dev* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %21 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %20, i32 0, i32 0
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = icmp eq %struct.pci_dev* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %27 = call i32 @eeh_edev_dbg(%struct.eeh_dev* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %82

28:                                               ; preds = %8
  %29 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %30 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %29, i32 0, i32 0
  %31 = load %struct.pci_dev*, %struct.pci_dev** %30, align 8
  %32 = icmp ne %struct.pci_dev* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %35 = call i32 @eeh_rmv_from_parent_pe(%struct.eeh_dev* %34)
  %36 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %37 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %36, i32 0, i32 0
  %38 = load %struct.pci_dev*, %struct.pci_dev** %37, align 8
  %39 = call i32 @eeh_addr_cache_rmv_dev(%struct.pci_dev* %38)
  %40 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %41 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %40, i32 0, i32 0
  %42 = load %struct.pci_dev*, %struct.pci_dev** %41, align 8
  %43 = call i32 @eeh_sysfs_remove_device(%struct.pci_dev* %42)
  %44 = load i32, i32* @EEH_DEV_SYSFS, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %47 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @EEH_DEV_NO_HANDLER, align 4
  %51 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %52 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %56 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %55, i32 0, i32 0
  store %struct.pci_dev* null, %struct.pci_dev** %56, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store %struct.eeh_dev* null, %struct.eeh_dev** %60, align 8
  br label %61

61:                                               ; preds = %33, %28
  %62 = load i32, i32* @EEH_PROBE_MODE_DEV, align 4
  %63 = call i64 @eeh_has_flag(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @eeh_ops, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32 (%struct.pci_dn*, i32*)*, i32 (%struct.pci_dn*, i32*)** %67, align 8
  %69 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %70 = call i32 %68(%struct.pci_dn* %69, i32* null)
  br label %71

71:                                               ; preds = %65, %61
  %72 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %73 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %74 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %73, i32 0, i32 0
  store %struct.pci_dev* %72, %struct.pci_dev** %74, align 8
  %75 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %76 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store %struct.eeh_dev* %75, %struct.eeh_dev** %79, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %81 = call i32 @eeh_addr_cache_insert_dev(%struct.pci_dev* %80)
  br label %82

82:                                               ; preds = %71, %25, %7
  ret void
}

declare dso_local %struct.pci_dn* @pci_get_pdn_by_devfn(i32, i32) #1

declare dso_local %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn*) #1

declare dso_local i32 @eeh_edev_dbg(%struct.eeh_dev*, i8*) #1

declare dso_local i32 @eeh_rmv_from_parent_pe(%struct.eeh_dev*) #1

declare dso_local i32 @eeh_addr_cache_rmv_dev(%struct.pci_dev*) #1

declare dso_local i32 @eeh_sysfs_remove_device(%struct.pci_dev*) #1

declare dso_local i64 @eeh_has_flag(i32) #1

declare dso_local i32 @eeh_addr_cache_insert_dev(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
