; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_imx6q-cpufreq.c_imx6q_cpufreq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_imx6q-cpufreq.c_imx6q_cpufreq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }
%struct.dev_pm_opp = type { i32 }
%struct.property = type { i32, i32* }

@cpu_dev = common dso_local global %struct.TYPE_21__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"failed to get cpu0 device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to find cpu0 node\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"fsl,imx6ul\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"fsl,imx6ull\00", align 1
@IMX6UL_CPUFREQ_CLK_NUM = common dso_local global i32 0, align 4
@num_clks = common dso_local global i32 0, align 4
@IMX6Q_CPUFREQ_CLK_NUM = common dso_local global i32 0, align 4
@clks = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@arm_reg = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"pu\00", align 1
@pu_reg = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@soc_reg = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"regulators not ready, defer\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to get regulators\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to init OPP table: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"failed to read ocotp: %d\0A\00", align 1
@free_opp = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"no OPP table is found: %d\0A\00", align 1
@freq_table = common dso_local global %struct.TYPE_22__* null, align 8
@.str.12 = private unnamed_addr constant [34 x i8] c"failed to init cpufreq table: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@imx6_soc_volt = common dso_local global i64* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"fsl,soc-operating-points\00", align 1
@soc_opp_count = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [81 x i8] c"can NOT find valid fsl,soc-operating-points property in dtb, use default value!\0A\00", align 1
@PU_SOC_VOLTAGE_NORMAL = common dso_local global i64 0, align 8
@FREQ_1P2_GHZ = common dso_local global i32 0, align 4
@PU_SOC_VOLTAGE_HIGH = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"clock-latency\00", align 1
@transition_latency = common dso_local global i32 0, align 4
@CPUFREQ_ETERNAL = common dso_local global i32 0, align 4
@max_freq = common dso_local global i32 0, align 4
@imx6q_cpufreq_driver = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"failed register driver: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx6q_cpufreq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6q_cpufreq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.dev_pm_opp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.property*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = call %struct.TYPE_21__* @get_cpu_device(i32 0)
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** @cpu_dev, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %19 = icmp ne %struct.TYPE_21__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %412

24:                                               ; preds = %1
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.device_node* @of_node_get(i32 %27)
  store %struct.device_node* %28, %struct.device_node** %4, align 8
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = icmp ne %struct.device_node* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %33 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %412

36:                                               ; preds = %24
  %37 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @IMX6UL_CPUFREQ_CLK_NUM, align 4
  store i32 %43, i32* @num_clks, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @IMX6Q_CPUFREQ_CLK_NUM, align 4
  store i32 %45, i32* @num_clks, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %48 = load i32, i32* @num_clks, align 4
  %49 = load i32, i32* @clks, align 4
  %50 = call i32 @clk_bulk_get(%struct.TYPE_21__* %47, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %408

54:                                               ; preds = %46
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %56 = call i32 @regulator_get(%struct.TYPE_21__* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %56, i32* @arm_reg, align 4
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %58 = call i32 @regulator_get_optional(%struct.TYPE_21__* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 %58, i32* @pu_reg, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %60 = call i32 @regulator_get(%struct.TYPE_21__* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 %60, i32* @soc_reg, align 4
  %61 = load i32, i32* @arm_reg, align 4
  %62 = call i32 @PTR_ERR(i32 %61)
  %63 = load i32, i32* @EPROBE_DEFER, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* @soc_reg, align 4
  %68 = call i32 @PTR_ERR(i32 %67)
  %69 = load i32, i32* @EPROBE_DEFER, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @pu_reg, align 4
  %74 = call i32 @PTR_ERR(i32 %73)
  %75 = load i32, i32* @EPROBE_DEFER, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72, %66, %54
  %79 = load i32, i32* @EPROBE_DEFER, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %82 = call i32 @dev_dbg(%struct.TYPE_21__* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %383

83:                                               ; preds = %72
  %84 = load i32, i32* @arm_reg, align 4
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @soc_reg, align 4
  %89 = call i64 @IS_ERR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87, %83
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %93 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %94 = load i32, i32* @ENOENT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  br label %383

96:                                               ; preds = %87
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %98 = call i32 @dev_pm_opp_of_add_table(%struct.TYPE_21__* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %103)
  br label %383

105:                                              ; preds = %96
  %106 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %108, %105
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %113 = call i32 @imx6ul_opp_check_speed_grading(%struct.TYPE_21__* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @EPROBE_DEFER, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %408

122:                                              ; preds = %116
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %124)
  br label %408

126:                                              ; preds = %111
  br label %130

127:                                              ; preds = %108
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %129 = call i32 @imx6q_opp_check_speed_grading(%struct.TYPE_21__* %128)
  br label %130

130:                                              ; preds = %127, %126
  store i32 1, i32* @free_opp, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %132 = call i32 @dev_pm_opp_get_opp_count(%struct.TYPE_21__* %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %9, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %138)
  br label %376

140:                                              ; preds = %130
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %142 = call i32 @dev_pm_opp_init_cpufreq_table(%struct.TYPE_21__* %141, %struct.TYPE_22__** @freq_table)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %146, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %147)
  br label %376

149:                                              ; preds = %140
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @GFP_KERNEL, align 4
  %153 = call i64* @devm_kcalloc(%struct.TYPE_21__* %150, i32 %151, i32 8, i32 %152)
  store i64* %153, i64** @imx6_soc_volt, align 8
  %154 = load i64*, i64** @imx6_soc_volt, align 8
  %155 = icmp eq i64* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %9, align 4
  br label %373

159:                                              ; preds = %149
  %160 = load %struct.device_node*, %struct.device_node** %4, align 8
  %161 = call %struct.property* @of_find_property(%struct.device_node* %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32* null)
  store %struct.property* %161, %struct.property** %10, align 8
  %162 = load %struct.property*, %struct.property** %10, align 8
  %163 = icmp ne %struct.property* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.property*, %struct.property** %10, align 8
  %166 = getelementptr inbounds %struct.property, %struct.property* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %164, %159
  br label %233

170:                                              ; preds = %164
  %171 = load %struct.property*, %struct.property** %10, align 8
  %172 = getelementptr inbounds %struct.property, %struct.property* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = udiv i64 %174, 4
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = srem i32 %177, 2
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %170
  %181 = load i32, i32* %12, align 4
  %182 = sdiv i32 %181, 2
  %183 = load i32, i32* %8, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %180, %170
  br label %233

186:                                              ; preds = %180
  store i32 0, i32* %14, align 4
  br label %187

187:                                              ; preds = %229, %186
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %232

191:                                              ; preds = %187
  %192 = load %struct.property*, %struct.property** %10, align 8
  %193 = getelementptr inbounds %struct.property, %struct.property* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  store i32* %194, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %195

195:                                              ; preds = %225, %191
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %12, align 4
  %198 = sdiv i32 %197, 2
  %199 = icmp slt i32 %196, %198
  br i1 %199, label %200, label %228

200:                                              ; preds = %195
  %201 = load i32*, i32** %11, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %11, align 8
  %203 = ptrtoint i32* %201 to i32
  %204 = call i64 @be32_to_cpup(i32 %203)
  store i64 %204, i64* %15, align 8
  %205 = load i32*, i32** %11, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %11, align 8
  %207 = ptrtoint i32* %205 to i32
  %208 = call i64 @be32_to_cpup(i32 %207)
  store i64 %208, i64* %16, align 8
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** @freq_table, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %15, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %200
  %218 = load i64, i64* %16, align 8
  %219 = load i64*, i64** @imx6_soc_volt, align 8
  %220 = load i32, i32* @soc_opp_count, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* @soc_opp_count, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i64, i64* %219, i64 %222
  store i64 %218, i64* %223, align 8
  br label %228

224:                                              ; preds = %200
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %13, align 4
  br label %195

228:                                              ; preds = %217, %195
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %14, align 4
  br label %187

232:                                              ; preds = %187
  br label %233

233:                                              ; preds = %232, %185, %169
  %234 = load i32, i32* @soc_opp_count, align 4
  %235 = load i32, i32* %8, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %273

237:                                              ; preds = %233
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %239 = call i32 @dev_warn(%struct.TYPE_21__* %238, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %240

240:                                              ; preds = %250, %237
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* %8, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %253

244:                                              ; preds = %240
  %245 = load i64, i64* @PU_SOC_VOLTAGE_NORMAL, align 8
  %246 = load i64*, i64** @imx6_soc_volt, align 8
  %247 = load i32, i32* %14, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  store i64 %245, i64* %249, align 8
  br label %250

250:                                              ; preds = %244
  %251 = load i32, i32* %14, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %14, align 4
  br label %240

253:                                              ; preds = %240
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** @freq_table, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sub nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = mul i64 %260, 1000
  %262 = load i32, i32* @FREQ_1P2_GHZ, align 4
  %263 = sext i32 %262 to i64
  %264 = icmp eq i64 %261, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %253
  %266 = load i64, i64* @PU_SOC_VOLTAGE_HIGH, align 8
  %267 = load i64*, i64** @imx6_soc_volt, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sub nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %267, i64 %270
  store i64 %266, i64* %271, align 8
  br label %272

272:                                              ; preds = %265, %253
  br label %273

273:                                              ; preds = %272, %233
  %274 = load %struct.device_node*, %struct.device_node** %4, align 8
  %275 = call i64 @of_property_read_u32(%struct.device_node* %274, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32* @transition_latency)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %273
  %278 = load i32, i32* @CPUFREQ_ETERNAL, align 4
  store i32 %278, i32* @transition_latency, align 4
  br label %279

279:                                              ; preds = %277, %273
  %280 = load i32, i32* @soc_reg, align 4
  %281 = load i64*, i64** @imx6_soc_volt, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64*, i64** @imx6_soc_volt, align 8
  %285 = load i32, i32* %8, align 4
  %286 = sub nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %284, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = call i32 @regulator_set_voltage_time(i32 %280, i64 %283, i64 %289)
  store i32 %290, i32* %9, align 4
  %291 = load i32, i32* %9, align 4
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %279
  %294 = load i32, i32* %9, align 4
  %295 = mul nsw i32 %294, 1000
  %296 = load i32, i32* @transition_latency, align 4
  %297 = add nsw i32 %296, %295
  store i32 %297, i32* @transition_latency, align 4
  br label %298

298:                                              ; preds = %293, %279
  %299 = load i32, i32* @pu_reg, align 4
  %300 = call i64 @IS_ERR(i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %322, label %302

302:                                              ; preds = %298
  %303 = load i32, i32* @pu_reg, align 4
  %304 = load i64*, i64** @imx6_soc_volt, align 8
  %305 = getelementptr inbounds i64, i64* %304, i64 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64*, i64** @imx6_soc_volt, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sub nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i64, i64* %307, i64 %310
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @regulator_set_voltage_time(i32 %303, i64 %306, i64 %312)
  store i32 %313, i32* %9, align 4
  %314 = load i32, i32* %9, align 4
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %302
  %317 = load i32, i32* %9, align 4
  %318 = mul nsw i32 %317, 1000
  %319 = load i32, i32* @transition_latency, align 4
  %320 = add nsw i32 %319, %318
  store i32 %320, i32* @transition_latency, align 4
  br label %321

321:                                              ; preds = %316, %302
  br label %322

322:                                              ; preds = %321, %298
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** @freq_table, align 8
  %324 = load i32, i32* %8, align 4
  %325 = add nsw i32 %324, -1
  store i32 %325, i32* %8, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* @max_freq, align 4
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** @freq_table, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i64 0
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = mul i64 %335, 1000
  %337 = trunc i64 %336 to i32
  %338 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_exact(%struct.TYPE_21__* %331, i32 %337, i32 1)
  store %struct.dev_pm_opp* %338, %struct.dev_pm_opp** %5, align 8
  %339 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %5, align 8
  %340 = call i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %339)
  store i64 %340, i64* %6, align 8
  %341 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %5, align 8
  %342 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %341)
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %344 = load i32, i32* @max_freq, align 4
  %345 = mul nsw i32 %344, 1000
  %346 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_exact(%struct.TYPE_21__* %343, i32 %345, i32 1)
  store %struct.dev_pm_opp* %346, %struct.dev_pm_opp** %5, align 8
  %347 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %5, align 8
  %348 = call i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %347)
  store i64 %348, i64* %7, align 8
  %349 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %5, align 8
  %350 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %349)
  %351 = load i32, i32* @arm_reg, align 4
  %352 = load i64, i64* %6, align 8
  %353 = load i64, i64* %7, align 8
  %354 = call i32 @regulator_set_voltage_time(i32 %351, i64 %352, i64 %353)
  store i32 %354, i32* %9, align 4
  %355 = load i32, i32* %9, align 4
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %322
  %358 = load i32, i32* %9, align 4
  %359 = mul nsw i32 %358, 1000
  %360 = load i32, i32* @transition_latency, align 4
  %361 = add nsw i32 %360, %359
  store i32 %361, i32* @transition_latency, align 4
  br label %362

362:                                              ; preds = %357, %322
  %363 = call i32 @cpufreq_register_driver(i32* @imx6q_cpufreq_driver)
  store i32 %363, i32* %9, align 4
  %364 = load i32, i32* %9, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %362
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %368 = load i32, i32* %9, align 4
  %369 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %367, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %368)
  br label %373

370:                                              ; preds = %362
  %371 = load %struct.device_node*, %struct.device_node** %4, align 8
  %372 = call i32 @of_node_put(%struct.device_node* %371)
  store i32 0, i32* %2, align 4
  br label %412

373:                                              ; preds = %366, %156
  %374 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %375 = call i32 @dev_pm_opp_free_cpufreq_table(%struct.TYPE_21__* %374, %struct.TYPE_22__** @freq_table)
  br label %376

376:                                              ; preds = %373, %145, %135
  %377 = load i32, i32* @free_opp, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cpu_dev, align 8
  %381 = call i32 @dev_pm_opp_of_remove_table(%struct.TYPE_21__* %380)
  br label %382

382:                                              ; preds = %379, %376
  br label %383

383:                                              ; preds = %382, %101, %91, %78
  %384 = load i32, i32* @arm_reg, align 4
  %385 = call i64 @IS_ERR(i32 %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %390, label %387

387:                                              ; preds = %383
  %388 = load i32, i32* @arm_reg, align 4
  %389 = call i32 @regulator_put(i32 %388)
  br label %390

390:                                              ; preds = %387, %383
  %391 = load i32, i32* @pu_reg, align 4
  %392 = call i64 @IS_ERR(i32 %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %390
  %395 = load i32, i32* @pu_reg, align 4
  %396 = call i32 @regulator_put(i32 %395)
  br label %397

397:                                              ; preds = %394, %390
  %398 = load i32, i32* @soc_reg, align 4
  %399 = call i64 @IS_ERR(i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %404, label %401

401:                                              ; preds = %397
  %402 = load i32, i32* @soc_reg, align 4
  %403 = call i32 @regulator_put(i32 %402)
  br label %404

404:                                              ; preds = %401, %397
  %405 = load i32, i32* @num_clks, align 4
  %406 = load i32, i32* @clks, align 4
  %407 = call i32 @clk_bulk_put(i32 %405, i32 %406)
  br label %408

408:                                              ; preds = %404, %122, %121, %53
  %409 = load %struct.device_node*, %struct.device_node** %4, align 8
  %410 = call i32 @of_node_put(%struct.device_node* %409)
  %411 = load i32, i32* %9, align 4
  store i32 %411, i32* %2, align 4
  br label %412

412:                                              ; preds = %408, %370, %31, %20
  %413 = load i32, i32* %2, align 4
  ret i32 %413
}

declare dso_local %struct.TYPE_21__* @get_cpu_device(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_21__*, i8*, ...) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @clk_bulk_get(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @regulator_get(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @regulator_get_optional(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_21__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_pm_opp_of_add_table(%struct.TYPE_21__*) #1

declare dso_local i32 @imx6ul_opp_check_speed_grading(%struct.TYPE_21__*) #1

declare dso_local i32 @imx6q_opp_check_speed_grading(%struct.TYPE_21__*) #1

declare dso_local i32 @dev_pm_opp_get_opp_count(%struct.TYPE_21__*) #1

declare dso_local i32 @dev_pm_opp_init_cpufreq_table(%struct.TYPE_21__*, %struct.TYPE_22__**) #1

declare dso_local i64* @devm_kcalloc(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @be32_to_cpup(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_21__*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @regulator_set_voltage_time(i32, i64, i64) #1

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_exact(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i32 @cpufreq_register_driver(i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_pm_opp_free_cpufreq_table(%struct.TYPE_21__*, %struct.TYPE_22__**) #1

declare dso_local i32 @dev_pm_opp_of_remove_table(%struct.TYPE_21__*) #1

declare dso_local i32 @regulator_put(i32) #1

declare dso_local i32 @clk_bulk_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
