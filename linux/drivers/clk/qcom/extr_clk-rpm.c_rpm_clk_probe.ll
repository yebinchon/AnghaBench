; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpm.c_rpm_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpm.c_rpm_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.rpm_cc = type { i64, i32, %struct.clk_rpm** }
%struct.clk_rpm = type { i32, %struct.rpm_cc*, %struct.qcom_rpm* }
%struct.qcom_rpm = type { i32 }
%struct.rpm_clk_desc = type { i64, %struct.clk_rpm** }

@.str = private unnamed_addr constant [34 x i8] c"Unable to retrieve handle to RPM\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_rpm_clk_hw_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error registering RPM Clock driver (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rpm_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpm_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rpm_cc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qcom_rpm*, align 8
  %9 = alloca %struct.clk_rpm**, align 8
  %10 = alloca %struct.rpm_clk_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qcom_rpm* @dev_get_drvdata(i32 %14)
  store %struct.qcom_rpm* %15, %struct.qcom_rpm** %8, align 8
  %16 = load %struct.qcom_rpm*, %struct.qcom_rpm** %8, align 8
  %17 = icmp ne %struct.qcom_rpm* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %141

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call %struct.rpm_clk_desc* @of_device_get_match_data(%struct.TYPE_5__* %26)
  store %struct.rpm_clk_desc* %27, %struct.rpm_clk_desc** %10, align 8
  %28 = load %struct.rpm_clk_desc*, %struct.rpm_clk_desc** %10, align 8
  %29 = icmp ne %struct.rpm_clk_desc* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %141

33:                                               ; preds = %24
  %34 = load %struct.rpm_clk_desc*, %struct.rpm_clk_desc** %10, align 8
  %35 = getelementptr inbounds %struct.rpm_clk_desc, %struct.rpm_clk_desc* %34, i32 0, i32 1
  %36 = load %struct.clk_rpm**, %struct.clk_rpm*** %35, align 8
  store %struct.clk_rpm** %36, %struct.clk_rpm*** %9, align 8
  %37 = load %struct.rpm_clk_desc*, %struct.rpm_clk_desc** %10, align 8
  %38 = getelementptr inbounds %struct.rpm_clk_desc, %struct.rpm_clk_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.rpm_cc* @devm_kzalloc(%struct.TYPE_5__* %41, i32 24, i32 %42)
  store %struct.rpm_cc* %43, %struct.rpm_cc** %4, align 8
  %44 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %45 = icmp ne %struct.rpm_cc* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %141

49:                                               ; preds = %33
  %50 = load %struct.clk_rpm**, %struct.clk_rpm*** %9, align 8
  %51 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %52 = getelementptr inbounds %struct.rpm_cc, %struct.rpm_cc* %51, i32 0, i32 2
  store %struct.clk_rpm** %50, %struct.clk_rpm*** %52, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %55 = getelementptr inbounds %struct.rpm_cc, %struct.rpm_cc* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %57 = getelementptr inbounds %struct.rpm_cc, %struct.rpm_cc* %56, i32 0, i32 1
  %58 = call i32 @mutex_init(i32* %57)
  store i64 0, i64* %7, align 8
  br label %59

59:                                               ; preds = %92, %49
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %59
  %64 = load %struct.clk_rpm**, %struct.clk_rpm*** %9, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.clk_rpm*, %struct.clk_rpm** %64, i64 %65
  %67 = load %struct.clk_rpm*, %struct.clk_rpm** %66, align 8
  %68 = icmp ne %struct.clk_rpm* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %92

70:                                               ; preds = %63
  %71 = load %struct.qcom_rpm*, %struct.qcom_rpm** %8, align 8
  %72 = load %struct.clk_rpm**, %struct.clk_rpm*** %9, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.clk_rpm*, %struct.clk_rpm** %72, i64 %73
  %75 = load %struct.clk_rpm*, %struct.clk_rpm** %74, align 8
  %76 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %75, i32 0, i32 2
  store %struct.qcom_rpm* %71, %struct.qcom_rpm** %76, align 8
  %77 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %78 = load %struct.clk_rpm**, %struct.clk_rpm*** %9, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.clk_rpm*, %struct.clk_rpm** %78, i64 %79
  %81 = load %struct.clk_rpm*, %struct.clk_rpm** %80, align 8
  %82 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %81, i32 0, i32 1
  store %struct.rpm_cc* %77, %struct.rpm_cc** %82, align 8
  %83 = load %struct.clk_rpm**, %struct.clk_rpm*** %9, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds %struct.clk_rpm*, %struct.clk_rpm** %83, i64 %84
  %86 = load %struct.clk_rpm*, %struct.clk_rpm** %85, align 8
  %87 = call i32 @clk_rpm_handoff(%struct.clk_rpm* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %70
  br label %135

91:                                               ; preds = %70
  br label %92

92:                                               ; preds = %91, %69
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %7, align 8
  br label %59

95:                                               ; preds = %59
  store i64 0, i64* %7, align 8
  br label %96

96:                                               ; preds = %120, %95
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %6, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %96
  %101 = load %struct.clk_rpm**, %struct.clk_rpm*** %9, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds %struct.clk_rpm*, %struct.clk_rpm** %101, i64 %102
  %104 = load %struct.clk_rpm*, %struct.clk_rpm** %103, align 8
  %105 = icmp ne %struct.clk_rpm* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  br label %120

107:                                              ; preds = %100
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.clk_rpm**, %struct.clk_rpm*** %9, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds %struct.clk_rpm*, %struct.clk_rpm** %110, i64 %111
  %113 = load %struct.clk_rpm*, %struct.clk_rpm** %112, align 8
  %114 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %113, i32 0, i32 0
  %115 = call i32 @devm_clk_hw_register(%struct.TYPE_5__* %109, i32* %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %135

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %106
  %121 = load i64, i64* %7, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %7, align 8
  br label %96

123:                                              ; preds = %96
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @qcom_rpm_clk_hw_get, align 4
  %129 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %130 = call i32 @of_clk_add_hw_provider(i32 %127, i32 %128, %struct.rpm_cc* %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %135

134:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %141

135:                                              ; preds = %133, %118, %90
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load i32, i32* %5, align 4
  %139 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %137, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %135, %134, %46, %30, %18
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.qcom_rpm* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local %struct.rpm_clk_desc* @of_device_get_match_data(%struct.TYPE_5__*) #1

declare dso_local %struct.rpm_cc* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @clk_rpm_handoff(%struct.clk_rpm*) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @of_clk_add_hw_provider(i32, i32, %struct.rpm_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
