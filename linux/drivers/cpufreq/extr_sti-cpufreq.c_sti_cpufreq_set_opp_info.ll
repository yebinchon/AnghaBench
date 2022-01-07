; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sti-cpufreq.c_sti_cpufreq_set_opp_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sti-cpufreq.c_sti_cpufreq_set_opp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.reg_field = type { i32 }
%struct.opp_table = type { i32 }

@ddata = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VERSION_ELEMENTS = common dso_local global i32 0, align 4
@MAX_PCODE_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"This SoC doesn't support voltage scaling\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"st,syscfg-eng\00", align 1
@HW_INFO_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to read HW info offset from DT\0A\00", align 1
@DEFAULT_VERSION = common dso_local global i32 0, align 4
@PCODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to obtain process code\0A\00", align 1
@SUBSTRATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to obtain substrate code\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to obtain major version\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to obtain minor version\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"pcode%d\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Failed to set prop name\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Failed to set supported hardware\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"pcode: %d major: %d minor: %d substrate: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"version[0]: %x version[1]: %x version[2]: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sti_cpufreq_set_opp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_cpufreq_set_opp_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.reg_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.opp_table*, align 8
  %15 = alloca i32, align 4
  %16 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ddata, i32 0, i32 0), align 8
  store %struct.device* %16, %struct.device** %2, align 8
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %3, align 8
  %20 = load i32, i32* @VERSION_ELEMENTS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load i32, i32* @MAX_PCODE_NAME_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %27 = call %struct.reg_field* (...) @sti_cpufreq_match()
  store %struct.reg_field* %27, %struct.reg_field** %4, align 8
  %28 = load %struct.reg_field*, %struct.reg_field** %4, align 8
  %29 = icmp ne %struct.reg_field* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %0
  %31 = load %struct.device*, %struct.device** %2, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %133

35:                                               ; preds = %0
  %36 = load %struct.device_node*, %struct.device_node** %3, align 8
  %37 = load i32, i32* @HW_INFO_INDEX, align 4
  %38 = call i32 @of_property_read_u32_index(%struct.device_node* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32* %5)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %2, align 8
  %43 = call i32 @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @DEFAULT_VERSION, align 4
  store i32 %44, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %67

45:                                               ; preds = %35
  %46 = load %struct.reg_field*, %struct.reg_field** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @PCODE, align 4
  %49 = call i32 @sti_cpufreq_fetch_regmap_field(%struct.reg_field* %46, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.device*, %struct.device** %2, align 8
  %54 = call i32 @dev_warn(%struct.device* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.reg_field*, %struct.reg_field** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SUBSTRATE, align 4
  %59 = call i32 @sti_cpufreq_fetch_regmap_field(%struct.reg_field* %56, i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.device*, %struct.device** %2, align 8
  %64 = call i32 @dev_warn(%struct.device* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* @DEFAULT_VERSION, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %55
  br label %67

67:                                               ; preds = %66, %41
  %68 = call i32 (...) @sti_cpufreq_fetch_major()
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.device*, %struct.device** %2, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @DEFAULT_VERSION, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = call i32 (...) @sti_cpufreq_fetch_minor()
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.device*, %struct.device** %2, align 8
  %81 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %82 = load i32, i32* @DEFAULT_VERSION, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* @MAX_PCODE_NAME_LEN, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @snprintf(i8* %26, i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = load %struct.device*, %struct.device** %2, align 8
  %88 = call %struct.opp_table* @dev_pm_opp_set_prop_name(%struct.device* %87, i8* %26)
  store %struct.opp_table* %88, %struct.opp_table** %14, align 8
  %89 = load %struct.opp_table*, %struct.opp_table** %14, align 8
  %90 = call i64 @IS_ERR(%struct.opp_table* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load %struct.device*, %struct.device** %2, align 8
  %94 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %95 = load %struct.opp_table*, %struct.opp_table** %14, align 8
  %96 = call i32 @PTR_ERR(%struct.opp_table* %95)
  store i32 %96, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %133

97:                                               ; preds = %83
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @BIT(i32 %98)
  %100 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %99, i32* %100, align 16
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @BIT(i32 %101)
  %103 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @BIT(i32 %104)
  %106 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %105, i32* %106, align 8
  %107 = load %struct.device*, %struct.device** %2, align 8
  %108 = load i32, i32* @VERSION_ELEMENTS, align 4
  %109 = call %struct.opp_table* @dev_pm_opp_set_supported_hw(%struct.device* %107, i32* %23, i32 %108)
  store %struct.opp_table* %109, %struct.opp_table** %14, align 8
  %110 = load %struct.opp_table*, %struct.opp_table** %14, align 8
  %111 = call i64 @IS_ERR(%struct.opp_table* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %97
  %114 = load %struct.device*, %struct.device** %2, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %116 = load %struct.opp_table*, %struct.opp_table** %14, align 8
  %117 = call i32 @PTR_ERR(%struct.opp_table* %116)
  store i32 %117, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %133

118:                                              ; preds = %97
  %119 = load %struct.device*, %struct.device** %2, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_dbg(%struct.device* %119, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %120, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.device*, %struct.device** %2, align 8
  %126 = getelementptr inbounds i32, i32* %23, i64 0
  %127 = load i32, i32* %126, align 16
  %128 = getelementptr inbounds i32, i32* %23, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds i32, i32* %23, i64 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_dbg(%struct.device* %125, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %127, i32 %129, i32 %131)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %133

133:                                              ; preds = %118, %113, %92, %30
  %134 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %1, align 4
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.reg_field* @sti_cpufreq_match(...) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i32 @sti_cpufreq_fetch_regmap_field(%struct.reg_field*, i32, i32) #2

declare dso_local i32 @sti_cpufreq_fetch_major(...) #2

declare dso_local i32 @sti_cpufreq_fetch_minor(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local %struct.opp_table* @dev_pm_opp_set_prop_name(%struct.device*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.opp_table*) #2

declare dso_local i32 @PTR_ERR(%struct.opp_table*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local %struct.opp_table* @dev_pm_opp_set_supported_hw(%struct.device*, i32*, i32) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
