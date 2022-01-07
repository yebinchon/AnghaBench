; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-smd-rpm.c_rpm_smd_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-smd-rpm.c_rpm_smd_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rpm_cc = type { i64, %struct.clk_smd_rpm** }
%struct.clk_smd_rpm = type { i32, %struct.qcom_smd_rpm* }
%struct.qcom_smd_rpm = type { i32 }
%struct.rpm_smd_clk_desc = type { i64, %struct.clk_smd_rpm** }

@.str = private unnamed_addr constant [34 x i8] c"Unable to retrieve handle to RPM\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_smdrpm_clk_hw_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error registering SMD clock driver (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rpm_smd_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpm_smd_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rpm_cc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qcom_smd_rpm*, align 8
  %9 = alloca %struct.clk_smd_rpm**, align 8
  %10 = alloca %struct.rpm_smd_clk_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qcom_smd_rpm* @dev_get_drvdata(i32 %14)
  store %struct.qcom_smd_rpm* %15, %struct.qcom_smd_rpm** %8, align 8
  %16 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %8, align 8
  %17 = icmp ne %struct.qcom_smd_rpm* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %136

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call %struct.rpm_smd_clk_desc* @of_device_get_match_data(%struct.TYPE_6__* %26)
  store %struct.rpm_smd_clk_desc* %27, %struct.rpm_smd_clk_desc** %10, align 8
  %28 = load %struct.rpm_smd_clk_desc*, %struct.rpm_smd_clk_desc** %10, align 8
  %29 = icmp ne %struct.rpm_smd_clk_desc* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %136

33:                                               ; preds = %24
  %34 = load %struct.rpm_smd_clk_desc*, %struct.rpm_smd_clk_desc** %10, align 8
  %35 = getelementptr inbounds %struct.rpm_smd_clk_desc, %struct.rpm_smd_clk_desc* %34, i32 0, i32 1
  %36 = load %struct.clk_smd_rpm**, %struct.clk_smd_rpm*** %35, align 8
  store %struct.clk_smd_rpm** %36, %struct.clk_smd_rpm*** %9, align 8
  %37 = load %struct.rpm_smd_clk_desc*, %struct.rpm_smd_clk_desc** %10, align 8
  %38 = getelementptr inbounds %struct.rpm_smd_clk_desc, %struct.rpm_smd_clk_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.rpm_cc* @devm_kzalloc(%struct.TYPE_6__* %41, i32 16, i32 %42)
  store %struct.rpm_cc* %43, %struct.rpm_cc** %4, align 8
  %44 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %45 = icmp ne %struct.rpm_cc* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %136

49:                                               ; preds = %33
  %50 = load %struct.clk_smd_rpm**, %struct.clk_smd_rpm*** %9, align 8
  %51 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %52 = getelementptr inbounds %struct.rpm_cc, %struct.rpm_cc* %51, i32 0, i32 1
  store %struct.clk_smd_rpm** %50, %struct.clk_smd_rpm*** %52, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %55 = getelementptr inbounds %struct.rpm_cc, %struct.rpm_cc* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  store i64 0, i64* %7, align 8
  br label %56

56:                                               ; preds = %83, %49
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %56
  %61 = load %struct.clk_smd_rpm**, %struct.clk_smd_rpm*** %9, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %61, i64 %62
  %64 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %63, align 8
  %65 = icmp ne %struct.clk_smd_rpm* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %83

67:                                               ; preds = %60
  %68 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %8, align 8
  %69 = load %struct.clk_smd_rpm**, %struct.clk_smd_rpm*** %9, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %69, i64 %70
  %72 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %71, align 8
  %73 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %72, i32 0, i32 1
  store %struct.qcom_smd_rpm* %68, %struct.qcom_smd_rpm** %73, align 8
  %74 = load %struct.clk_smd_rpm**, %struct.clk_smd_rpm*** %9, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %74, i64 %75
  %77 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %76, align 8
  %78 = call i32 @clk_smd_rpm_handoff(%struct.clk_smd_rpm* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %130

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %66
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %56

86:                                               ; preds = %56
  %87 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %8, align 8
  %88 = call i32 @clk_smd_rpm_enable_scaling(%struct.qcom_smd_rpm* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %130

92:                                               ; preds = %86
  store i64 0, i64* %7, align 8
  br label %93

93:                                               ; preds = %117, %92
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %6, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = load %struct.clk_smd_rpm**, %struct.clk_smd_rpm*** %9, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %98, i64 %99
  %101 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %100, align 8
  %102 = icmp ne %struct.clk_smd_rpm* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  br label %117

104:                                              ; preds = %97
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.clk_smd_rpm**, %struct.clk_smd_rpm*** %9, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %107, i64 %108
  %110 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %109, align 8
  %111 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %110, i32 0, i32 0
  %112 = call i32 @devm_clk_hw_register(%struct.TYPE_6__* %106, i32* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  br label %130

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %103
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %7, align 8
  br label %93

120:                                              ; preds = %93
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load i32, i32* @qcom_smdrpm_clk_hw_get, align 4
  %124 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %125 = call i32 @devm_of_clk_add_hw_provider(%struct.TYPE_6__* %122, i32 %123, %struct.rpm_cc* %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %130

129:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %136

130:                                              ; preds = %128, %115, %91, %81
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = load i32, i32* %5, align 4
  %134 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %132, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %130, %129, %46, %30, %18
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.qcom_smd_rpm* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local %struct.rpm_smd_clk_desc* @of_device_get_match_data(%struct.TYPE_6__*) #1

declare dso_local %struct.rpm_cc* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @clk_smd_rpm_handoff(%struct.clk_smd_rpm*) #1

declare dso_local i32 @clk_smd_rpm_enable_scaling(%struct.qcom_smd_rpm*) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.TYPE_6__*, i32, %struct.rpm_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
