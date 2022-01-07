; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_sysfs.c_eeh_sysfs_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_sysfs.c_eeh_sysfs_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.eeh_dev = type { i32 }

@EEH_DEV_SYSFS = common dso_local global i32 0, align 4
@dev_attr_eeh_mode = common dso_local global i32 0, align 4
@dev_attr_eeh_pe_config_addr = common dso_local global i32 0, align 4
@dev_attr_eeh_pe_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeh_sysfs_remove_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.eeh_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev* %4)
  store %struct.eeh_dev* %5, %struct.eeh_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %1
  %13 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %14 = icmp ne %struct.eeh_dev* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* @EEH_DEV_SYSFS, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %19 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %12
  br label %44

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @device_remove_file(%struct.TYPE_4__* %25, i32* @dev_attr_eeh_mode)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @device_remove_file(%struct.TYPE_4__* %28, i32* @dev_attr_eeh_pe_config_addr)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 @device_remove_file(%struct.TYPE_4__* %31, i32* @dev_attr_eeh_pe_state)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @eeh_notify_resume_remove(%struct.pci_dev* %33)
  %35 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %36 = icmp ne %struct.eeh_dev* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load i32, i32* @EEH_DEV_SYSFS, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %41 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %22, %37, %23
  ret void
}

declare dso_local %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev*) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @eeh_notify_resume_remove(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
