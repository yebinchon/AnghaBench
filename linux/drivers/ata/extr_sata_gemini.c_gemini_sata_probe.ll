; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_gemini.c_gemini_sata_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_gemini.c_gemini_sata_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sata_gemini = type { i32, i32, i32, i32, i64, %struct.regmap*, %struct.device* }
%struct.regmap = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"no global syscon\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"cortina,gemini-enable-sata-bridge\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"cortina,gemini-enable-ide-pins\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"neither SATA bridge or IDE output enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"cortina,gemini-ata-muxmode\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"could not parse ATA muxmode\0A\00", align 1
@GEMINI_MUXMODE_3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"illegal muxmode %d\0A\00", align 1
@GEMINI_IDE_IOMUX_MASK = common dso_local global i32 0, align 4
@GEMINI_IDE_IOMUX_SHIFT = common dso_local global i32 0, align 4
@GEMINI_GLOBAL_MISC_CTRL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"unable to set up IDE muxing\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"set up the Gemini IDE/SATA nexus\0A\00", align 1
@sg_singleton = common dso_local global %struct.sata_gemini* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gemini_sata_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_sata_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.sata_gemini*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sata_gemini* @devm_kzalloc(%struct.device* %18, i32 40, i32 %19)
  store %struct.sata_gemini* %20, %struct.sata_gemini** %6, align 8
  %21 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %22 = icmp ne %struct.sata_gemini* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %173

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %29 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %28, i32 0, i32 6
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %8, align 8
  %33 = load %struct.resource*, %struct.resource** %8, align 8
  %34 = icmp ne %struct.resource* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %173

38:                                               ; preds = %26
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.resource*, %struct.resource** %8, align 8
  %41 = call %struct.regmap* @devm_ioremap_resource(%struct.device* %39, %struct.resource* %40)
  %42 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %43 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %42, i32 0, i32 5
  store %struct.regmap* %41, %struct.regmap** %43, align 8
  %44 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %45 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %44, i32 0, i32 5
  %46 = load %struct.regmap*, %struct.regmap** %45, align 8
  %47 = call i64 @IS_ERR(%struct.regmap* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %51 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %50, i32 0, i32 5
  %52 = load %struct.regmap*, %struct.regmap** %51, align 8
  %53 = call i32 @PTR_ERR(%struct.regmap* %52)
  store i32 %53, i32* %2, align 4
  br label %173

54:                                               ; preds = %38
  %55 = load %struct.device_node*, %struct.device_node** %5, align 8
  %56 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.regmap* %56, %struct.regmap** %7, align 8
  %57 = load %struct.regmap*, %struct.regmap** %7, align 8
  %58 = call i64 @IS_ERR(%struct.regmap* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.regmap*, %struct.regmap** %7, align 8
  %64 = call i32 @PTR_ERR(%struct.regmap* %63)
  store i32 %64, i32* %2, align 4
  br label %173

65:                                               ; preds = %54
  %66 = load %struct.device_node*, %struct.device_node** %5, align 8
  %67 = call i64 @of_property_read_bool(%struct.device_node* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %71 = call i32 @gemini_sata_bridge_init(%struct.sata_gemini* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %2, align 4
  br label %173

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %65
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = call i64 @of_property_read_bool(%struct.device_node* %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %83 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %77
  %85 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %86 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %91 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  br label %157

99:                                               ; preds = %89, %84
  %100 = load %struct.device_node*, %struct.device_node** %5, align 8
  %101 = call i32 @of_property_read_u32(%struct.device_node* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %157

107:                                              ; preds = %99
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @GEMINI_MUXMODE_3, align 4
  %110 = icmp ugt i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %12, align 4
  br label %157

117:                                              ; preds = %107
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %120 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @GEMINI_IDE_IOMUX_MASK, align 4
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @GEMINI_IDE_IOMUX_SHIFT, align 4
  %124 = shl i32 %122, %123
  store i32 %124, i32* %10, align 4
  %125 = load %struct.regmap*, %struct.regmap** %7, align 8
  %126 = load i32, i32* @GEMINI_GLOBAL_MISC_CTRL, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @regmap_update_bits(%struct.regmap* %125, i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %117
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i32, i32* @ENODEV, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %12, align 4
  br label %157

137:                                              ; preds = %117
  %138 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %139 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = call i32 @gemini_setup_ide_pins(%struct.device* %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %2, align 4
  br label %173

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %137
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = call i32 @dev_info(%struct.device* %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %155 = call i32 @platform_set_drvdata(%struct.platform_device* %153, %struct.sata_gemini* %154)
  %156 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  store %struct.sata_gemini* %156, %struct.sata_gemini** @sg_singleton, align 8
  store i32 0, i32* %2, align 4
  br label %173

157:                                              ; preds = %132, %111, %104, %94
  %158 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %159 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %164 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @clk_unprepare(i32 %165)
  %167 = load %struct.sata_gemini*, %struct.sata_gemini** %6, align 8
  %168 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @clk_unprepare(i32 %169)
  br label %171

171:                                              ; preds = %162, %157
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %171, %150, %147, %74, %60, %49, %35, %23
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.sata_gemini* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.regmap* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @gemini_sata_bridge_init(%struct.sata_gemini*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @gemini_setup_ide_pins(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sata_gemini*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
