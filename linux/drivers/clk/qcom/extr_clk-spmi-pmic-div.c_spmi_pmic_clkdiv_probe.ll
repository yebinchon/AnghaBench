; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-spmi-pmic-div.c_spmi_pmic_clkdiv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-spmi-pmic-div.c_spmi_pmic_clkdiv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.spmi_pmic_div_clk_cc = type { i32, %struct.clkdiv* }
%struct.clkdiv = type { i32, i32, %struct.TYPE_2__, %struct.regmap*, i32 }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32* }
%struct.regmap = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"reg property reading failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Couldn't get parent's regmap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"qcom,num-clkdivs\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"qcom,num-clkdivs property reading failed, ret=%d\0A\00", align 1
@clks = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to get xo clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"missing parent clock\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@clk_spmi_pmic_div_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"div_clk%d\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@spmi_pmic_div_clk_hw_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spmi_pmic_clkdiv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_pmic_clkdiv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spmi_pmic_div_clk_cc*, align 8
  %5 = alloca %struct.clk_init_data, align 8
  %6 = alloca %struct.clkdiv*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [20 x i8], align 16
  %17 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %18 = bitcast %struct.clk_init_data* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %9, align 8
  %21 = load %struct.device*, %struct.device** %9, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 1
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  store %struct.device_node* %23, %struct.device_node** %10, align 8
  %24 = load %struct.device_node*, %struct.device_node** %10, align 8
  %25 = call i32 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %17)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %9, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %2, align 4
  br label %181

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.regmap* @dev_get_regmap(i32 %35, i32* null)
  store %struct.regmap* %36, %struct.regmap** %8, align 8
  %37 = load %struct.regmap*, %struct.regmap** %8, align 8
  %38 = icmp ne %struct.regmap* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %181

44:                                               ; preds = %32
  %45 = load %struct.device_node*, %struct.device_node** %10, align 8
  %46 = call i32 @of_property_read_u32(%struct.device_node* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %12)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %9, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %2, align 4
  br label %181

54:                                               ; preds = %44
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %181

60:                                               ; preds = %54
  %61 = load %struct.device*, %struct.device** %9, align 8
  %62 = load %struct.spmi_pmic_div_clk_cc*, %struct.spmi_pmic_div_clk_cc** %4, align 8
  %63 = load i32, i32* @clks, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @struct_size(%struct.spmi_pmic_div_clk_cc* %62, i32 %63, i32 %64)
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.spmi_pmic_div_clk_cc* @devm_kzalloc(%struct.device* %61, i32 %65, i32 %66)
  store %struct.spmi_pmic_div_clk_cc* %67, %struct.spmi_pmic_div_clk_cc** %4, align 8
  %68 = load %struct.spmi_pmic_div_clk_cc*, %struct.spmi_pmic_div_clk_cc** %4, align 8
  %69 = icmp ne %struct.spmi_pmic_div_clk_cc* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %181

73:                                               ; preds = %60
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.spmi_pmic_div_clk_cc*, %struct.spmi_pmic_div_clk_cc** %4, align 8
  %76 = getelementptr inbounds %struct.spmi_pmic_div_clk_cc, %struct.spmi_pmic_div_clk_cc* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.device*, %struct.device** %9, align 8
  %78 = call %struct.clk* @clk_get(%struct.device* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store %struct.clk* %78, %struct.clk** %7, align 8
  %79 = load %struct.clk*, %struct.clk** %7, align 8
  %80 = call i64 @IS_ERR(%struct.clk* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %73
  %83 = load %struct.clk*, %struct.clk** %7, align 8
  %84 = call i32 @PTR_ERR(%struct.clk* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @EPROBE_DEFER, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.device*, %struct.device** %9, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %2, align 4
  br label %181

94:                                               ; preds = %73
  %95 = load %struct.clk*, %struct.clk** %7, align 8
  %96 = call i32 @clk_get_rate(%struct.clk* %95)
  store i32 %96, i32* %15, align 4
  %97 = load %struct.clk*, %struct.clk** %7, align 8
  %98 = call i32 @clk_put(%struct.clk* %97)
  %99 = load %struct.device_node*, %struct.device_node** %10, align 8
  %100 = call i8* @of_clk_get_parent_name(%struct.device_node* %99, i32 0)
  store i8* %100, i8** %11, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %94
  %104 = load %struct.device*, %struct.device** %9, align 8
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %181

108:                                              ; preds = %94
  %109 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %110 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 0
  store i8* %109, i8** %110, align 8
  %111 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 1
  store i8** %11, i8*** %111, align 8
  %112 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 2
  store i32 1, i32* %112, align 8
  %113 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 3
  store i32* @clk_spmi_pmic_div_ops, i32** %113, align 8
  store i32 0, i32* %13, align 4
  %114 = load %struct.spmi_pmic_div_clk_cc*, %struct.spmi_pmic_div_clk_cc** %4, align 8
  %115 = getelementptr inbounds %struct.spmi_pmic_div_clk_cc, %struct.spmi_pmic_div_clk_cc* %114, i32 0, i32 1
  %116 = load %struct.clkdiv*, %struct.clkdiv** %115, align 8
  store %struct.clkdiv* %116, %struct.clkdiv** %6, align 8
  br label %117

117:                                              ; preds = %173, %108
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %176

121:                                              ; preds = %117
  %122 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  %125 = call i32 @snprintf(i8* %122, i32 20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %124)
  %126 = load %struct.clkdiv*, %struct.clkdiv** %6, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %126, i64 %128
  %130 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %129, i32 0, i32 4
  %131 = call i32 @spin_lock_init(i32* %130)
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %13, align 4
  %134 = mul nsw i32 %133, 256
  %135 = add nsw i32 %132, %134
  %136 = load %struct.clkdiv*, %struct.clkdiv** %6, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %136, i64 %138
  %140 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %139, i32 0, i32 0
  store i32 %135, i32* %140, align 8
  %141 = load %struct.regmap*, %struct.regmap** %8, align 8
  %142 = load %struct.clkdiv*, %struct.clkdiv** %6, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %142, i64 %144
  %146 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %145, i32 0, i32 3
  store %struct.regmap* %141, %struct.regmap** %146, align 8
  %147 = load i32, i32* @NSEC_PER_SEC, align 4
  %148 = load i32, i32* %15, align 4
  %149 = sdiv i32 %147, %148
  %150 = load %struct.clkdiv*, %struct.clkdiv** %6, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %150, i64 %152
  %154 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %153, i32 0, i32 1
  store i32 %149, i32* %154, align 4
  %155 = load %struct.clkdiv*, %struct.clkdiv** %6, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %155, i64 %157
  %159 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  store %struct.clk_init_data* %5, %struct.clk_init_data** %160, align 8
  %161 = load %struct.device*, %struct.device** %9, align 8
  %162 = load %struct.clkdiv*, %struct.clkdiv** %6, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %162, i64 %164
  %166 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %165, i32 0, i32 2
  %167 = call i32 @devm_clk_hw_register(%struct.device* %161, %struct.TYPE_2__* %166)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %121
  %171 = load i32, i32* %14, align 4
  store i32 %171, i32* %2, align 4
  br label %181

172:                                              ; preds = %121
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %13, align 4
  br label %117

176:                                              ; preds = %117
  %177 = load %struct.device*, %struct.device** %9, align 8
  %178 = load i32, i32* @spmi_pmic_div_clk_hw_get, align 4
  %179 = load %struct.spmi_pmic_div_clk_cc*, %struct.spmi_pmic_div_clk_cc** %4, align 8
  %180 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %177, i32 %178, %struct.spmi_pmic_div_clk_cc* %179)
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %176, %170, %103, %92, %70, %57, %49, %39, %28
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local %struct.regmap* @dev_get_regmap(i32, i32*) #2

declare dso_local %struct.spmi_pmic_div_clk_cc* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @struct_size(%struct.spmi_pmic_div_clk_cc*, i32, i32) #2

declare dso_local %struct.clk* @clk_get(%struct.device*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.clk*) #2

declare dso_local i32 @PTR_ERR(%struct.clk*) #2

declare dso_local i32 @clk_get_rate(%struct.clk*) #2

declare dso_local i32 @clk_put(%struct.clk*) #2

declare dso_local i8* @of_clk_get_parent_name(%struct.device_node*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_2__*) #2

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.spmi_pmic_div_clk_cc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
