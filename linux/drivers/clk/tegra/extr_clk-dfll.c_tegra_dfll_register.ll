; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_tegra_dfll_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_tegra_dfll_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.tegra_dfll_soc_data = type { i32 }
%struct.resource = type { i32 }
%struct.tegra_dfll = type { %struct.TYPE_6__*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.tegra_dfll_soc_data* }

@.str = private unnamed_addr constant [33 x i8] c"no tegra_dfll_soc_data provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dvco\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"couldn't get dvco reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"couldn't parse device tree parameters\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"nvidia,pwm-to-pmic\00", align 1
@TEGRA_DFLL_PMU_PWM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"vdd-cpu\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"couldn't get vdd_cpu regulator\0A\00", align 1
@TEGRA_DFLL_PMU_I2C = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"couldn't build LUT\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"no control register resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"couldn't ioremap DFLL control registers\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"no i2c_base resource\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"couldn't ioremap i2c_base resource\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"no i2c_controller_base resource\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"couldn't ioremap i2c_controller_base resource\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"no lut_base resource\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"couldn't ioremap lut_base resource\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"DFLL clock init error\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"DFLL clk registration failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_dfll_register(%struct.platform_device* %0, %struct.tegra_dfll_soc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.tegra_dfll_soc_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.tegra_dfll*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.tegra_dfll_soc_data* %1, %struct.tegra_dfll_soc_data** %5, align 8
  %9 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %5, align 8
  %10 = icmp ne %struct.tegra_dfll_soc_data* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @dev_err(%struct.TYPE_6__* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %300

17:                                               ; preds = %2
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.tegra_dfll* @devm_kzalloc(%struct.TYPE_6__* %19, i32 64, i32 %20)
  store %struct.tegra_dfll* %21, %struct.tegra_dfll** %7, align 8
  %22 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %23 = icmp ne %struct.tegra_dfll* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %300

27:                                               ; preds = %17
  %28 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %31 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %30, i32 0, i32 0
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.tegra_dfll* %33)
  %35 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %5, align 8
  %36 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %37 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %36, i32 0, i32 8
  store %struct.tegra_dfll_soc_data* %35, %struct.tegra_dfll_soc_data** %37, align 8
  %38 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %39 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call i32 @devm_reset_control_get(%struct.TYPE_6__* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %43 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %45 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %27
  %50 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %51 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @dev_err(%struct.TYPE_6__* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %55 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %300

58:                                               ; preds = %27
  %59 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %60 = call i32 @dfll_fetch_common_params(%struct.tegra_dfll* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %65 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @dev_err(%struct.TYPE_6__* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %300

69:                                               ; preds = %58
  %70 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %71 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @of_property_read_bool(i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load i32, i32* @TEGRA_DFLL_PMU_PWM, align 4
  %79 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %80 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %82 = call i32 @dfll_fetch_pwm_params(%struct.tegra_dfll* %81)
  store i32 %82, i32* %8, align 4
  br label %110

83:                                               ; preds = %69
  %84 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %85 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = call i32 @devm_regulator_get(%struct.TYPE_6__* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %88 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %89 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %91 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @IS_ERR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %83
  %96 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %97 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = call i32 @dev_err(%struct.TYPE_6__* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %100 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %101 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @PTR_ERR(i32 %102)
  store i32 %103, i32* %3, align 4
  br label %300

104:                                              ; preds = %83
  %105 = load i32, i32* @TEGRA_DFLL_PMU_I2C, align 4
  %106 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %107 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  %108 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %109 = call i32 @dfll_fetch_i2c_params(%struct.tegra_dfll* %108)
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %104, %77
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %300

115:                                              ; preds = %110
  %116 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %117 = call i32 @dfll_build_lut(%struct.tegra_dfll* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %122 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = call i32 @dev_err(%struct.TYPE_6__* %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %300

126:                                              ; preds = %115
  %127 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %128 = load i32, i32* @IORESOURCE_MEM, align 4
  %129 = call %struct.resource* @platform_get_resource(%struct.platform_device* %127, i32 %128, i32 0)
  store %struct.resource* %129, %struct.resource** %6, align 8
  %130 = load %struct.resource*, %struct.resource** %6, align 8
  %131 = icmp ne %struct.resource* %130, null
  br i1 %131, label %139, label %132

132:                                              ; preds = %126
  %133 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %134 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = call i32 @dev_err(%struct.TYPE_6__* %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %300

139:                                              ; preds = %126
  %140 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %141 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %140, i32 0, i32 0
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load %struct.resource*, %struct.resource** %6, align 8
  %144 = getelementptr inbounds %struct.resource, %struct.resource* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.resource*, %struct.resource** %6, align 8
  %147 = call i32 @resource_size(%struct.resource* %146)
  %148 = call i8* @devm_ioremap(%struct.TYPE_6__* %142, i32 %145, i32 %147)
  %149 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %150 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %149, i32 0, i32 4
  store i8* %148, i8** %150, align 8
  %151 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %152 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %151, i32 0, i32 4
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %139
  %156 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %157 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = call i32 @dev_err(%struct.TYPE_6__* %158, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %160 = load i32, i32* @ENODEV, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %300

162:                                              ; preds = %139
  %163 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %164 = load i32, i32* @IORESOURCE_MEM, align 4
  %165 = call %struct.resource* @platform_get_resource(%struct.platform_device* %163, i32 %164, i32 1)
  store %struct.resource* %165, %struct.resource** %6, align 8
  %166 = load %struct.resource*, %struct.resource** %6, align 8
  %167 = icmp ne %struct.resource* %166, null
  br i1 %167, label %175, label %168

168:                                              ; preds = %162
  %169 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %170 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %169, i32 0, i32 0
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = call i32 @dev_err(%struct.TYPE_6__* %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %300

175:                                              ; preds = %162
  %176 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %177 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %176, i32 0, i32 0
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = load %struct.resource*, %struct.resource** %6, align 8
  %180 = getelementptr inbounds %struct.resource, %struct.resource* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.resource*, %struct.resource** %6, align 8
  %183 = call i32 @resource_size(%struct.resource* %182)
  %184 = call i8* @devm_ioremap(%struct.TYPE_6__* %178, i32 %181, i32 %183)
  %185 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %186 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %185, i32 0, i32 3
  store i8* %184, i8** %186, align 8
  %187 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %188 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %187, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %198, label %191

191:                                              ; preds = %175
  %192 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %193 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = call i32 @dev_err(%struct.TYPE_6__* %194, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %196 = load i32, i32* @ENODEV, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %300

198:                                              ; preds = %175
  %199 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %200 = load i32, i32* @IORESOURCE_MEM, align 4
  %201 = call %struct.resource* @platform_get_resource(%struct.platform_device* %199, i32 %200, i32 2)
  store %struct.resource* %201, %struct.resource** %6, align 8
  %202 = load %struct.resource*, %struct.resource** %6, align 8
  %203 = icmp ne %struct.resource* %202, null
  br i1 %203, label %211, label %204

204:                                              ; preds = %198
  %205 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %206 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %205, i32 0, i32 0
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = call i32 @dev_err(%struct.TYPE_6__* %207, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %209 = load i32, i32* @ENODEV, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %3, align 4
  br label %300

211:                                              ; preds = %198
  %212 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %213 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %212, i32 0, i32 0
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = load %struct.resource*, %struct.resource** %6, align 8
  %216 = getelementptr inbounds %struct.resource, %struct.resource* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.resource*, %struct.resource** %6, align 8
  %219 = call i32 @resource_size(%struct.resource* %218)
  %220 = call i8* @devm_ioremap(%struct.TYPE_6__* %214, i32 %217, i32 %219)
  %221 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %222 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  %223 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %224 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %223, i32 0, i32 2
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %234, label %227

227:                                              ; preds = %211
  %228 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %229 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %228, i32 0, i32 0
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = call i32 @dev_err(%struct.TYPE_6__* %230, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %232 = load i32, i32* @ENODEV, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %3, align 4
  br label %300

234:                                              ; preds = %211
  %235 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %236 = load i32, i32* @IORESOURCE_MEM, align 4
  %237 = call %struct.resource* @platform_get_resource(%struct.platform_device* %235, i32 %236, i32 3)
  store %struct.resource* %237, %struct.resource** %6, align 8
  %238 = load %struct.resource*, %struct.resource** %6, align 8
  %239 = icmp ne %struct.resource* %238, null
  br i1 %239, label %247, label %240

240:                                              ; preds = %234
  %241 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %242 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %241, i32 0, i32 0
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %242, align 8
  %244 = call i32 @dev_err(%struct.TYPE_6__* %243, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %245 = load i32, i32* @ENODEV, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %3, align 4
  br label %300

247:                                              ; preds = %234
  %248 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %249 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %248, i32 0, i32 0
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = load %struct.resource*, %struct.resource** %6, align 8
  %252 = getelementptr inbounds %struct.resource, %struct.resource* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.resource*, %struct.resource** %6, align 8
  %255 = call i32 @resource_size(%struct.resource* %254)
  %256 = call i8* @devm_ioremap(%struct.TYPE_6__* %250, i32 %253, i32 %255)
  %257 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %258 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %257, i32 0, i32 1
  store i8* %256, i8** %258, align 8
  %259 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %260 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %259, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %270, label %263

263:                                              ; preds = %247
  %264 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %265 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %264, i32 0, i32 0
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = call i32 @dev_err(%struct.TYPE_6__* %266, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %268 = load i32, i32* @ENODEV, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %3, align 4
  br label %300

270:                                              ; preds = %247
  %271 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %272 = call i32 @dfll_init_clks(%struct.tegra_dfll* %271)
  store i32 %272, i32* %8, align 4
  %273 = load i32, i32* %8, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %277 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %276, i32 0, i32 0
  %278 = call i32 @dev_err(%struct.TYPE_6__* %277, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %279 = load i32, i32* %8, align 4
  store i32 %279, i32* %3, align 4
  br label %300

280:                                              ; preds = %270
  %281 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %282 = call i32 @dfll_init(%struct.tegra_dfll* %281)
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %280
  %286 = load i32, i32* %8, align 4
  store i32 %286, i32* %3, align 4
  br label %300

287:                                              ; preds = %280
  %288 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %289 = call i32 @dfll_register_clk(%struct.tegra_dfll* %288)
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* %8, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %287
  %293 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %294 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %293, i32 0, i32 0
  %295 = call i32 @dev_err(%struct.TYPE_6__* %294, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  %296 = load i32, i32* %8, align 4
  store i32 %296, i32* %3, align 4
  br label %300

297:                                              ; preds = %287
  %298 = load %struct.tegra_dfll*, %struct.tegra_dfll** %7, align 8
  %299 = call i32 @dfll_debug_init(%struct.tegra_dfll* %298)
  store i32 0, i32* %3, align 4
  br label %300

300:                                              ; preds = %297, %292, %285, %275, %263, %240, %227, %204, %191, %168, %155, %132, %120, %113, %95, %63, %49, %24, %11
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.tegra_dfll* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_dfll*) #1

declare dso_local i32 @devm_reset_control_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dfll_fetch_common_params(%struct.tegra_dfll*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @dfll_fetch_pwm_params(%struct.tegra_dfll*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @dfll_fetch_i2c_params(%struct.tegra_dfll*) #1

declare dso_local i32 @dfll_build_lut(%struct.tegra_dfll*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dfll_init_clks(%struct.tegra_dfll*) #1

declare dso_local i32 @dfll_init(%struct.tegra_dfll*) #1

declare dso_local i32 @dfll_register_clk(%struct.tegra_dfll*) #1

declare dso_local i32 @dfll_debug_init(%struct.tegra_dfll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
