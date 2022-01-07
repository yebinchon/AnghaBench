; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max9485.c_max9485_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max9485.c_max9485_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max9485_driver_data = type { %struct.TYPE_6__*, i32, %struct.i2c_client*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__, %struct.max9485_driver_data*, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32, i8**, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xclk\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to read device register: %d\0A\00", align 1
@MAX9485_NUM_CLKS = common dso_local global i32 0, align 4
@max9485_clks = common dso_local global %struct.TYPE_7__* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@max9485_of_clk_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max9485_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9485_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max9485_driver_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.max9485_driver_data* @devm_kzalloc(%struct.device* %15, i32 40, i32 %16)
  store %struct.max9485_driver_data* %17, %struct.max9485_driver_data** %6, align 8
  %18 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %19 = icmp ne %struct.max9485_driver_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %273

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call i32 @devm_clk_get(%struct.device* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %27 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %29 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %35 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %273

38:                                               ; preds = %23
  %39 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %40 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @__clk_get_name(i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = call i32 @devm_regulator_get(%struct.device* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %46 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %48 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %54 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %3, align 4
  br label %273

57:                                               ; preds = %38
  %58 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %59 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @regulator_enable(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %273

66:                                               ; preds = %57
  %67 = load %struct.device*, %struct.device** %7, align 8
  %68 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %69 = call i32 @devm_gpiod_get_optional(%struct.device* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %71 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %73 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %79 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %3, align 4
  br label %273

82:                                               ; preds = %66
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %85 = call i32 @i2c_set_clientdata(%struct.i2c_client* %83, %struct.max9485_driver_data* %84)
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %88 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %87, i32 0, i32 2
  store %struct.i2c_client* %86, %struct.i2c_client** %88, align 8
  %89 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %90 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %89, i32 0, i32 2
  %91 = load %struct.i2c_client*, %struct.i2c_client** %90, align 8
  %92 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %93 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %92, i32 0, i32 1
  %94 = call i32 @i2c_master_recv(%struct.i2c_client* %91, i32* %93, i32 4)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @dev_warn(%struct.device* %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %273

102:                                              ; preds = %82
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %265, %102
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @MAX9485_NUM_CLKS, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %268

107:                                              ; preds = %103
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** @max9485_clks, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %11, align 4
  %114 = load %struct.device*, %struct.device** %7, align 8
  %115 = getelementptr inbounds %struct.device, %struct.device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @of_property_read_string_index(i32 %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %117, i8** %12)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %107
  %121 = load i8*, i8** %12, align 8
  %122 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %123 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i8* %121, i8** %129, align 8
  br label %145

130:                                              ; preds = %107
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** @max9485_clks, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %138 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i8* %136, i8** %144, align 8
  br label %145

145:                                              ; preds = %130, %120
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** @max9485_clks, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  %151 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %152 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  store i32* %150, i32** %158, align 8
  %159 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %160 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store i32 1, i32* %166, align 8
  %167 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %168 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 3
  store i32 0, i32* %174, align 8
  %175 = load i32, i32* %11, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %205

177:                                              ; preds = %145
  %178 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %179 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %178, i32 0, i32 0
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %187 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %186, i32 0, i32 0
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  store i8** %185, i8*** %193, align 8
  %194 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %195 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %196 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %195, i32 0, i32 0
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %194
  store i32 %204, i32* %202, align 8
  br label %214

205:                                              ; preds = %145
  %206 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %207 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %206, i32 0, i32 0
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  store i8** %8, i8*** %213, align 8
  br label %214

214:                                              ; preds = %205, %177
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** @max9485_clks, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %222 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %221, i32 0, i32 0
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 3
  store i32 %220, i32* %227, align 8
  %228 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %229 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %228, i32 0, i32 0
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  %235 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %236 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %235, i32 0, i32 0
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  store %struct.TYPE_5__* %234, %struct.TYPE_5__** %242, align 8
  %243 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %244 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %245 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %244, i32 0, i32 0
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  store %struct.max9485_driver_data* %243, %struct.max9485_driver_data** %250, align 8
  %251 = load %struct.device*, %struct.device** %7, align 8
  %252 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %253 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %252, i32 0, i32 0
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = call i32 @devm_clk_hw_register(%struct.device* %251, %struct.TYPE_8__* %258)
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %10, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %214
  %263 = load i32, i32* %10, align 4
  store i32 %263, i32* %3, align 4
  br label %273

264:                                              ; preds = %214
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %9, align 4
  br label %103

268:                                              ; preds = %103
  %269 = load %struct.device*, %struct.device** %7, align 8
  %270 = load i32, i32* @max9485_of_clk_get, align 4
  %271 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %6, align 8
  %272 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %269, i32 %270, %struct.max9485_driver_data* %271)
  store i32 %272, i32* %3, align 4
  br label %273

273:                                              ; preds = %268, %262, %97, %77, %64, %52, %33, %20
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local %struct.max9485_driver_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i8* @__clk_get_name(i32) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max9485_driver_data*) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i64 @of_property_read_string_index(i32, i8*, i32, i8**) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_8__*) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.max9485_driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
