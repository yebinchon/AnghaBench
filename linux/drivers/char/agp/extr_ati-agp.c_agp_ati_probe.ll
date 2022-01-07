; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_ati-agp.c_agp_ati_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_ati-agp.c_agp_ati_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_device_ids = type { i64, i64 }
%struct.pci_dev = type { i64, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.agp_bridge_data = type { i32, i64, i32*, %struct.pci_dev* }

@ati_agp_device_ids = common dso_local global %struct.agp_device_ids* null, align 8
@PCI_CAP_ID_AGP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unsupported Ati chipset [%04x/%04x])\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ati_generic_bridge = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Ati %s chipset\0A\00", align 1
@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @agp_ati_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_ati_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.agp_device_ids*, align 8
  %7 = alloca %struct.agp_bridge_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.agp_device_ids*, %struct.agp_device_ids** @ati_agp_device_ids, align 8
  store %struct.agp_device_ids* %10, %struct.agp_device_ids** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = load i32, i32* @PCI_CAP_ID_AGP, align 4
  %13 = call i64 @pci_find_capability(%struct.pci_dev* %11, i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %95

19:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %41, %19
  %21 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %21, i64 %23
  %25 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %32, i64 %34
  %36 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %56

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %20

44:                                               ; preds = %20
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 1
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %52)
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %95

56:                                               ; preds = %39
  %57 = call %struct.agp_bridge_data* (...) @agp_alloc_bridge()
  store %struct.agp_bridge_data* %57, %struct.agp_bridge_data** %7, align 8
  %58 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %59 = icmp ne %struct.agp_bridge_data* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %95

63:                                               ; preds = %56
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %66 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %65, i32 0, i32 3
  store %struct.pci_dev* %64, %struct.pci_dev** %66, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %69 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %71 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %70, i32 0, i32 2
  store i32* @ati_generic_bridge, i32** %71, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 1
  %74 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %74, i64 %76
  %78 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @dev_info(i32* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %83 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PCI_AGP_STATUS, align 8
  %86 = add nsw i64 %84, %85
  %87 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %88 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %87, i32 0, i32 0
  %89 = call i32 @pci_read_config_dword(%struct.pci_dev* %81, i64 %86, i32* %88)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %92 = call i32 @pci_set_drvdata(%struct.pci_dev* %90, %struct.agp_bridge_data* %91)
  %93 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %94 = call i32 @agp_add_bridge(%struct.agp_bridge_data* %93)
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %63, %60, %44, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #1

declare dso_local %struct.agp_bridge_data* @agp_alloc_bridge(...) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.agp_bridge_data*) #1

declare dso_local i32 @agp_add_bridge(%struct.agp_bridge_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
