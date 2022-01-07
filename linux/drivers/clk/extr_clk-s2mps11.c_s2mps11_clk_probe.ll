; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-s2mps11.c_s2mps11_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-s2mps11.c_s2mps11_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.sec_pmic_dev = type { i32 }
%struct.s2mps11_clk = type { i32, i32, i32, i32, %struct.TYPE_13__, i32, %struct.sec_pmic_dev* }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.clk_hw_onecell_data = type { i32, %struct.TYPE_13__** }
%struct.TYPE_11__ = type { i32 }

@S2MPS11_CLKS_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hws = common dso_local global i32 0, align 4
@S2MPS11_REG_RTC_CTRL = common dso_local global i32 0, align 4
@S2MPS13_REG_RTCCTRL = common dso_local global i32 0, align 4
@S2MPS14_REG_RTCCTRL = common dso_local global i32 0, align 4
@S5M8767_REG_CTRL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid device type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@s2mps11_clks_init = common dso_local global %struct.TYPE_10__* null, align 8
@S2MPS11_CLK_CP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Fail to register : %s\0A\00", align 1
@of_clk_hw_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s2mps11_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2mps11_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sec_pmic_dev*, align 8
  %5 = alloca %struct.s2mps11_clk*, align 8
  %6 = alloca %struct.clk_hw_onecell_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sec_pmic_dev* @dev_get_drvdata(i32 %14)
  store %struct.sec_pmic_dev* %15, %struct.sec_pmic_dev** %4, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call %struct.TYPE_11__* @platform_get_device_id(%struct.platform_device* %16)
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @S2MPS11_CLKS_NUM, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.s2mps11_clk* @devm_kcalloc(%struct.TYPE_12__* %21, i32 %22, i32 40, i32 %23)
  store %struct.s2mps11_clk* %24, %struct.s2mps11_clk** %5, align 8
  %25 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %26 = icmp ne %struct.s2mps11_clk* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %229

30:                                               ; preds = %1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %34 = load i32, i32* @hws, align 4
  %35 = load i32, i32* @S2MPS11_CLKS_NUM, align 4
  %36 = call i32 @struct_size(%struct.clk_hw_onecell_data* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.clk_hw_onecell_data* @devm_kzalloc(%struct.TYPE_12__* %32, i32 %36, i32 %37)
  store %struct.clk_hw_onecell_data* %38, %struct.clk_hw_onecell_data** %6, align 8
  %39 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %40 = icmp ne %struct.clk_hw_onecell_data* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %229

44:                                               ; preds = %30
  %45 = load i32, i32* %10, align 4
  switch i32 %45, label %54 [
    i32 131, label %46
    i32 130, label %48
    i32 129, label %50
    i32 128, label %52
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* @S2MPS11_REG_RTC_CTRL, align 4
  store i32 %47, i32* %7, align 4
  br label %60

48:                                               ; preds = %44
  %49 = load i32, i32* @S2MPS13_REG_RTCCTRL, align 4
  store i32 %49, i32* %7, align 4
  br label %60

50:                                               ; preds = %44
  %51 = load i32, i32* @S2MPS14_REG_RTCCTRL, align 4
  store i32 %51, i32* %7, align 4
  br label %60

52:                                               ; preds = %44
  %53 = load i32, i32* @S5M8767_REG_CTRL1, align 4
  store i32 %53, i32* %7, align 4
  br label %60

54:                                               ; preds = %44
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %229

60:                                               ; preds = %52, %50, %48, %46
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @s2mps11_clks_init, align 8
  %63 = call i32 @s2mps11_clk_parse_dt(%struct.platform_device* %61, %struct.TYPE_10__* %62)
  %64 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %65 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %67 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %73 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %229

76:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %197, %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @S2MPS11_CLKS_NUM, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %200

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @S2MPS11_CLK_CP, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 129
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %197

89:                                               ; preds = %85, %81
  %90 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %4, align 8
  %91 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %91, i64 %93
  %95 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %94, i32 0, i32 6
  store %struct.sec_pmic_dev* %90, %struct.sec_pmic_dev** %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** @s2mps11_clks_init, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 %98
  %100 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %100, i64 %102
  %104 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store %struct.TYPE_10__* %99, %struct.TYPE_10__** %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = shl i32 1, %106
  %108 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %108, i64 %110
  %112 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %111, i32 0, i32 0
  store i32 %107, i32* %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %114, i64 %116
  %118 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %117, i32 0, i32 1
  store i32 %113, i32* %118, align 4
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %121, i64 %123
  %125 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %124, i32 0, i32 4
  %126 = call i32 @devm_clk_register(%struct.TYPE_12__* %120, %struct.TYPE_13__* %125)
  %127 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %127, i64 %129
  %131 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %130, i32 0, i32 5
  store i32 %126, i32* %131, align 8
  %132 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %132, i64 %134
  %136 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @IS_ERR(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %89
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** @s2mps11_clks_init, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  %150 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %150, i64 %152
  %154 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @PTR_ERR(i32 %155)
  store i32 %156, i32* %9, align 4
  br label %214

157:                                              ; preds = %89
  %158 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %158, i64 %160
  %162 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %161, i32 0, i32 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** @s2mps11_clks_init, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @clkdev_hw_create(%struct.TYPE_13__* %162, i32 %168, i32* null)
  %170 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %170, i64 %172
  %174 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %173, i32 0, i32 2
  store i32 %169, i32* %174, align 8
  %175 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %175, i64 %177
  %179 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %157
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %9, align 4
  br label %214

185:                                              ; preds = %157
  %186 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %186, i64 %188
  %190 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %189, i32 0, i32 4
  %191 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %192 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %191, i32 0, i32 1
  %193 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %193, i64 %195
  store %struct.TYPE_13__* %190, %struct.TYPE_13__** %196, align 8
  br label %197

197:                                              ; preds = %185, %88
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %8, align 4
  br label %77

200:                                              ; preds = %77
  %201 = load i32, i32* @S2MPS11_CLKS_NUM, align 4
  %202 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %203 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %205 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @of_clk_hw_onecell_get, align 4
  %208 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %209 = call i32 @of_clk_add_hw_provider(i32 %206, i32 %207, %struct.clk_hw_onecell_data* %208)
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %212 = call i32 @platform_set_drvdata(%struct.platform_device* %210, %struct.s2mps11_clk* %211)
  %213 = load i32, i32* %9, align 4
  store i32 %213, i32* %2, align 4
  br label %229

214:                                              ; preds = %182, %140
  br label %215

215:                                              ; preds = %219, %214
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %8, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %215
  %220 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %5, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %220, i64 %222
  %224 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @clkdev_drop(i32 %225)
  br label %215

227:                                              ; preds = %215
  %228 = load i32, i32* %9, align 4
  store i32 %228, i32* %2, align 4
  br label %229

229:                                              ; preds = %227, %200, %71, %54, %41, %27
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local %struct.sec_pmic_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.TYPE_11__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.s2mps11_clk* @devm_kcalloc(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local %struct.clk_hw_onecell_data* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.clk_hw_onecell_data*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @s2mps11_clk_parse_dt(%struct.platform_device*, %struct.TYPE_10__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_register(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @clkdev_hw_create(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @of_clk_add_hw_provider(i32, i32, %struct.clk_hw_onecell_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.s2mps11_clk*) #1

declare dso_local i32 @clkdev_drop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
