; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-agp.c_agp_intel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-agp.c_agp_intel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i32 }
%struct.pci_dev = type { i64, i32, %struct.resource*, i32 }
%struct.resource = type { i64, i32 }
%struct.pci_device_id = type { i32 }
%struct.agp_bridge_data = type { i32, i64, i32*, %struct.pci_dev*, i32 }

@PCI_CAP_ID_AGP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_agp_chipsets = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"unsupported Intel chipset [%04x/%04x]\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Intel %s Chipset\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"can't assign resource 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"can't enable PCI device\0A\00", align 1
@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @agp_intel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_intel_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.agp_bridge_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = load i32, i32* @PCI_CAP_ID_AGP, align 4
  %13 = call i64 @pci_find_capability(%struct.pci_dev* %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = call %struct.agp_bridge_data* (...) @agp_alloc_bridge()
  store %struct.agp_bridge_data* %14, %struct.agp_bridge_data** %6, align 8
  %15 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %16 = icmp ne %struct.agp_bridge_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %159

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %23 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %26 = call i64 @intel_gmch_probe(%struct.pci_dev* %24, i32* null, %struct.agp_bridge_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %152

29:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %59, %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_agp_chipsets, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %30
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_agp_chipsets, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %41, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %38
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_agp_chipsets, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %57 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  br label %62

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %30

62:                                               ; preds = %49, %30
  %63 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %64 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 1
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @dev_warn(i32* %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %75, i64 %78)
  br label %80

80:                                               ; preds = %70, %67
  %81 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %82 = call i32 @agp_put_bridge(%struct.agp_bridge_data* %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %159

85:                                               ; preds = %62
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %88 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %87, i32 0, i32 3
  store %struct.pci_dev* %86, %struct.pci_dev** %88, align 8
  %89 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %90 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %89, i32 0, i32 2
  store i32* null, i32** %90, align 8
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intel_agp_chipsets, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @dev_info(i32* %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %98)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 2
  %102 = load %struct.resource*, %struct.resource** %101, align 8
  %103 = getelementptr inbounds %struct.resource, %struct.resource* %102, i64 0
  store %struct.resource* %103, %struct.resource** %8, align 8
  %104 = load %struct.resource*, %struct.resource** %8, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %126, label %108

108:                                              ; preds = %85
  %109 = load %struct.resource*, %struct.resource** %8, align 8
  %110 = getelementptr inbounds %struct.resource, %struct.resource* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = call i64 @pci_assign_resource(%struct.pci_dev* %114, i32 0)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 1
  %120 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %121 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %122 = call i32 @agp_put_bridge(%struct.agp_bridge_data* %121)
  %123 = load i32, i32* @ENODEV, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %159

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %108, %85
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = call i64 @pci_enable_device(%struct.pci_dev* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 1
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %134 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %135 = call i32 @agp_put_bridge(%struct.agp_bridge_data* %134)
  %136 = load i32, i32* @ENODEV, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %159

138:                                              ; preds = %126
  %139 = load i64, i64* %7, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %143 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %144 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PCI_AGP_STATUS, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %149 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %148, i32 0, i32 0
  %150 = call i32 @pci_read_config_dword(%struct.pci_dev* %142, i64 %147, i32* %149)
  br label %151

151:                                              ; preds = %141, %138
  br label %152

152:                                              ; preds = %151, %28
  %153 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %154 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %155 = call i32 @pci_set_drvdata(%struct.pci_dev* %153, %struct.agp_bridge_data* %154)
  %156 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %157 = call i32 @agp_add_bridge(%struct.agp_bridge_data* %156)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %152, %130, %117, %80, %17
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local %struct.agp_bridge_data* @agp_alloc_bridge(...) #1

declare dso_local i64 @intel_gmch_probe(%struct.pci_dev*, i32*, %struct.agp_bridge_data*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i64) #1

declare dso_local i32 @agp_put_bridge(%struct.agp_bridge_data*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32*) #1

declare dso_local i64 @pci_assign_resource(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.agp_bridge_data*) #1

declare dso_local i32 @agp_add_bridge(%struct.agp_bridge_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
