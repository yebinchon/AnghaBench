; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c_si5351_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c_si5351_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.si5351_platform_data* }
%struct.si5351_platform_data = type { %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { i64, i64, i64, i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.si5351_driver_data = type { i32, i8*, i8*, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_16__, i8*, %struct.TYPE_16__, i8*, i8*, %struct.i2c_client* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__, %struct.si5351_driver_data* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_16__, %struct.si5351_driver_data* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_16__, %struct.si5351_driver_data* }
%struct.TYPE_16__ = type { i32, %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i8*, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xtal\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clkin\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@SI5351_VARIANT_C = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"missing parent clock\0A\00", align 1
@si5351_regmap_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@SI5351_INTERRUPT_MASK = common dso_local global i32 0, align 4
@SI5351_PLL_INPUT_SOURCE = common dso_local global i32 0, align 4
@SI5351_PLLA_SOURCE = common dso_local global i32 0, align 4
@SI5351_PLLB_SOURCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to reparent pll %d to %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to reparent multisynth %d to %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to reparent clkout %d to %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"failed set drive strength of clkout%d to %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"failed set disable state of clkout%d to %d\0A\00", align 1
@si5351_input_names = common dso_local global i8** null, align 8
@si5351_xtal_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"unable to register %s\0A\00", align 1
@si5351_clkin_ops = common dso_local global i32 0, align 4
@si5351_pll_names = common dso_local global i8** null, align 8
@si5351_pll_ops = common dso_local global i32 0, align 4
@SI5351_VARIANT_B = common dso_local global i64 0, align 8
@si5351_vxco_ops = common dso_local global i32 0, align 4
@SI5351_VARIANT_A3 = common dso_local global i64 0, align 8
@si5351_msynth_names = common dso_local global i8** null, align 8
@si5351_msynth_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@si5351_clkout_names = common dso_local global i8** null, align 8
@si5351_clkout_ops = common dso_local global i32 0, align 4
@SI5351_CLKOUT_SRC_MSYNTH_N = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"Cannot set rate : %d\0A\00", align 1
@si53351_of_clk_get = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"unable to add clk provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si5351_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si5351_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.si5351_platform_data*, align 8
  %8 = alloca %struct.si5351_driver_data*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  %10 = alloca [4 x i8*], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %16 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @si5351_dt_parse(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %3, align 4
  br label %832

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %29, align 8
  store %struct.si5351_platform_data* %30, %struct.si5351_platform_data** %7, align 8
  %31 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %32 = icmp ne %struct.si5351_platform_data* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %832

36:                                               ; preds = %26
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.si5351_driver_data* @devm_kzalloc(%struct.TYPE_15__* %38, i32 120, i32 %39)
  store %struct.si5351_driver_data* %40, %struct.si5351_driver_data** %8, align 8
  %41 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %42 = icmp ne %struct.si5351_driver_data* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %832

46:                                               ; preds = %36
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %49 = call i32 @i2c_set_clientdata(%struct.i2c_client* %47, %struct.si5351_driver_data* %48)
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %52 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %51, i32 0, i32 12
  store %struct.i2c_client* %50, %struct.i2c_client** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %55 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = call i8* @devm_clk_get(%struct.TYPE_15__* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %60 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %59, i32 0, i32 10
  store i8* %58, i8** %60, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i8* @devm_clk_get(%struct.TYPE_15__* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %65 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %67 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %66, i32 0, i32 10
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  %70 = load i32, i32* @EPROBE_DEFER, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %46
  %74 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %75 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %74, i32 0, i32 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR(i8* %76)
  %78 = load i32, i32* @EPROBE_DEFER, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73, %46
  %82 = load i32, i32* @EPROBE_DEFER, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %832

84:                                               ; preds = %73
  %85 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %86 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %85, i32 0, i32 10
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @IS_ERR(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %84
  %91 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %92 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @SI5351_VARIANT_C, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %90
  %98 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %99 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %98, i32 0, i32 8
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @IS_ERR(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97, %90
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %832

109:                                              ; preds = %97, %84
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %110, i32* @si5351_regmap_config)
  %112 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %113 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %112, i32 0, i32 11
  store i8* %111, i8** %113, align 8
  %114 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %115 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %114, i32 0, i32 11
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @IS_ERR(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %109
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 0
  %122 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %123 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %124 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %123, i32 0, i32 11
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @PTR_ERR(i8* %125)
  store i32 %126, i32* %3, align 4
  br label %832

127:                                              ; preds = %109
  %128 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %129 = load i32, i32* @SI5351_INTERRUPT_MASK, align 4
  %130 = call i32 @si5351_reg_write(%struct.si5351_driver_data* %128, i32 %129, i32 240)
  %131 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %132 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @SI5351_VARIANT_C, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %127
  %138 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %139 = load i32, i32* @SI5351_PLL_INPUT_SOURCE, align 4
  %140 = load i32, i32* @SI5351_PLLA_SOURCE, align 4
  %141 = load i32, i32* @SI5351_PLLB_SOURCE, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @si5351_set_bits(%struct.si5351_driver_data* %138, i32 %139, i32 %142, i32 0)
  br label %144

144:                                              ; preds = %137, %127
  store i32 0, i32* %14, align 4
  br label %145

145:                                              ; preds = %175, %144
  %146 = load i32, i32* %14, align 4
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %178

148:                                              ; preds = %145
  %149 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %150 = load i32, i32* %14, align 4
  %151 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %152 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @_si5351_pll_reparent(%struct.si5351_driver_data* %149, i32 %150, i32 %157)
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %148
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 0
  %164 = load i32, i32* %14, align 4
  %165 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %166 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %163, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %164, i32 %171)
  %173 = load i32, i32* %13, align 4
  store i32 %173, i32* %3, align 4
  br label %832

174:                                              ; preds = %148
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %145

178:                                              ; preds = %145
  store i32 0, i32* %14, align 4
  br label %179

179:                                              ; preds = %295, %178
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %180, 8
  br i1 %181, label %182, label %298

182:                                              ; preds = %179
  %183 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %184 = load i32, i32* %14, align 4
  %185 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %186 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %185, i32 0, i32 0
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @_si5351_msynth_reparent(%struct.si5351_driver_data* %183, i32 %184, i32 %192)
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %182
  %197 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %198 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %197, i32 0, i32 0
  %199 = load i32, i32* %14, align 4
  %200 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %201 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %200, i32 0, i32 0
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %198, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %199, i32 %207)
  %209 = load i32, i32* %13, align 4
  store i32 %209, i32* %3, align 4
  br label %832

210:                                              ; preds = %182
  %211 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %212 = load i32, i32* %14, align 4
  %213 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %214 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %213, i32 0, i32 0
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @_si5351_clkout_reparent(%struct.si5351_driver_data* %211, i32 %212, i64 %220)
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %210
  %225 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %226 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %225, i32 0, i32 0
  %227 = load i32, i32* %14, align 4
  %228 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %229 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %228, i32 0, i32 0
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %229, align 8
  %231 = load i32, i32* %14, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %226, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %227, i64 %235)
  %237 = load i32, i32* %13, align 4
  store i32 %237, i32* %3, align 4
  br label %832

238:                                              ; preds = %210
  %239 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %240 = load i32, i32* %14, align 4
  %241 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %242 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %241, i32 0, i32 0
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %242, align 8
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @_si5351_clkout_set_drive_strength(%struct.si5351_driver_data* %239, i32 %240, i32 %248)
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %13, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %266

252:                                              ; preds = %238
  %253 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %254 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %253, i32 0, i32 0
  %255 = load i32, i32* %14, align 4
  %256 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %257 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %256, i32 0, i32 0
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %257, align 8
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %254, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %255, i32 %263)
  %265 = load i32, i32* %13, align 4
  store i32 %265, i32* %3, align 4
  br label %832

266:                                              ; preds = %238
  %267 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %268 = load i32, i32* %14, align 4
  %269 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %270 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %269, i32 0, i32 0
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %270, align 8
  %272 = load i32, i32* %14, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @_si5351_clkout_set_disable_state(%struct.si5351_driver_data* %267, i32 %268, i32 %276)
  store i32 %277, i32* %13, align 4
  %278 = load i32, i32* %13, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %294

280:                                              ; preds = %266
  %281 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %282 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %281, i32 0, i32 0
  %283 = load i32, i32* %14, align 4
  %284 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %285 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %284, i32 0, i32 0
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %285, align 8
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %282, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %283, i32 %291)
  %293 = load i32, i32* %13, align 4
  store i32 %293, i32* %3, align 4
  br label %832

294:                                              ; preds = %266
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %14, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %14, align 4
  br label %179

298:                                              ; preds = %179
  %299 = call i32 @memset(%struct.clk_init_data* %9, i32 0, i32 40)
  %300 = load i8**, i8*** @si5351_input_names, align 8
  %301 = getelementptr inbounds i8*, i8** %300, i64 0
  %302 = load i8*, i8** %301, align 8
  %303 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i8* %302, i8** %303, align 8
  %304 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* @si5351_xtal_ops, i32** %304, align 8
  %305 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32 0, i32* %305, align 8
  %306 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %307 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %306, i32 0, i32 10
  %308 = load i8*, i8** %307, align 8
  %309 = call i64 @IS_ERR(i8* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %322, label %311

311:                                              ; preds = %298
  %312 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %313 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %312, i32 0, i32 10
  %314 = load i8*, i8** %313, align 8
  %315 = call i8* @__clk_get_name(i8* %314)
  %316 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %317 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %316, i32 0, i32 1
  store i8* %315, i8** %317, align 8
  %318 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %319 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8** %319, i8*** %320, align 8
  %321 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 1, i32* %321, align 8
  br label %322

322:                                              ; preds = %311, %298
  %323 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %324 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %323, i32 0, i32 9
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 1
  store %struct.clk_init_data* %9, %struct.clk_init_data** %325, align 8
  %326 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %327 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %326, i32 0, i32 0
  %328 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %329 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %328, i32 0, i32 9
  %330 = call i32 @devm_clk_hw_register(%struct.TYPE_15__* %327, %struct.TYPE_16__* %329)
  store i32 %330, i32* %13, align 4
  %331 = load i32, i32* %13, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %322
  %334 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %335 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  %337 = load i8*, i8** %336, align 8
  %338 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %335, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %337)
  %339 = load i32, i32* %13, align 4
  store i32 %339, i32* %3, align 4
  br label %832

340:                                              ; preds = %322
  %341 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %342 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = load i64, i64* @SI5351_VARIANT_C, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %389

347:                                              ; preds = %340
  %348 = call i32 @memset(%struct.clk_init_data* %9, i32 0, i32 40)
  %349 = load i8**, i8*** @si5351_input_names, align 8
  %350 = getelementptr inbounds i8*, i8** %349, i64 1
  %351 = load i8*, i8** %350, align 8
  %352 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i8* %351, i8** %352, align 8
  %353 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* @si5351_clkin_ops, i32** %353, align 8
  %354 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %355 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %354, i32 0, i32 8
  %356 = load i8*, i8** %355, align 8
  %357 = call i64 @IS_ERR(i8* %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %370, label %359

359:                                              ; preds = %347
  %360 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %361 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %360, i32 0, i32 8
  %362 = load i8*, i8** %361, align 8
  %363 = call i8* @__clk_get_name(i8* %362)
  %364 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %365 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %364, i32 0, i32 2
  store i8* %363, i8** %365, align 8
  %366 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %367 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8** %367, i8*** %368, align 8
  %369 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 1, i32* %369, align 8
  br label %370

370:                                              ; preds = %359, %347
  %371 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %372 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %371, i32 0, i32 7
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 1
  store %struct.clk_init_data* %9, %struct.clk_init_data** %373, align 8
  %374 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %375 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %374, i32 0, i32 0
  %376 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %377 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %376, i32 0, i32 7
  %378 = call i32 @devm_clk_hw_register(%struct.TYPE_15__* %375, %struct.TYPE_16__* %377)
  store i32 %378, i32* %13, align 4
  %379 = load i32, i32* %13, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %370
  %382 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %383 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  %385 = load i8*, i8** %384, align 8
  %386 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %383, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %385)
  %387 = load i32, i32* %13, align 4
  store i32 %387, i32* %3, align 4
  br label %832

388:                                              ; preds = %370
  br label %389

389:                                              ; preds = %388, %340
  %390 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %391 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = sext i32 %392 to i64
  %394 = load i64, i64* @SI5351_VARIANT_C, align 8
  %395 = icmp eq i64 %393, %394
  %396 = zext i1 %395 to i64
  %397 = select i1 %395, i32 2, i32 1
  store i32 %397, i32* %11, align 4
  %398 = load i8**, i8*** @si5351_input_names, align 8
  %399 = getelementptr inbounds i8*, i8** %398, i64 0
  %400 = load i8*, i8** %399, align 8
  %401 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  store i8* %400, i8** %401, align 16
  %402 = load i8**, i8*** @si5351_input_names, align 8
  %403 = getelementptr inbounds i8*, i8** %402, i64 1
  %404 = load i8*, i8** %403, align 8
  %405 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  store i8* %404, i8** %405, align 8
  %406 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %407 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %406, i32 0, i32 6
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i64 0
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 0
  store i32 0, i32* %410, align 8
  %411 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %412 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %413 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %412, i32 0, i32 6
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i64 0
  %416 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %415, i32 0, i32 2
  store %struct.si5351_driver_data* %411, %struct.si5351_driver_data** %416, align 8
  %417 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %418 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %417, i32 0, i32 6
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i64 0
  %421 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %421, i32 0, i32 1
  store %struct.clk_init_data* %9, %struct.clk_init_data** %422, align 8
  %423 = call i32 @memset(%struct.clk_init_data* %9, i32 0, i32 40)
  %424 = load i8**, i8*** @si5351_pll_names, align 8
  %425 = getelementptr inbounds i8*, i8** %424, i64 0
  %426 = load i8*, i8** %425, align 8
  %427 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i8* %426, i8** %427, align 8
  %428 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* @si5351_pll_ops, i32** %428, align 8
  %429 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32 0, i32* %429, align 8
  %430 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %431 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8** %430, i8*** %431, align 8
  %432 = load i32, i32* %11, align 4
  %433 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 %432, i32* %433, align 8
  %434 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %435 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %434, i32 0, i32 0
  %436 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %437 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %436, i32 0, i32 6
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i64 0
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 1
  %441 = call i32 @devm_clk_hw_register(%struct.TYPE_15__* %435, %struct.TYPE_16__* %440)
  store i32 %441, i32* %13, align 4
  %442 = load i32, i32* %13, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %451

444:                                              ; preds = %389
  %445 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %446 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  %448 = load i8*, i8** %447, align 8
  %449 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %446, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %448)
  %450 = load i32, i32* %13, align 4
  store i32 %450, i32* %3, align 4
  br label %832

451:                                              ; preds = %389
  %452 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %453 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %452, i32 0, i32 6
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i64 1
  %456 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i32 0, i32 0
  store i32 1, i32* %456, align 8
  %457 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %458 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %459 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %458, i32 0, i32 6
  %460 = load %struct.TYPE_11__*, %struct.TYPE_11__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i64 1
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 2
  store %struct.si5351_driver_data* %457, %struct.si5351_driver_data** %462, align 8
  %463 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %464 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %463, i32 0, i32 6
  %465 = load %struct.TYPE_11__*, %struct.TYPE_11__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %465, i64 1
  %467 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %467, i32 0, i32 1
  store %struct.clk_init_data* %9, %struct.clk_init_data** %468, align 8
  %469 = call i32 @memset(%struct.clk_init_data* %9, i32 0, i32 40)
  %470 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %471 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = sext i32 %472 to i64
  %474 = load i64, i64* @SI5351_VARIANT_B, align 8
  %475 = icmp eq i64 %473, %474
  br i1 %475, label %476, label %485

476:                                              ; preds = %451
  %477 = load i8**, i8*** @si5351_pll_names, align 8
  %478 = getelementptr inbounds i8*, i8** %477, i64 2
  %479 = load i8*, i8** %478, align 8
  %480 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i8* %479, i8** %480, align 8
  %481 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* @si5351_vxco_ops, i32** %481, align 8
  %482 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32 0, i32* %482, align 8
  %483 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8** null, i8*** %483, align 8
  %484 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 0, i32* %484, align 8
  br label %496

485:                                              ; preds = %451
  %486 = load i8**, i8*** @si5351_pll_names, align 8
  %487 = getelementptr inbounds i8*, i8** %486, i64 1
  %488 = load i8*, i8** %487, align 8
  %489 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i8* %488, i8** %489, align 8
  %490 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* @si5351_pll_ops, i32** %490, align 8
  %491 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32 0, i32* %491, align 8
  %492 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %493 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8** %492, i8*** %493, align 8
  %494 = load i32, i32* %11, align 4
  %495 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 %494, i32* %495, align 8
  br label %496

496:                                              ; preds = %485, %476
  %497 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %498 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %497, i32 0, i32 0
  %499 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %500 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %499, i32 0, i32 6
  %501 = load %struct.TYPE_11__*, %struct.TYPE_11__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %501, i64 1
  %503 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %502, i32 0, i32 1
  %504 = call i32 @devm_clk_hw_register(%struct.TYPE_15__* %498, %struct.TYPE_16__* %503)
  store i32 %504, i32* %13, align 4
  %505 = load i32, i32* %13, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %514

507:                                              ; preds = %496
  %508 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %509 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %508, i32 0, i32 0
  %510 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  %511 = load i8*, i8** %510, align 8
  %512 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %509, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %511)
  %513 = load i32, i32* %13, align 4
  store i32 %513, i32* %3, align 4
  br label %832

514:                                              ; preds = %496
  %515 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %516 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = sext i32 %517 to i64
  %519 = load i64, i64* @SI5351_VARIANT_A3, align 8
  %520 = icmp eq i64 %518, %519
  %521 = zext i1 %520 to i64
  %522 = select i1 %520, i32 3, i32 8
  store i32 %522, i32* %12, align 4
  %523 = load i8**, i8*** @si5351_pll_names, align 8
  %524 = getelementptr inbounds i8*, i8** %523, i64 0
  %525 = load i8*, i8** %524, align 8
  %526 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  store i8* %525, i8** %526, align 16
  %527 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %528 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = sext i32 %529 to i64
  %531 = load i64, i64* @SI5351_VARIANT_B, align 8
  %532 = icmp eq i64 %530, %531
  br i1 %532, label %533, label %538

533:                                              ; preds = %514
  %534 = load i8**, i8*** @si5351_pll_names, align 8
  %535 = getelementptr inbounds i8*, i8** %534, i64 2
  %536 = load i8*, i8** %535, align 8
  %537 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  store i8* %536, i8** %537, align 8
  br label %543

538:                                              ; preds = %514
  %539 = load i8**, i8*** @si5351_pll_names, align 8
  %540 = getelementptr inbounds i8*, i8** %539, i64 1
  %541 = load i8*, i8** %540, align 8
  %542 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  store i8* %541, i8** %542, align 8
  br label %543

543:                                              ; preds = %538, %533
  %544 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %545 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %544, i32 0, i32 0
  %546 = load i32, i32* %12, align 4
  %547 = load i32, i32* @GFP_KERNEL, align 4
  %548 = call i8* @devm_kcalloc(%struct.TYPE_15__* %545, i32 %546, i32 32, i32 %547)
  %549 = bitcast i8* %548 to %struct.TYPE_12__*
  %550 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %551 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %550, i32 0, i32 5
  store %struct.TYPE_12__* %549, %struct.TYPE_12__** %551, align 8
  %552 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %553 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %552, i32 0, i32 0
  %554 = load i32, i32* %12, align 4
  %555 = load i32, i32* @GFP_KERNEL, align 4
  %556 = call i8* @devm_kcalloc(%struct.TYPE_15__* %553, i32 %554, i32 32, i32 %555)
  %557 = bitcast i8* %556 to %struct.TYPE_13__*
  %558 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %559 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %558, i32 0, i32 4
  store %struct.TYPE_13__* %557, %struct.TYPE_13__** %559, align 8
  %560 = load i32, i32* %12, align 4
  %561 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %562 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %561, i32 0, i32 3
  store i32 %560, i32* %562, align 8
  %563 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %564 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %563, i32 0, i32 5
  %565 = load %struct.TYPE_12__*, %struct.TYPE_12__** %564, align 8
  %566 = icmp ne %struct.TYPE_12__* %565, null
  br i1 %566, label %567, label %573

567:                                              ; preds = %543
  %568 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %569 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %568, i32 0, i32 4
  %570 = load %struct.TYPE_13__*, %struct.TYPE_13__** %569, align 8
  %571 = icmp ne %struct.TYPE_13__* %570, null
  %572 = xor i1 %571, true
  br label %573

573:                                              ; preds = %567, %543
  %574 = phi i1 [ true, %543 ], [ %572, %567 ]
  %575 = zext i1 %574 to i32
  %576 = call i64 @WARN_ON(i32 %575)
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %582

578:                                              ; preds = %573
  %579 = load i32, i32* @ENOMEM, align 4
  %580 = sub nsw i32 0, %579
  store i32 %580, i32* %13, align 4
  %581 = load i32, i32* %13, align 4
  store i32 %581, i32* %3, align 4
  br label %832

582:                                              ; preds = %573
  store i32 0, i32* %14, align 4
  br label %583

583:                                              ; preds = %659, %582
  %584 = load i32, i32* %14, align 4
  %585 = load i32, i32* %12, align 4
  %586 = icmp slt i32 %584, %585
  br i1 %586, label %587, label %662

587:                                              ; preds = %583
  %588 = load i32, i32* %14, align 4
  %589 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %590 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %589, i32 0, i32 5
  %591 = load %struct.TYPE_12__*, %struct.TYPE_12__** %590, align 8
  %592 = load i32, i32* %14, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %591, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %594, i32 0, i32 0
  store i32 %588, i32* %595, align 8
  %596 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %597 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %598 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %597, i32 0, i32 5
  %599 = load %struct.TYPE_12__*, %struct.TYPE_12__** %598, align 8
  %600 = load i32, i32* %14, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %599, i64 %601
  %603 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %602, i32 0, i32 2
  store %struct.si5351_driver_data* %596, %struct.si5351_driver_data** %603, align 8
  %604 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %605 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %604, i32 0, i32 5
  %606 = load %struct.TYPE_12__*, %struct.TYPE_12__** %605, align 8
  %607 = load i32, i32* %14, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %606, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %609, i32 0, i32 1
  %611 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %610, i32 0, i32 1
  store %struct.clk_init_data* %9, %struct.clk_init_data** %611, align 8
  %612 = call i32 @memset(%struct.clk_init_data* %9, i32 0, i32 40)
  %613 = load i8**, i8*** @si5351_msynth_names, align 8
  %614 = load i32, i32* %14, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i8*, i8** %613, i64 %615
  %617 = load i8*, i8** %616, align 8
  %618 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i8* %617, i8** %618, align 8
  %619 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* @si5351_msynth_ops, i32** %619, align 8
  %620 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32 0, i32* %620, align 8
  %621 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %622 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %621, i32 0, i32 0
  %623 = load %struct.TYPE_14__*, %struct.TYPE_14__** %622, align 8
  %624 = load i32, i32* %14, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %623, i64 %625
  %627 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %626, i32 0, i32 2
  %628 = load i64, i64* %627, align 8
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %630, label %635

630:                                              ; preds = %587
  %631 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %632 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  %633 = load i32, i32* %632, align 8
  %634 = or i32 %633, %631
  store i32 %634, i32* %632, align 8
  br label %635

635:                                              ; preds = %630, %587
  %636 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %637 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8** %636, i8*** %637, align 8
  %638 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 2, i32* %638, align 8
  %639 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %640 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %639, i32 0, i32 0
  %641 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %642 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %641, i32 0, i32 5
  %643 = load %struct.TYPE_12__*, %struct.TYPE_12__** %642, align 8
  %644 = load i32, i32* %14, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %643, i64 %645
  %647 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %646, i32 0, i32 1
  %648 = call i32 @devm_clk_hw_register(%struct.TYPE_15__* %640, %struct.TYPE_16__* %647)
  store i32 %648, i32* %13, align 4
  %649 = load i32, i32* %13, align 4
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %658

651:                                              ; preds = %635
  %652 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %653 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %652, i32 0, i32 0
  %654 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  %655 = load i8*, i8** %654, align 8
  %656 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %653, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %655)
  %657 = load i32, i32* %13, align 4
  store i32 %657, i32* %3, align 4
  br label %832

658:                                              ; preds = %635
  br label %659

659:                                              ; preds = %658
  %660 = load i32, i32* %14, align 4
  %661 = add nsw i32 %660, 1
  store i32 %661, i32* %14, align 4
  br label %583

662:                                              ; preds = %583
  %663 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %664 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 8
  %666 = sext i32 %665 to i64
  %667 = load i64, i64* @SI5351_VARIANT_C, align 8
  %668 = icmp eq i64 %666, %667
  %669 = zext i1 %668 to i64
  %670 = select i1 %668, i32 4, i32 3
  store i32 %670, i32* %11, align 4
  %671 = load i8**, i8*** @si5351_input_names, align 8
  %672 = getelementptr inbounds i8*, i8** %671, i64 0
  %673 = load i8*, i8** %672, align 8
  %674 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 2
  store i8* %673, i8** %674, align 16
  %675 = load i8**, i8*** @si5351_input_names, align 8
  %676 = getelementptr inbounds i8*, i8** %675, i64 1
  %677 = load i8*, i8** %676, align 8
  %678 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 3
  store i8* %677, i8** %678, align 8
  store i32 0, i32* %14, align 4
  br label %679

679:                                              ; preds = %813, %662
  %680 = load i32, i32* %14, align 4
  %681 = load i32, i32* %12, align 4
  %682 = icmp slt i32 %680, %681
  br i1 %682, label %683, label %816

683:                                              ; preds = %679
  %684 = load i8**, i8*** @si5351_msynth_names, align 8
  %685 = load i32, i32* %14, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i8*, i8** %684, i64 %686
  %688 = load i8*, i8** %687, align 8
  %689 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  store i8* %688, i8** %689, align 16
  %690 = load i32, i32* %14, align 4
  %691 = icmp slt i32 %690, 4
  br i1 %691, label %692, label %696

692:                                              ; preds = %683
  %693 = load i8**, i8*** @si5351_msynth_names, align 8
  %694 = getelementptr inbounds i8*, i8** %693, i64 0
  %695 = load i8*, i8** %694, align 8
  br label %700

696:                                              ; preds = %683
  %697 = load i8**, i8*** @si5351_msynth_names, align 8
  %698 = getelementptr inbounds i8*, i8** %697, i64 4
  %699 = load i8*, i8** %698, align 8
  br label %700

700:                                              ; preds = %696, %692
  %701 = phi i8* [ %695, %692 ], [ %699, %696 ]
  %702 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  store i8* %701, i8** %702, align 8
  %703 = load i32, i32* %14, align 4
  %704 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %705 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %704, i32 0, i32 4
  %706 = load %struct.TYPE_13__*, %struct.TYPE_13__** %705, align 8
  %707 = load i32, i32* %14, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %706, i64 %708
  %710 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %709, i32 0, i32 0
  store i32 %703, i32* %710, align 8
  %711 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %712 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %713 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %712, i32 0, i32 4
  %714 = load %struct.TYPE_13__*, %struct.TYPE_13__** %713, align 8
  %715 = load i32, i32* %14, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %714, i64 %716
  %718 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %717, i32 0, i32 2
  store %struct.si5351_driver_data* %711, %struct.si5351_driver_data** %718, align 8
  %719 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %720 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %719, i32 0, i32 4
  %721 = load %struct.TYPE_13__*, %struct.TYPE_13__** %720, align 8
  %722 = load i32, i32* %14, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %721, i64 %723
  %725 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %724, i32 0, i32 1
  %726 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %725, i32 0, i32 1
  store %struct.clk_init_data* %9, %struct.clk_init_data** %726, align 8
  %727 = call i32 @memset(%struct.clk_init_data* %9, i32 0, i32 40)
  %728 = load i8**, i8*** @si5351_clkout_names, align 8
  %729 = load i32, i32* %14, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds i8*, i8** %728, i64 %730
  %732 = load i8*, i8** %731, align 8
  %733 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i8* %732, i8** %733, align 8
  %734 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* @si5351_clkout_ops, i32** %734, align 8
  %735 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32 0, i32* %735, align 8
  %736 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %737 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %736, i32 0, i32 0
  %738 = load %struct.TYPE_14__*, %struct.TYPE_14__** %737, align 8
  %739 = load i32, i32* %14, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %738, i64 %740
  %742 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %741, i32 0, i32 0
  %743 = load i64, i64* %742, align 8
  %744 = load i64, i64* @SI5351_CLKOUT_SRC_MSYNTH_N, align 8
  %745 = icmp eq i64 %743, %744
  br i1 %745, label %746, label %751

746:                                              ; preds = %700
  %747 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %748 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  %749 = load i32, i32* %748, align 8
  %750 = or i32 %749, %747
  store i32 %750, i32* %748, align 8
  br label %751

751:                                              ; preds = %746, %700
  %752 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %753 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8** %752, i8*** %753, align 8
  %754 = load i32, i32* %11, align 4
  %755 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 %754, i32* %755, align 8
  %756 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %757 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %756, i32 0, i32 0
  %758 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %759 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %758, i32 0, i32 4
  %760 = load %struct.TYPE_13__*, %struct.TYPE_13__** %759, align 8
  %761 = load i32, i32* %14, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %760, i64 %762
  %764 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %763, i32 0, i32 1
  %765 = call i32 @devm_clk_hw_register(%struct.TYPE_15__* %757, %struct.TYPE_16__* %764)
  store i32 %765, i32* %13, align 4
  %766 = load i32, i32* %13, align 4
  %767 = icmp ne i32 %766, 0
  br i1 %767, label %768, label %775

768:                                              ; preds = %751
  %769 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %770 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %769, i32 0, i32 0
  %771 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  %772 = load i8*, i8** %771, align 8
  %773 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %770, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %772)
  %774 = load i32, i32* %13, align 4
  store i32 %774, i32* %3, align 4
  br label %832

775:                                              ; preds = %751
  %776 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %777 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %776, i32 0, i32 0
  %778 = load %struct.TYPE_14__*, %struct.TYPE_14__** %777, align 8
  %779 = load i32, i32* %14, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %778, i64 %780
  %782 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %781, i32 0, i32 1
  %783 = load i64, i64* %782, align 8
  %784 = icmp ne i64 %783, 0
  br i1 %784, label %785, label %812

785:                                              ; preds = %775
  %786 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %787 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %786, i32 0, i32 4
  %788 = load %struct.TYPE_13__*, %struct.TYPE_13__** %787, align 8
  %789 = load i32, i32* %14, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %788, i64 %790
  %792 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %791, i32 0, i32 1
  %793 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %792, i32 0, i32 0
  %794 = load i32, i32* %793, align 8
  %795 = load %struct.si5351_platform_data*, %struct.si5351_platform_data** %7, align 8
  %796 = getelementptr inbounds %struct.si5351_platform_data, %struct.si5351_platform_data* %795, i32 0, i32 0
  %797 = load %struct.TYPE_14__*, %struct.TYPE_14__** %796, align 8
  %798 = load i32, i32* %14, align 4
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %797, i64 %799
  %801 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %800, i32 0, i32 1
  %802 = load i64, i64* %801, align 8
  %803 = call i32 @clk_set_rate(i32 %794, i64 %802)
  store i32 %803, i32* %15, align 4
  %804 = load i32, i32* %15, align 4
  %805 = icmp ne i32 %804, 0
  br i1 %805, label %806, label %811

806:                                              ; preds = %785
  %807 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %808 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %807, i32 0, i32 0
  %809 = load i32, i32* %15, align 4
  %810 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %808, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %809)
  br label %811

811:                                              ; preds = %806, %785
  br label %812

812:                                              ; preds = %811, %775
  br label %813

813:                                              ; preds = %812
  %814 = load i32, i32* %14, align 4
  %815 = add nsw i32 %814, 1
  store i32 %815, i32* %14, align 4
  br label %679

816:                                              ; preds = %679
  %817 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %818 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %817, i32 0, i32 0
  %819 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %818, i32 0, i32 0
  %820 = load i32, i32* %819, align 8
  %821 = load i32, i32* @si53351_of_clk_get, align 4
  %822 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %8, align 8
  %823 = call i32 @of_clk_add_hw_provider(i32 %820, i32 %821, %struct.si5351_driver_data* %822)
  store i32 %823, i32* %13, align 4
  %824 = load i32, i32* %13, align 4
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %826, label %831

826:                                              ; preds = %816
  %827 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %828 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %827, i32 0, i32 0
  %829 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %828, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %830 = load i32, i32* %13, align 4
  store i32 %830, i32* %3, align 4
  br label %832

831:                                              ; preds = %816
  store i32 0, i32* %3, align 4
  br label %832

832:                                              ; preds = %831, %826, %768, %651, %578, %507, %444, %381, %333, %280, %252, %224, %196, %161, %119, %103, %81, %43, %33, %24
  %833 = load i32, i32* %3, align 4
  ret i32 %833
}

declare dso_local i32 @si5351_dt_parse(%struct.i2c_client*, i32) #1

declare dso_local %struct.si5351_driver_data* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.si5351_driver_data*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @si5351_reg_write(%struct.si5351_driver_data*, i32, i32) #1

declare dso_local i32 @si5351_set_bits(%struct.si5351_driver_data*, i32, i32, i32) #1

declare dso_local i32 @_si5351_pll_reparent(%struct.si5351_driver_data*, i32, i32) #1

declare dso_local i32 @_si5351_msynth_reparent(%struct.si5351_driver_data*, i32, i32) #1

declare dso_local i32 @_si5351_clkout_reparent(%struct.si5351_driver_data*, i32, i64) #1

declare dso_local i32 @_si5351_clkout_set_drive_strength(%struct.si5351_driver_data*, i32, i32) #1

declare dso_local i32 @_si5351_clkout_set_disable_state(%struct.si5351_driver_data*, i32, i32) #1

declare dso_local i32 @memset(%struct.clk_init_data*, i32, i32) #1

declare dso_local i8* @__clk_get_name(i8*) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @of_clk_add_hw_provider(i32, i32, %struct.si5351_driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
