; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_uninorth-agp.c_agp_uninorth_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_uninorth-agp.c_agp_uninorth_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_device_ids = type { i64, i32* }
%struct.pci_dev = type { i64, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.agp_bridge_data = type { i32, i32, i64, %struct.pci_dev*, i32* }
%struct.device_node = type { i32 }

@uninorth_agp_device_ids = common dso_local global %struct.agp_device_ids* null, align 8
@PCI_CAP_ID_AGP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Apple %s chipset\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"unsupported Apple chipset [%04x/%04x]\0A\00", align 1
@uninorth_rev = common dso_local global i32 0, align 4
@is_u3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"uni-n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"u3\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"device-rev\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@u3_agp_driver = common dso_local global i32 0, align 4
@uninorth_agp_driver = common dso_local global i32 0, align 4
@AGP_ERRATA_FASTWRITES = common dso_local global i32 0, align 4
@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@agp_uninorth_resume = common dso_local global i32 0, align 4
@agp_uninorth_suspend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @agp_uninorth_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_uninorth_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.agp_device_ids*, align 8
  %7 = alloca %struct.agp_bridge_data*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %12 = load %struct.agp_device_ids*, %struct.agp_device_ids** @uninorth_agp_device_ids, align 8
  store %struct.agp_device_ids* %12, %struct.agp_device_ids** %6, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = load i32, i32* @PCI_CAP_ID_AGP, align 4
  %15 = call i64 @pci_find_capability(%struct.pci_dev* %13, i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %126

21:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %52, %21
  %23 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %23, i64 %25
  %27 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %55

30:                                               ; preds = %22
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %34, i64 %36
  %38 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %33, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 2
  %44 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %44, i64 %46
  %48 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @dev_info(i32* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %49)
  br label %67

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %22

55:                                               ; preds = %22
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 2
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %63)
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %126

67:                                               ; preds = %41
  store i32 0, i32* @uninorth_rev, align 4
  store i32 0, i32* @is_u3, align 4
  %68 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %68, %struct.device_node** %8, align 8
  %69 = load %struct.device_node*, %struct.device_node** %8, align 8
  %70 = icmp eq %struct.device_node* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  store i32 1, i32* @is_u3, align 4
  %72 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store %struct.device_node* %72, %struct.device_node** %8, align 8
  br label %73

73:                                               ; preds = %71, %67
  %74 = load %struct.device_node*, %struct.device_node** %8, align 8
  %75 = icmp ne %struct.device_node* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load %struct.device_node*, %struct.device_node** %8, align 8
  %78 = call i32* @of_get_property(%struct.device_node* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %78, i32** %11, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 63
  store i32 %84, i32* @uninorth_rev, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.device_node*, %struct.device_node** %8, align 8
  %87 = call i32 @of_node_put(%struct.device_node* %86)
  br label %88

88:                                               ; preds = %85, %73
  %89 = call %struct.agp_bridge_data* (...) @agp_alloc_bridge()
  store %struct.agp_bridge_data* %89, %struct.agp_bridge_data** %7, align 8
  %90 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %91 = icmp ne %struct.agp_bridge_data* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %126

95:                                               ; preds = %88
  %96 = load i32, i32* @is_u3, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %100 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %99, i32 0, i32 4
  store i32* @u3_agp_driver, i32** %100, align 8
  br label %104

101:                                              ; preds = %95
  %102 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %103 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %102, i32 0, i32 4
  store i32* @uninorth_agp_driver, i32** %103, align 8
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %106 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %107 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %106, i32 0, i32 3
  store %struct.pci_dev* %105, %struct.pci_dev** %107, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %110 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load i32, i32* @AGP_ERRATA_FASTWRITES, align 4
  %112 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %113 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* @PCI_AGP_STATUS, align 8
  %117 = add nsw i64 %115, %116
  %118 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %119 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %118, i32 0, i32 0
  %120 = call i32 @pci_read_config_dword(%struct.pci_dev* %114, i64 %117, i32* %119)
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %123 = call i32 @pci_set_drvdata(%struct.pci_dev* %121, %struct.agp_bridge_data* %122)
  %124 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %125 = call i32 @agp_add_bridge(%struct.agp_bridge_data* %124)
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %104, %92, %55, %18
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #1

declare dso_local %struct.device_node* @of_find_node_by_name(i32*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.agp_bridge_data* @agp_alloc_bridge(...) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.agp_bridge_data*) #1

declare dso_local i32 @agp_add_bridge(%struct.agp_bridge_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
