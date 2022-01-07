; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd-k7-agp.c_agp_amdk7_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd-k7-agp.c_agp_amdk7_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_device_id = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.pci_dev = type { i64, i32, i32 }
%struct.agp_bridge_data = type { i32, i64, %struct.pci_dev*, i32*, i32* }

@PCI_CAP_ID_AGP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@agp_amdk7_pci_table = common dso_local global %struct.pci_device_id* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"AMD %s chipset\0A\00", align 1
@amd_agp_device_ids = common dso_local global %struct.TYPE_5__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@amd_irongate_driver = common dso_local global i32 0, align 4
@amd_irongate_private = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_6__* null, align 8
@PCI_DEVICE_ID_AMD_FE_GATE_7006 = common dso_local global i64 0, align 8
@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"no AGP VGA controller\0A\00", align 1
@PCI_VENDOR_ID_NVIDIA = common dso_local global i64 0, align 8
@AGP_ERRATA_1X = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"AMD 751 chipset with NVidia GeForce; forcing 1X due to errata\0A\00", align 1
@PCI_DEVICE_ID_AMD_FE_GATE_700E = common dso_local global i64 0, align 8
@AGP_ERRATA_FASTWRITES = common dso_local global i32 0, align 4
@AGP_ERRATA_SBA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [80 x i8] c"AMD 761 chipset with errata; disabling AGP fast writes & SBA and forcing to 1X\0A\00", align 1
@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @agp_amdk7_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_amdk7_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.agp_bridge_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = load i32, i32* @PCI_CAP_ID_AGP, align 4
  %12 = call i64 @pci_find_capability(%struct.pci_dev* %10, i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %150

18:                                               ; preds = %2
  %19 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %20 = load %struct.pci_device_id*, %struct.pci_device_id** @agp_amdk7_pci_table, align 8
  %21 = ptrtoint %struct.pci_device_id* %19 to i64
  %22 = ptrtoint %struct.pci_device_id* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @amd_agp_device_ids, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32*, i8*, ...) @dev_info(i32* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call %struct.agp_bridge_data* (...) @agp_alloc_bridge()
  store %struct.agp_bridge_data* %35, %struct.agp_bridge_data** %6, align 8
  %36 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %37 = icmp ne %struct.agp_bridge_data* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %18
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %150

41:                                               ; preds = %18
  %42 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %43 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %42, i32 0, i32 4
  store i32* @amd_irongate_driver, i32** %43, align 8
  %44 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %45 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %44, i32 0, i32 3
  store i32* @amd_irongate_private, i32** %45, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %48 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %47, i32 0, i32 2
  store %struct.pci_dev* %46, %struct.pci_dev** %48, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %51 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCI_DEVICE_ID_AMD_FE_GATE_7006, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %99

59:                                               ; preds = %41
  store %struct.pci_dev* null, %struct.pci_dev** %9, align 8
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %77, %59
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %66 = shl i32 %65, 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %68 = call %struct.pci_dev* @pci_get_class(i32 %66, %struct.pci_dev* %67)
  store %struct.pci_dev* %68, %struct.pci_dev** %9, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %70 = icmp ne %struct.pci_dev* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %64
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 2
  %74 = call i32 (i32*, i8*, ...) @dev_info(i32* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %150

77:                                               ; preds = %64
  %78 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %79 = load i32, i32* @PCI_CAP_ID_AGP, align 4
  %80 = call i64 @pci_find_capability(%struct.pci_dev* %78, i32 %79)
  store i64 %80, i64* %7, align 8
  br label %60

81:                                               ; preds = %60
  %82 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PCI_VENDOR_ID_NVIDIA, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load i32, i32* @AGP_ERRATA_1X, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 2
  %95 = call i32 (i32*, i8*, ...) @dev_info(i32* %94, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %87, %81
  %97 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %98 = call i32 @pci_dev_put(%struct.pci_dev* %97)
  br label %99

99:                                               ; preds = %96, %41
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PCI_DEVICE_ID_AMD_FE_GATE_700E, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %135

107:                                              ; preds = %99
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 16
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 17
  br i1 %116, label %117, label %134

117:                                              ; preds = %112, %107
  %118 = load i32, i32* @AGP_ERRATA_FASTWRITES, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @AGP_ERRATA_SBA, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* @AGP_ERRATA_1X, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 2
  %133 = call i32 (i32*, i8*, ...) @dev_info(i32* %132, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  br label %134

134:                                              ; preds = %117, %112
  br label %135

135:                                              ; preds = %134, %99
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %138 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @PCI_AGP_STATUS, align 8
  %141 = add nsw i64 %139, %140
  %142 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %143 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %142, i32 0, i32 0
  %144 = call i32 @pci_read_config_dword(%struct.pci_dev* %136, i64 %141, i32* %143)
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %147 = call i32 @pci_set_drvdata(%struct.pci_dev* %145, %struct.agp_bridge_data* %146)
  %148 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %149 = call i32 @agp_add_bridge(%struct.agp_bridge_data* %148)
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %135, %71, %38, %15
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local %struct.agp_bridge_data* @agp_alloc_bridge(...) #1

declare dso_local %struct.pci_dev* @pci_get_class(i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.agp_bridge_data*) #1

declare dso_local i32 @agp_add_bridge(%struct.agp_bridge_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
