; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_ali-agp.c_agp_ali_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_ali-agp.c_agp_ali_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_device_ids = type { i8*, i64 }
%struct.pci_dev = type { i64, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.agp_bridge_data = type { i32, i64, i32*, %struct.pci_dev* }

@ali_agp_device_ids = common dso_local global %struct.agp_device_ids* null, align 8
@PCI_CAP_ID_AGP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unsupported ALi chipset [%04x/%04x])\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ali_m1541_bridge = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"M1631\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"M1632\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"M1641\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"M1621\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"M1647\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"M1651\00", align 1
@ali_generic_bridge = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"ALi %s chipset\0A\00", align 1
@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @agp_ali_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_ali_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.agp_device_ids*, align 8
  %7 = alloca %struct.agp_bridge_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.agp_device_ids*, %struct.agp_device_ids** @ali_agp_device_ids, align 8
  store %struct.agp_device_ids* %11, %struct.agp_device_ids** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = load i32, i32* @PCI_CAP_ID_AGP, align 4
  %14 = call i64 @pci_find_capability(%struct.pci_dev* %12, i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %146

20:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %42, %20
  %22 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %22, i64 %24
  %26 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %33, i64 %35
  %37 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %57

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %21

45:                                               ; preds = %21
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %50, i64 %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %146

57:                                               ; preds = %40
  %58 = call %struct.agp_bridge_data* (...) @agp_alloc_bridge()
  store %struct.agp_bridge_data* %58, %struct.agp_bridge_data** %7, align 8
  %59 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %60 = icmp ne %struct.agp_bridge_data* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %146

64:                                               ; preds = %57
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %67 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %66, i32 0, i32 3
  store %struct.pci_dev* %65, %struct.pci_dev** %67, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %70 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  switch i64 %73, label %119 [
    i64 129, label %74
    i64 128, label %77
  ]

74:                                               ; preds = %64
  %75 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %76 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %75, i32 0, i32 2
  store i32* @ali_m1541_bridge, i32** %76, align 8
  br label %122

77:                                               ; preds = %64
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = call i32 @pci_read_config_byte(%struct.pci_dev* %78, i32 251, i64* %8)
  %80 = load i64, i64* %8, align 8
  switch i64 %80, label %117 [
    i64 49, label %81
    i64 50, label %87
    i64 65, label %93
    i64 67, label %99
    i64 71, label %105
    i64 81, label %111
  ]

81:                                               ; preds = %77
  %82 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %82, i64 %84
  %86 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %86, align 8
  br label %118

87:                                               ; preds = %77
  %88 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %88, i64 %90
  %92 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %92, align 8
  br label %118

93:                                               ; preds = %77
  %94 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %94, i64 %96
  %98 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %97, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %98, align 8
  br label %118

99:                                               ; preds = %77
  %100 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %100, i64 %102
  %104 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %103, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %104, align 8
  br label %118

105:                                              ; preds = %77
  %106 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %106, i64 %108
  %110 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %109, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %110, align 8
  br label %118

111:                                              ; preds = %77
  %112 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %112, i64 %114
  %116 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %116, align 8
  br label %118

117:                                              ; preds = %77
  br label %118

118:                                              ; preds = %117, %111, %105, %99, %93, %87, %81
  br label %119

119:                                              ; preds = %64, %118
  %120 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %121 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %120, i32 0, i32 2
  store i32* @ali_generic_bridge, i32** %121, align 8
  br label %122

122:                                              ; preds = %119, %74
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 1
  %125 = load %struct.agp_device_ids*, %struct.agp_device_ids** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %125, i64 %127
  %129 = getelementptr inbounds %struct.agp_device_ids, %struct.agp_device_ids* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @dev_info(i32* %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %130)
  %132 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %133 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %134 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @PCI_AGP_STATUS, align 8
  %137 = add nsw i64 %135, %136
  %138 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %139 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %138, i32 0, i32 0
  %140 = call i32 @pci_read_config_dword(%struct.pci_dev* %132, i64 %137, i32* %139)
  %141 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %142 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %143 = call i32 @pci_set_drvdata(%struct.pci_dev* %141, %struct.agp_bridge_data* %142)
  %144 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %145 = call i32 @agp_add_bridge(%struct.agp_bridge_data* %144)
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %122, %61, %45, %17
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #1

declare dso_local %struct.agp_bridge_data* @agp_alloc_bridge(...) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.agp_bridge_data*) #1

declare dso_local i32 @agp_add_bridge(%struct.agp_bridge_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
