; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_sysfs.c_eeh_sysfs_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_sysfs.c_eeh_sysfs_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.eeh_dev = type { i32 }

@EEH_DEV_SYSFS = common dso_local global i32 0, align 4
@dev_attr_eeh_mode = common dso_local global i32 0, align 4
@dev_attr_eeh_pe_config_addr = common dso_local global i32 0, align 4
@dev_attr_eeh_pe_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"EEH: Unable to create sysfs entries\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeh_sysfs_add_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.eeh_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev* %5)
  store %struct.eeh_dev* %6, %struct.eeh_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = call i32 (...) @eeh_enabled()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %63

10:                                               ; preds = %1
  %11 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %12 = icmp ne %struct.eeh_dev* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %15 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EEH_DEV_SYSFS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %63

21:                                               ; preds = %13, %10
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i64 @device_create_file(i32* %23, i32* @dev_attr_eeh_mode)
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i64 @device_create_file(i32* %30, i32* @dev_attr_eeh_pe_config_addr)
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i64 @device_create_file(i32* %37, i32* @dev_attr_eeh_pe_state)
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = call i64 @eeh_notify_resume_add(%struct.pci_dev* %43)
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %21
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %63

53:                                               ; preds = %21
  %54 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %55 = icmp ne %struct.eeh_dev* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @EEH_DEV_SYSFS, align 4
  %58 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %59 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %53
  br label %63

63:                                               ; preds = %9, %20, %62, %51
  ret void
}

declare dso_local %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev*) #1

declare dso_local i32 @eeh_enabled(...) #1

declare dso_local i64 @device_create_file(i32*, i32*) #1

declare dso_local i64 @eeh_notify_resume_add(%struct.pci_dev*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
