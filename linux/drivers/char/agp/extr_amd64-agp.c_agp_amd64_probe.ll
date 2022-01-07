; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_agp_amd64_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_agp_amd64_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, i32 }
%struct.pci_device_id = type { i32 }
%struct.agp_bridge_data = type { i32, i64, %struct.pci_dev*, i32* }

@agp_bridges_found = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@PCI_CAP_ID_AGP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AMD = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_AMD_8151_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"AGP bridge [%04x/%04x]\0A\00", align 1
@amd_8151_driver = common dso_local global i32 0, align 4
@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_NVIDIA = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_AL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @agp_amd64_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_amd64_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.agp_bridge_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load i64, i64* @agp_bridges_found, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %130

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i32, i32* @PCI_CAP_ID_AGP, align 4
  %19 = call i64 @pci_find_capability(%struct.pci_dev* %17, i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %130

25:                                               ; preds = %16
  %26 = call %struct.agp_bridge_data* (...) @agp_alloc_bridge()
  store %struct.agp_bridge_data* %26, %struct.agp_bridge_data** %6, align 8
  %27 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %28 = icmp ne %struct.agp_bridge_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %130

32:                                               ; preds = %25
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCI_DEVICE_ID_AMD_8151_0, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %47 = call i32 @amd8151_init(%struct.pci_dev* %45, %struct.agp_bridge_data* %46)
  br label %58

48:                                               ; preds = %38, %32
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 2
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @dev_info(i32* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %56)
  br label %58

58:                                               ; preds = %48, %44
  %59 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %60 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %59, i32 0, i32 3
  store i32* @amd_8151_driver, i32** %60, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %63 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %62, i32 0, i32 2
  store %struct.pci_dev* %61, %struct.pci_dev** %63, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %66 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %69 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PCI_AGP_STATUS, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %74 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %73, i32 0, i32 0
  %75 = call i32 @pci_read_config_dword(%struct.pci_dev* %67, i64 %72, i32* %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @cache_nbs(%struct.pci_dev* %76, i64 %77)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %85

80:                                               ; preds = %58
  %81 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %82 = call i32 @agp_put_bridge(%struct.agp_bridge_data* %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %130

85:                                               ; preds = %58
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PCI_VENDOR_ID_NVIDIA, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = call i32 @nforce3_agp_init(%struct.pci_dev* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %98 = call i32 @agp_put_bridge(%struct.agp_bridge_data* %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %130

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %85
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PCI_VENDOR_ID_AL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = call i32 @uli_agp_init(%struct.pci_dev* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %114 = call i32 @agp_put_bridge(%struct.agp_bridge_data* %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %3, align 4
  br label %130

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %101
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %120 = call i32 @pci_set_drvdata(%struct.pci_dev* %118, %struct.agp_bridge_data* %119)
  %121 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %122 = call i32 @agp_add_bridge(%struct.agp_bridge_data* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %3, align 4
  br label %130

127:                                              ; preds = %117
  %128 = load i64, i64* @agp_bridges_found, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* @agp_bridges_found, align 8
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %127, %125, %112, %96, %80, %29, %22, %13
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local %struct.agp_bridge_data* @agp_alloc_bridge(...) #1

declare dso_local i32 @amd8151_init(%struct.pci_dev*, %struct.agp_bridge_data*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @cache_nbs(%struct.pci_dev*, i64) #1

declare dso_local i32 @agp_put_bridge(%struct.agp_bridge_data*) #1

declare dso_local i32 @nforce3_agp_init(%struct.pci_dev*) #1

declare dso_local i32 @uli_agp_init(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.agp_bridge_data*) #1

declare dso_local i32 @agp_add_bridge(%struct.agp_bridge_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
