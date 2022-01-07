; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_sis-agp.c_agp_sis_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_sis-agp.c_agp_sis_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.agp_bridge_data = type { i32, i64, %struct.pci_dev*, i32* }

@PCI_CAP_ID_AGP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SiS chipset [%04x/%04x]\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@sis_driver = common dso_local global i32 0, align 4
@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @agp_sis_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_sis_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.agp_bridge_data*, align 8
  %7 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load i32, i32* @PCI_CAP_ID_AGP, align 4
  %10 = call i64 @pci_find_capability(%struct.pci_dev* %8, i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_info(i32* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = call %struct.agp_bridge_data* (...) @agp_alloc_bridge()
  store %struct.agp_bridge_data* %26, %struct.agp_bridge_data** %6, align 8
  %27 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %28 = icmp ne %struct.agp_bridge_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %16
  %33 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %34 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %33, i32 0, i32 3
  store i32* @sis_driver, i32** %34, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %37 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %36, i32 0, i32 2
  store %struct.pci_dev* %35, %struct.pci_dev** %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %40 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %42 = call i32 @get_agp_version(%struct.agp_bridge_data* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %45 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCI_AGP_STATUS, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %50 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %49, i32 0, i32 0
  %51 = call i32 @pci_read_config_dword(%struct.pci_dev* %43, i64 %48, i32* %50)
  %52 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %53 = call i32 @sis_get_driver(%struct.agp_bridge_data* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %56 = call i32 @pci_set_drvdata(%struct.pci_dev* %54, %struct.agp_bridge_data* %55)
  %57 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %58 = call i32 @agp_add_bridge(%struct.agp_bridge_data* %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %32, %29, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local %struct.agp_bridge_data* @agp_alloc_bridge(...) #1

declare dso_local i32 @get_agp_version(%struct.agp_bridge_data*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @sis_get_driver(%struct.agp_bridge_data*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.agp_bridge_data*) #1

declare dso_local i32 @agp_add_bridge(%struct.agp_bridge_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
