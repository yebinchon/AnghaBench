; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_sysfs.c_recover_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_sysfs.c_recover_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pci_dev = type { i32 }
%struct.zpci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @recover_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @recover_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.zpci_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.pci_dev* @to_pci_dev(%struct.device* %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %10, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %16 = call %struct.zpci_dev* @to_zpci(%struct.pci_dev* %15)
  store %struct.zpci_dev* %16, %struct.zpci_dev** %11, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call i32 @device_remove_file_self(%struct.device* %17, %struct.device_attribute* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %5, align 8
  br label %49

23:                                               ; preds = %4
  %24 = call i32 (...) @pci_lock_rescan_remove()
  %25 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %26 = call i32 @pci_stop_and_remove_bus_device(%struct.pci_dev* %25)
  %27 = load %struct.zpci_dev*, %struct.zpci_dev** %11, align 8
  %28 = call i32 @zpci_disable_device(%struct.zpci_dev* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %45

32:                                               ; preds = %23
  %33 = load %struct.zpci_dev*, %struct.zpci_dev** %11, align 8
  %34 = call i32 @zpci_enable_device(%struct.zpci_dev* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %45

38:                                               ; preds = %32
  %39 = load %struct.zpci_dev*, %struct.zpci_dev** %11, align 8
  %40 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pci_rescan_bus(i32 %41)
  %43 = call i32 (...) @pci_unlock_rescan_remove()
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %5, align 8
  br label %49

45:                                               ; preds = %37, %31
  %46 = call i32 (...) @pci_unlock_rescan_remove()
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %45, %38, %21
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.zpci_dev* @to_zpci(%struct.pci_dev*) #1

declare dso_local i32 @device_remove_file_self(%struct.device*, %struct.device_attribute*) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_stop_and_remove_bus_device(%struct.pci_dev*) #1

declare dso_local i32 @zpci_disable_device(%struct.zpci_dev*) #1

declare dso_local i32 @zpci_enable_device(%struct.zpci_dev*) #1

declare dso_local i32 @pci_rescan_bus(i32) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
