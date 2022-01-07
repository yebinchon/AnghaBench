; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }
%struct.i2c_device_id = type { i32 }
%struct.clk_si5341 = type { i8*, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_18__, i32, %struct.i2c_client* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_18__, %struct.clk_si5341* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__, %struct.clk_si5341* }
%struct.TYPE_18__ = type { i32, %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32, i32* }
%struct.clk_si5341_output_config = type { i32, i32, i64, i64 }

@SI5341_NUM_SYNTH = common dso_local global i32 0, align 4
@SI5341_MAX_NUM_OUTPUTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xtal\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Missing xtal clock input\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@si5341_regmap_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"silabs,reprogram\00", align 1
@si5341_reg_defaults = common dso_local global i32 0, align 4
@si5341_clk_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"clock registration failed\0A\00", align 1
@si5341_synth_clk_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%s.N%u\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"synth N%u registration failed\0A\00", align 1
@si5341_output_clk_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"output %u registration failed\0A\00", align 1
@of_clk_si5341_get = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"unable to add clk provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si5341_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si5341_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.clk_si5341*, align 8
  %7 = alloca %struct.clk_init_data, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %16 = load i32, i32* @SI5341_NUM_SYNTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8*, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @SI5341_MAX_NUM_OUTPUTS, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca %struct.clk_si5341_output_config, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.clk_si5341* @devm_kzalloc(%struct.TYPE_17__* %24, i32 72, i32 %25)
  store %struct.clk_si5341* %26, %struct.clk_si5341** %6, align 8
  %27 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %28 = icmp ne %struct.clk_si5341* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

32:                                               ; preds = %2
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %35 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %34, i32 0, i32 8
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @devm_clk_get(%struct.TYPE_17__* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %40 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %42 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %32
  %47 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %48 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  %51 = load i32, i32* @EPROBE_DEFER, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @EPROBE_DEFER, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

57:                                               ; preds = %46
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %32
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = call i32 @si5341_dt_parse_dt(%struct.i2c_client* %62, %struct.clk_si5341_output_config* %22)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

68:                                               ; preds = %61
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  %74 = call i64 @of_property_read_string(%struct.TYPE_16__* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  br label %84

84:                                               ; preds = %76, %68
  %85 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %8, align 8
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %87, i32* @si5341_regmap_config)
  %89 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %90 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %92 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @IS_ERR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %84
  %97 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %98 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @PTR_ERR(i32 %99)
  store i32 %100, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

101:                                              ; preds = %84
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %104 = call i32 @i2c_set_clientdata(%struct.i2c_client* %102, %struct.clk_si5341* %103)
  %105 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %106 = call i32 @si5341_probe_chip_id(%struct.clk_si5341* %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

111:                                              ; preds = %101
  %112 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %113 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @clk_prepare_enable(i32 %114)
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = call i64 @of_property_read_bool(%struct.TYPE_16__* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  store i32 1, i32* %14, align 4
  br label %135

123:                                              ; preds = %111
  %124 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %125 = call i32 @si5341_is_programmed_already(%struct.clk_si5341* %124)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

130:                                              ; preds = %123
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %130, %122
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %174

138:                                              ; preds = %135
  %139 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %140 = call i32 @si5341_read_settings(%struct.clk_si5341* %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

145:                                              ; preds = %138
  %146 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %147 = call i32 @si5341_send_preamble(%struct.clk_si5341* %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

152:                                              ; preds = %145
  %153 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %154 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @regcache_cache_only(i32 %155, i32 1)
  %157 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %158 = load i32, i32* @si5341_reg_defaults, align 4
  %159 = load i32, i32* @si5341_reg_defaults, align 4
  %160 = call i32 @ARRAY_SIZE(i32 %159)
  %161 = call i32 @si5341_write_multiple(%struct.clk_si5341* %157, i32 %158, i32 %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %152
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

166:                                              ; preds = %152
  %167 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %168 = call i32 @si5341_initialize_pll(%struct.clk_si5341* %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173, %135
  %175 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %176 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 8
  %178 = call i8* @__clk_get_name(i32 %177)
  %179 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %180 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %179, i32 0, i32 0
  store i8* %178, i8** %180, align 8
  %181 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %182 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i8** %182, i8*** %183, align 8
  %184 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i32 1, i32* %184, align 8
  %185 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 4
  store i32* @si5341_clk_ops, i32** %185, align 8
  %186 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i32 0, i32* %186, align 4
  %187 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %188 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  store %struct.clk_init_data* %7, %struct.clk_init_data** %189, align 8
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %190, i32 0, i32 0
  %192 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %193 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %192, i32 0, i32 6
  %194 = call i32 @devm_clk_hw_register(%struct.TYPE_17__* %191, %struct.TYPE_18__* %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %174
  %198 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %199 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %198, i32 0, i32 0
  %200 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %199, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %201 = load i32, i32* %11, align 4
  store i32 %201, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

202:                                              ; preds = %174
  %203 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i32 1, i32* %203, align 8
  %204 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i8** %8, i8*** %204, align 8
  %205 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 4
  store i32* @si5341_synth_clk_ops, i32** %205, align 8
  store i32 0, i32* %12, align 4
  br label %206

206:                                              ; preds = %274, %202
  %207 = load i32, i32* %12, align 4
  %208 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %209 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = icmp ult i32 %207, %210
  br i1 %211, label %212, label %277

212:                                              ; preds = %206
  %213 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %214 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %213, i32 0, i32 0
  %215 = load i32, i32* @GFP_KERNEL, align 4
  %216 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %217 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = call i8* @devm_kasprintf(%struct.TYPE_17__* %214, i32 %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %221, i32 %222)
  %224 = load i32, i32* %12, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %19, i64 %225
  store i8* %223, i8** %226, align 8
  %227 = load i32, i32* %12, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %19, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i8* %230, i8** %231, align 8
  %232 = load i32, i32* %12, align 4
  %233 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %234 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %233, i32 0, i32 5
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %234, align 8
  %236 = load i32, i32* %12, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  store i32 %232, i32* %239, align 8
  %240 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %241 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %242 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %241, i32 0, i32 5
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %242, align 8
  %244 = load i32, i32* %12, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 2
  store %struct.clk_si5341* %240, %struct.clk_si5341** %247, align 8
  %248 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %249 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %248, i32 0, i32 5
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %249, align 8
  %251 = load i32, i32* %12, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 1
  store %struct.clk_init_data* %7, %struct.clk_init_data** %255, align 8
  %256 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %257 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %256, i32 0, i32 0
  %258 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %259 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %258, i32 0, i32 5
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 1
  %265 = call i32 @devm_clk_hw_register(%struct.TYPE_17__* %257, %struct.TYPE_18__* %264)
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %212
  %269 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %270 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %269, i32 0, i32 0
  %271 = load i32, i32* %12, align 4
  %272 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %270, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %268, %212
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %12, align 4
  %276 = add i32 %275, 1
  store i32 %276, i32* %12, align 4
  br label %206

277:                                              ; preds = %206
  %278 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %279 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i32 %280, i32* %281, align 8
  %282 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i8** %19, i8*** %282, align 8
  %283 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 4
  store i32* @si5341_output_clk_ops, i32** %283, align 8
  store i32 0, i32* %12, align 4
  br label %284

284:                                              ; preds = %418, %277
  %285 = load i32, i32* %12, align 4
  %286 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %287 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = icmp ult i32 %285, %288
  br i1 %289, label %290, label %421

290:                                              ; preds = %284
  %291 = load i32, i32* @GFP_KERNEL, align 4
  %292 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %293 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = load i32, i32* %12, align 4
  %299 = call i8* @kasprintf(i32 %291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %297, i32 %298)
  %300 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i8* %299, i8** %300, align 8
  %301 = load i32, i32* %12, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.clk_si5341_output_config, %struct.clk_si5341_output_config* %22, i64 %302
  %304 = getelementptr inbounds %struct.clk_si5341_output_config, %struct.clk_si5341_output_config* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %290
  %308 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  br label %310

309:                                              ; preds = %290
  br label %310

310:                                              ; preds = %309, %307
  %311 = phi i32 [ %308, %307 ], [ 0, %309 ]
  %312 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i32 %311, i32* %312, align 4
  %313 = load i32, i32* %12, align 4
  %314 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %315 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %314, i32 0, i32 4
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %315, align 8
  %317 = load i32, i32* %12, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 0
  store i32 %313, i32* %320, align 8
  %321 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %322 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %323 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %322, i32 0, i32 4
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %323, align 8
  %325 = load i32, i32* %12, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 2
  store %struct.clk_si5341* %321, %struct.clk_si5341** %328, align 8
  %329 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %330 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %329, i32 0, i32 4
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %330, align 8
  %332 = load i32, i32* %12, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 1
  store %struct.clk_init_data* %7, %struct.clk_init_data** %336, align 8
  %337 = load i32, i32* %12, align 4
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds %struct.clk_si5341_output_config, %struct.clk_si5341_output_config* %22, i64 %338
  %340 = getelementptr inbounds %struct.clk_si5341_output_config, %struct.clk_si5341_output_config* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = and i32 %341, 7
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %377

344:                                              ; preds = %310
  %345 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %346 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %349 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %348, i32 0, i32 4
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %349, align 8
  %351 = load i32, i32* %12, align 4
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i64 %352
  %354 = call i32 @SI5341_OUT_FORMAT(%struct.TYPE_14__* %353)
  %355 = load i32, i32* %12, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds %struct.clk_si5341_output_config, %struct.clk_si5341_output_config* %22, i64 %356
  %358 = getelementptr inbounds %struct.clk_si5341_output_config, %struct.clk_si5341_output_config* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @regmap_write(i32 %347, i32 %354, i32 %359)
  %361 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %362 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %365 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %364, i32 0, i32 4
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %365, align 8
  %367 = load i32, i32* %12, align 4
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i64 %368
  %370 = call i32 @SI5341_OUT_CM(%struct.TYPE_14__* %369)
  %371 = load i32, i32* %12, align 4
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds %struct.clk_si5341_output_config, %struct.clk_si5341_output_config* %22, i64 %372
  %374 = getelementptr inbounds %struct.clk_si5341_output_config, %struct.clk_si5341_output_config* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @regmap_write(i32 %363, i32 %370, i32 %375)
  br label %377

377:                                              ; preds = %344, %310
  %378 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %379 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %378, i32 0, i32 0
  %380 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %381 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %380, i32 0, i32 4
  %382 = load %struct.TYPE_14__*, %struct.TYPE_14__** %381, align 8
  %383 = load i32, i32* %12, align 4
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 1
  %387 = call i32 @devm_clk_hw_register(%struct.TYPE_17__* %379, %struct.TYPE_18__* %386)
  store i32 %387, i32* %11, align 4
  %388 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 @kfree(i8* %389)
  %391 = load i32, i32* %11, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %399

393:                                              ; preds = %377
  %394 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %395 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %394, i32 0, i32 0
  %396 = load i32, i32* %12, align 4
  %397 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %395, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %396)
  %398 = load i32, i32* %11, align 4
  store i32 %398, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

399:                                              ; preds = %377
  %400 = load i32, i32* %12, align 4
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds %struct.clk_si5341_output_config, %struct.clk_si5341_output_config* %22, i64 %401
  %403 = getelementptr inbounds %struct.clk_si5341_output_config, %struct.clk_si5341_output_config* %402, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %417

406:                                              ; preds = %399
  %407 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %408 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %407, i32 0, i32 4
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %408, align 8
  %410 = load i32, i32* %12, align 4
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = call i32 @clk_prepare(i32 %415)
  br label %417

417:                                              ; preds = %406, %399
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %12, align 4
  %420 = add i32 %419, 1
  store i32 %420, i32* %12, align 4
  br label %284

421:                                              ; preds = %284
  %422 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %423 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_16__*, %struct.TYPE_16__** %424, align 8
  %426 = load i32, i32* @of_clk_si5341_get, align 4
  %427 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %428 = call i32 @of_clk_add_hw_provider(%struct.TYPE_16__* %425, i32 %426, %struct.clk_si5341* %427)
  store i32 %428, i32* %11, align 4
  %429 = load i32, i32* %11, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %421
  %432 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %433 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %432, i32 0, i32 0
  %434 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %433, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %435 = load i32, i32* %11, align 4
  store i32 %435, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

436:                                              ; preds = %421
  %437 = load i32, i32* %14, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %460

439:                                              ; preds = %436
  %440 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %441 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @regcache_cache_only(i32 %442, i32 0)
  %444 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %445 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %444, i32 0, i32 3
  %446 = load i32, i32* %445, align 8
  %447 = call i32 @regcache_sync(i32 %446)
  store i32 %447, i32* %11, align 4
  %448 = load i32, i32* %11, align 4
  %449 = icmp slt i32 %448, 0
  br i1 %449, label %450, label %452

450:                                              ; preds = %439
  %451 = load i32, i32* %11, align 4
  store i32 %451, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

452:                                              ; preds = %439
  %453 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %454 = call i32 @si5341_finalize_defaults(%struct.clk_si5341* %453)
  store i32 %454, i32* %11, align 4
  %455 = load i32, i32* %11, align 4
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %452
  %458 = load i32, i32* %11, align 4
  store i32 %458, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

459:                                              ; preds = %452
  br label %460

460:                                              ; preds = %459, %436
  store i32 0, i32* %12, align 4
  br label %461

461:                                              ; preds = %475, %460
  %462 = load i32, i32* %12, align 4
  %463 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %464 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 8
  %466 = icmp ult i32 %462, %465
  br i1 %466, label %467, label %478

467:                                              ; preds = %461
  %468 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %469 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %468, i32 0, i32 0
  %470 = load i32, i32* %12, align 4
  %471 = zext i32 %470 to i64
  %472 = getelementptr inbounds i8*, i8** %19, i64 %471
  %473 = load i8*, i8** %472, align 8
  %474 = call i32 @devm_kfree(%struct.TYPE_17__* %469, i8* %473)
  br label %475

475:                                              ; preds = %467
  %476 = load i32, i32* %12, align 4
  %477 = add i32 %476, 1
  store i32 %477, i32* %12, align 4
  br label %461

478:                                              ; preds = %461
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %479

479:                                              ; preds = %478, %457, %450, %431, %393, %197, %171, %164, %150, %143, %128, %109, %96, %66, %54, %29
  %480 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %480)
  %481 = load i32, i32* %3, align 4
  ret i32 %481
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.clk_si5341* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @devm_clk_get(%struct.TYPE_17__*, i8*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, ...) #2

declare dso_local i32 @si5341_dt_parse_dt(%struct.i2c_client*, %struct.clk_si5341_output_config*) #2

declare dso_local i64 @of_property_read_string(%struct.TYPE_16__*, i8*, i8**) #2

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.clk_si5341*) #2

declare dso_local i32 @si5341_probe_chip_id(%struct.clk_si5341*) #2

declare dso_local i32 @clk_prepare_enable(i32) #2

declare dso_local i64 @of_property_read_bool(%struct.TYPE_16__*, i8*) #2

declare dso_local i32 @si5341_is_programmed_already(%struct.clk_si5341*) #2

declare dso_local i32 @si5341_read_settings(%struct.clk_si5341*) #2

declare dso_local i32 @si5341_send_preamble(%struct.clk_si5341*) #2

declare dso_local i32 @regcache_cache_only(i32, i32) #2

declare dso_local i32 @si5341_write_multiple(%struct.clk_si5341*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @si5341_initialize_pll(%struct.clk_si5341*) #2

declare dso_local i8* @__clk_get_name(i32) #2

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_17__*, %struct.TYPE_18__*) #2

declare dso_local i8* @devm_kasprintf(%struct.TYPE_17__*, i32, i8*, i8*, i32) #2

declare dso_local i8* @kasprintf(i32, i8*, i8*, i32) #2

declare dso_local i32 @regmap_write(i32, i32, i32) #2

declare dso_local i32 @SI5341_OUT_FORMAT(%struct.TYPE_14__*) #2

declare dso_local i32 @SI5341_OUT_CM(%struct.TYPE_14__*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @clk_prepare(i32) #2

declare dso_local i32 @of_clk_add_hw_provider(%struct.TYPE_16__*, i32, %struct.clk_si5341*) #2

declare dso_local i32 @regcache_sync(i32) #2

declare dso_local i32 @si5341_finalize_defaults(%struct.clk_si5341*) #2

declare dso_local i32 @devm_kfree(%struct.TYPE_17__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
