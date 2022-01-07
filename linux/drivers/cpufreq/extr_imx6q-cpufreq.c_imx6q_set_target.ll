; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_imx6q-cpufreq.c_imx6q_set_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_imx6q-cpufreq.c_imx6q_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dev_pm_opp = type { i32 }
%struct.cpufreq_policy = type { i32 }

@freq_table = common dso_local global %struct.TYPE_3__* null, align 8
@clks = common dso_local global %struct.TYPE_4__* null, align 8
@ARM = common dso_local global i64 0, align 8
@cpu_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to find OPP for %ld\0A\00", align 1
@arm_reg = common dso_local global %struct.dev_pm_opp* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%u MHz, %ld mV --> %u MHz, %ld mV\0A\00", align 1
@pu_reg = common dso_local global %struct.dev_pm_opp* null, align 8
@imx6_soc_volt = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to scale vddpu up: %d\0A\00", align 1
@soc_reg = common dso_local global %struct.dev_pm_opp* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to scale vddsoc up: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to scale vddarm up: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"fsl,imx6ul\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"fsl,imx6ull\00", align 1
@PLL1_SW = common dso_local global i64 0, align 8
@PLL1_SYS = common dso_local global i64 0, align 8
@PLL2_PFD2_396M = common dso_local global i64 0, align 8
@SECONDARY_SEL = common dso_local global i64 0, align 8
@PLL2_BUS = common dso_local global i64 0, align 8
@STEP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to set clock rate: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"failed to restore vddarm voltage: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"failed to scale vddarm down: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to scale vddsoc down: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to scale vddpu down: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @imx6q_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6q_set_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_pm_opp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @freq_table, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = mul i32 %21, 1000
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %25 = load i64, i64* @ARM, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @clk_get_rate(i32 %28)
  %30 = udiv i64 %29, 1000
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @cpu_dev, align 4
  %33 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(i32 %32, i64* %7)
  store %struct.dev_pm_opp* %33, %struct.dev_pm_opp** %6, align 8
  %34 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %35 = call i64 @IS_ERR(%struct.dev_pm_opp* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load i32, i32* @cpu_dev, align 4
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %43 = call i32 @PTR_ERR(%struct.dev_pm_opp* %42)
  store i32 %43, i32* %3, align 4
  br label %366

44:                                               ; preds = %2
  %45 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %46 = call i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %45)
  store i64 %46, i64* %8, align 8
  %47 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %48 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %47)
  %49 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** @arm_reg, align 8
  %50 = call i64 @regulator_get_voltage(%struct.dev_pm_opp* %49)
  store i64 %50, i64* %9, align 8
  %51 = load i32, i32* @cpu_dev, align 4
  %52 = load i32, i32* %10, align 4
  %53 = udiv i32 %52, 1000
  %54 = load i64, i64* %9, align 8
  %55 = udiv i64 %54, 1000
  %56 = load i32, i32* %11, align 4
  %57 = udiv i32 %56, 1000
  %58 = load i64, i64* %8, align 8
  %59 = udiv i64 %58, 1000
  %60 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53, i64 %55, i32 %57, i64 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %111

64:                                               ; preds = %44
  %65 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** @pu_reg, align 8
  %66 = call i64 @IS_ERR(%struct.dev_pm_opp* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %64
  %69 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** @pu_reg, align 8
  %70 = load i64*, i64** @imx6_soc_volt, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @regulator_set_voltage_tol(%struct.dev_pm_opp* %69, i64 %74, i32 0)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load i32, i32* @cpu_dev, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %3, align 4
  br label %366

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %64
  %85 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** @soc_reg, align 8
  %86 = load i64*, i64** @imx6_soc_volt, align 8
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @regulator_set_voltage_tol(%struct.dev_pm_opp* %85, i64 %90, i32 0)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load i32, i32* @cpu_dev, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %3, align 4
  br label %366

99:                                               ; preds = %84
  %100 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** @arm_reg, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @regulator_set_voltage_tol(%struct.dev_pm_opp* %100, i64 %101, i32 0)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load i32, i32* @cpu_dev, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %3, align 4
  br label %366

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %44
  %112 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %222

117:                                              ; preds = %114, %111
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %119 = load i64, i64* @ARM, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = lshr i32 %123, 1
  %125 = mul i32 %124, 1000
  %126 = call i32 @clk_set_rate(i32 %122, i32 %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %128 = load i64, i64* @PLL1_SW, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %133 = load i64, i64* @PLL1_SYS, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @clk_set_parent(i32 %131, i32 %136)
  %138 = load i64, i64* %7, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %140 = load i64, i64* @PLL2_PFD2_396M, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @clk_get_rate(i32 %143)
  %145 = icmp ugt i64 %138, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %117
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %148 = load i64, i64* @SECONDARY_SEL, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %153 = load i64, i64* @PLL2_BUS, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @clk_set_parent(i32 %151, i32 %156)
  br label %170

158:                                              ; preds = %117
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %160 = load i64, i64* @SECONDARY_SEL, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %165 = load i64, i64* @PLL2_PFD2_396M, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @clk_set_parent(i32 %163, i32 %168)
  br label %170

170:                                              ; preds = %158, %146
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %172 = load i64, i64* @STEP, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %177 = load i64, i64* @SECONDARY_SEL, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @clk_set_parent(i32 %175, i32 %180)
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %183 = load i64, i64* @PLL1_SW, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %188 = load i64, i64* @STEP, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @clk_set_parent(i32 %186, i32 %191)
  %193 = load i64, i64* %7, align 8
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %195 = load i64, i64* @PLL2_BUS, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @clk_get_rate(i32 %198)
  %200 = icmp ugt i64 %193, %199
  br i1 %200, label %201, label %221

201:                                              ; preds = %170
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %203 = load i64, i64* @PLL1_SYS, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %11, align 4
  %208 = mul i32 %207, 1000
  %209 = call i32 @clk_set_rate(i32 %206, i32 %208)
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %211 = load i64, i64* @PLL1_SW, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %216 = load i64, i64* @PLL1_SYS, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @clk_set_parent(i32 %214, i32 %219)
  br label %221

221:                                              ; preds = %201, %170
  br label %281

222:                                              ; preds = %114
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %224 = load i64, i64* @STEP, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %229 = load i64, i64* @PLL2_PFD2_396M, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @clk_set_parent(i32 %227, i32 %232)
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %235 = load i64, i64* @PLL1_SW, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %240 = load i64, i64* @STEP, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @clk_set_parent(i32 %238, i32 %243)
  %245 = load i64, i64* %7, align 8
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %247 = load i64, i64* @PLL2_PFD2_396M, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @clk_get_rate(i32 %250)
  %252 = icmp ugt i64 %245, %251
  br i1 %252, label %253, label %273

253:                                              ; preds = %222
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %255 = load i64, i64* @PLL1_SYS, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %11, align 4
  %260 = mul i32 %259, 1000
  %261 = call i32 @clk_set_rate(i32 %258, i32 %260)
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %263 = load i64, i64* @PLL1_SW, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %268 = load i64, i64* @PLL1_SYS, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @clk_set_parent(i32 %266, i32 %271)
  br label %280

273:                                              ; preds = %222
  store i32 1, i32* %12, align 4
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %275 = load i64, i64* @PLL1_SYS, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @clk_prepare_enable(i32 %278)
  br label %280

280:                                              ; preds = %273, %253
  br label %281

281:                                              ; preds = %280, %221
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %283 = load i64, i64* @ARM, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %11, align 4
  %288 = mul i32 %287, 1000
  %289 = call i32 @clk_set_rate(i32 %286, i32 %288)
  store i32 %289, i32* %13, align 4
  %290 = load i32, i32* %13, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %307

292:                                              ; preds = %281
  %293 = load i32, i32* @cpu_dev, align 4
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @dev_err(i32 %293, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %294)
  %296 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** @arm_reg, align 8
  %297 = load i64, i64* %9, align 8
  %298 = call i32 @regulator_set_voltage_tol(%struct.dev_pm_opp* %296, i64 %297, i32 0)
  store i32 %298, i32* %14, align 4
  %299 = load i32, i32* %14, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %292
  %302 = load i32, i32* @cpu_dev, align 4
  %303 = load i32, i32* %14, align 4
  %304 = call i32 @dev_warn(i32 %302, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %303)
  br label %305

305:                                              ; preds = %301, %292
  %306 = load i32, i32* %13, align 4
  store i32 %306, i32* %3, align 4
  br label %366

307:                                              ; preds = %281
  %308 = load i32, i32* %12, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %317

310:                                              ; preds = %307
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clks, align 8
  %312 = load i64, i64* @PLL1_SYS, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @clk_disable_unprepare(i32 %315)
  br label %317

317:                                              ; preds = %310, %307
  %318 = load i32, i32* %11, align 4
  %319 = load i32, i32* %10, align 4
  %320 = icmp ult i32 %318, %319
  br i1 %320, label %321, label %365

321:                                              ; preds = %317
  %322 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** @arm_reg, align 8
  %323 = load i64, i64* %8, align 8
  %324 = call i32 @regulator_set_voltage_tol(%struct.dev_pm_opp* %322, i64 %323, i32 0)
  store i32 %324, i32* %13, align 4
  %325 = load i32, i32* %13, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %321
  %328 = load i32, i32* @cpu_dev, align 4
  %329 = load i32, i32* %13, align 4
  %330 = call i32 @dev_warn(i32 %328, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %329)
  br label %331

331:                                              ; preds = %327, %321
  %332 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** @soc_reg, align 8
  %333 = load i64*, i64** @imx6_soc_volt, align 8
  %334 = load i32, i32* %5, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %333, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = call i32 @regulator_set_voltage_tol(%struct.dev_pm_opp* %332, i64 %337, i32 0)
  store i32 %338, i32* %13, align 4
  %339 = load i32, i32* %13, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %331
  %342 = load i32, i32* @cpu_dev, align 4
  %343 = load i32, i32* %13, align 4
  %344 = call i32 @dev_warn(i32 %342, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %343)
  br label %345

345:                                              ; preds = %341, %331
  %346 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** @pu_reg, align 8
  %347 = call i64 @IS_ERR(%struct.dev_pm_opp* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %364, label %349

349:                                              ; preds = %345
  %350 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** @pu_reg, align 8
  %351 = load i64*, i64** @imx6_soc_volt, align 8
  %352 = load i32, i32* %5, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds i64, i64* %351, i64 %353
  %355 = load i64, i64* %354, align 8
  %356 = call i32 @regulator_set_voltage_tol(%struct.dev_pm_opp* %350, i64 %355, i32 0)
  store i32 %356, i32* %13, align 4
  %357 = load i32, i32* %13, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %349
  %360 = load i32, i32* @cpu_dev, align 4
  %361 = load i32, i32* %13, align 4
  %362 = call i32 @dev_warn(i32 %360, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %361)
  br label %363

363:                                              ; preds = %359, %349
  br label %364

364:                                              ; preds = %363, %345
  br label %365

365:                                              ; preds = %364, %317
  store i32 0, i32* %3, align 4
  br label %366

366:                                              ; preds = %365, %305, %105, %94, %78, %37
  %367 = load i32, i32* %3, align 4
  ret i32 %367
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(i32, i64*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i64 @regulator_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32, i64) #1

declare dso_local i32 @regulator_set_voltage_tol(%struct.dev_pm_opp*, i64, i32) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
