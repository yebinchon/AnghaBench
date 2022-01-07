; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max77686.c_max77686_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max77686.c_max77686_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77686_hw_clk_info = type { i8*, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i64, %struct.device* }
%struct.platform_device_id = type { i32 }
%struct.max77686_clk_driver_data = type { i32, i32, %struct.max77686_clk_init_data* }
%struct.max77686_clk_init_data = type { %struct.TYPE_4__, %struct.TYPE_5__, %struct.max77686_hw_clk_info*, %struct.regmap* }
%struct.TYPE_4__ = type { i8*, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to get rtc regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MAX77686_CLKS_NUM = common dso_local global i32 0, align 4
@max77686_hw_clks_info = common dso_local global %struct.max77686_hw_clk_info* null, align 8
@MAX77802_CLKS_NUM = common dso_local global i32 0, align 4
@max77802_hw_clks_info = common dso_local global %struct.max77686_hw_clk_info* null, align 8
@MAX77620_CLKS_NUM = common dso_local global i32 0, align 4
@max77620_hw_clks_info = common dso_local global %struct.max77686_hw_clk_info* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown Chip ID\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@max77686_clk_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to clock register: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to clkdev register: %d\0A\00", align 1
@of_clk_max77686_get = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to register OF clock provider: %d\0A\00", align 1
@MAX77802_REG_32KHZ = common dso_local global i32 0, align 4
@MAX77802_CLOCK_LOW_JITTER_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to config low-jitter: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77686_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.platform_device_id*, align 8
  %7 = alloca %struct.max77686_clk_driver_data*, align 8
  %8 = alloca %struct.max77686_hw_clk_info*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.max77686_clk_init_data*, align 8
  %14 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %20)
  store %struct.platform_device_id* %21, %struct.platform_device_id** %6, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.max77686_clk_driver_data* @devm_kzalloc(%struct.device* %22, i32 16, i32 %23)
  store %struct.max77686_clk_driver_data* %24, %struct.max77686_clk_driver_data** %7, align 8
  %25 = load %struct.max77686_clk_driver_data*, %struct.max77686_clk_driver_data** %7, align 8
  %26 = icmp ne %struct.max77686_clk_driver_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %216

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call %struct.regmap* @dev_get_regmap(%struct.device* %31, i32* null)
  store %struct.regmap* %32, %struct.regmap** %9, align 8
  %33 = load %struct.regmap*, %struct.regmap** %9, align 8
  %34 = icmp ne %struct.regmap* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %216

40:                                               ; preds = %30
  %41 = load %struct.platform_device_id*, %struct.platform_device_id** %6, align 8
  %42 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.max77686_clk_driver_data*, %struct.max77686_clk_driver_data** %7, align 8
  %45 = getelementptr inbounds %struct.max77686_clk_driver_data, %struct.max77686_clk_driver_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.max77686_clk_driver_data*, %struct.max77686_clk_driver_data** %7, align 8
  %47 = getelementptr inbounds %struct.max77686_clk_driver_data, %struct.max77686_clk_driver_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %58 [
    i32 129, label %49
    i32 128, label %52
    i32 130, label %55
  ]

49:                                               ; preds = %40
  %50 = load i32, i32* @MAX77686_CLKS_NUM, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct.max77686_hw_clk_info*, %struct.max77686_hw_clk_info** @max77686_hw_clks_info, align 8
  store %struct.max77686_hw_clk_info* %51, %struct.max77686_hw_clk_info** %8, align 8
  br label %63

52:                                               ; preds = %40
  %53 = load i32, i32* @MAX77802_CLKS_NUM, align 4
  store i32 %53, i32* %12, align 4
  %54 = load %struct.max77686_hw_clk_info*, %struct.max77686_hw_clk_info** @max77802_hw_clks_info, align 8
  store %struct.max77686_hw_clk_info* %54, %struct.max77686_hw_clk_info** %8, align 8
  br label %63

55:                                               ; preds = %40
  %56 = load i32, i32* @MAX77620_CLKS_NUM, align 4
  store i32 %56, i32* %12, align 4
  %57 = load %struct.max77686_hw_clk_info*, %struct.max77686_hw_clk_info** @max77620_hw_clks_info, align 8
  store %struct.max77686_hw_clk_info* %57, %struct.max77686_hw_clk_info** %8, align 8
  br label %63

58:                                               ; preds = %40
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %216

63:                                               ; preds = %55, %52, %49
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.max77686_clk_driver_data*, %struct.max77686_clk_driver_data** %7, align 8
  %66 = getelementptr inbounds %struct.max77686_clk_driver_data, %struct.max77686_clk_driver_data* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.max77686_clk_init_data* @devm_kcalloc(%struct.device* %67, i32 %68, i32 48, i32 %69)
  %71 = load %struct.max77686_clk_driver_data*, %struct.max77686_clk_driver_data** %7, align 8
  %72 = getelementptr inbounds %struct.max77686_clk_driver_data, %struct.max77686_clk_driver_data* %71, i32 0, i32 2
  store %struct.max77686_clk_init_data* %70, %struct.max77686_clk_init_data** %72, align 8
  %73 = load %struct.max77686_clk_driver_data*, %struct.max77686_clk_driver_data** %7, align 8
  %74 = getelementptr inbounds %struct.max77686_clk_driver_data, %struct.max77686_clk_driver_data* %73, i32 0, i32 2
  %75 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %74, align 8
  %76 = icmp ne %struct.max77686_clk_init_data* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %63
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %216

80:                                               ; preds = %63
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %173, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %176

85:                                               ; preds = %81
  %86 = load %struct.max77686_clk_driver_data*, %struct.max77686_clk_driver_data** %7, align 8
  %87 = getelementptr inbounds %struct.max77686_clk_driver_data, %struct.max77686_clk_driver_data* %86, i32 0, i32 2
  %88 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %88, i64 %90
  store %struct.max77686_clk_init_data* %91, %struct.max77686_clk_init_data** %13, align 8
  %92 = load %struct.regmap*, %struct.regmap** %9, align 8
  %93 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %13, align 8
  %94 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %93, i32 0, i32 3
  store %struct.regmap* %92, %struct.regmap** %94, align 8
  %95 = load %struct.max77686_hw_clk_info*, %struct.max77686_hw_clk_info** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.max77686_hw_clk_info, %struct.max77686_hw_clk_info* %95, i64 %97
  %99 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %13, align 8
  %100 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %99, i32 0, i32 2
  store %struct.max77686_hw_clk_info* %98, %struct.max77686_hw_clk_info** %100, align 8
  %101 = load %struct.max77686_hw_clk_info*, %struct.max77686_hw_clk_info** %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.max77686_hw_clk_info, %struct.max77686_hw_clk_info* %101, i64 %103
  %105 = getelementptr inbounds %struct.max77686_hw_clk_info, %struct.max77686_hw_clk_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %13, align 8
  %108 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 8
  %110 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %13, align 8
  %111 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i32* @max77686_clk_ops, i32** %112, align 8
  %113 = load %struct.device*, %struct.device** %5, align 8
  %114 = getelementptr inbounds %struct.device, %struct.device* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %85
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = getelementptr inbounds %struct.device, %struct.device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @of_property_read_string_index(i64 %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %121, i8** %14)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %117
  %125 = load i8*, i8** %14, align 8
  %126 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %13, align 8
  %127 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i8* %125, i8** %128, align 8
  br label %139

129:                                              ; preds = %117, %85
  %130 = load %struct.max77686_hw_clk_info*, %struct.max77686_hw_clk_info** %8, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.max77686_hw_clk_info, %struct.max77686_hw_clk_info* %130, i64 %132
  %134 = getelementptr inbounds %struct.max77686_hw_clk_info, %struct.max77686_hw_clk_info* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %13, align 8
  %137 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i8* %135, i8** %138, align 8
  br label %139

139:                                              ; preds = %129, %124
  %140 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %13, align 8
  %141 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %140, i32 0, i32 0
  %142 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %13, align 8
  %143 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store %struct.TYPE_4__* %141, %struct.TYPE_4__** %144, align 8
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %13, align 8
  %147 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %146, i32 0, i32 1
  %148 = call i32 @devm_clk_hw_register(%struct.device* %145, %struct.TYPE_5__* %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %139
  %152 = load %struct.device*, %struct.device** %4, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %11, align 4
  store i32 %155, i32* %2, align 4
  br label %216

156:                                              ; preds = %139
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %13, align 8
  %159 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %158, i32 0, i32 1
  %160 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %13, align 8
  %161 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @devm_clk_hw_register_clkdev(%struct.device* %157, %struct.TYPE_5__* %159, i8* %163, i32* null)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %156
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %168, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %2, align 4
  br label %216

172:                                              ; preds = %156
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %81

176:                                              ; preds = %81
  %177 = load %struct.device*, %struct.device** %5, align 8
  %178 = getelementptr inbounds %struct.device, %struct.device* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %176
  %182 = load %struct.device*, %struct.device** %4, align 8
  %183 = load i32, i32* @of_clk_max77686_get, align 4
  %184 = load %struct.max77686_clk_driver_data*, %struct.max77686_clk_driver_data** %7, align 8
  %185 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %182, i32 %183, %struct.max77686_clk_driver_data* %184)
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = load %struct.device*, %struct.device** %4, align 8
  %190 = load i32, i32* %11, align 4
  %191 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %189, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* %11, align 4
  store i32 %192, i32* %2, align 4
  br label %216

193:                                              ; preds = %181
  br label %194

194:                                              ; preds = %193, %176
  %195 = load %struct.max77686_clk_driver_data*, %struct.max77686_clk_driver_data** %7, align 8
  %196 = getelementptr inbounds %struct.max77686_clk_driver_data, %struct.max77686_clk_driver_data* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 128
  br i1 %198, label %199, label %215

199:                                              ; preds = %194
  %200 = load %struct.regmap*, %struct.regmap** %9, align 8
  %201 = load i32, i32* @MAX77802_REG_32KHZ, align 4
  %202 = load i32, i32* @MAX77802_CLOCK_LOW_JITTER_SHIFT, align 4
  %203 = shl i32 1, %202
  %204 = load i32, i32* @MAX77802_CLOCK_LOW_JITTER_SHIFT, align 4
  %205 = shl i32 1, %204
  %206 = call i32 @regmap_update_bits(%struct.regmap* %200, i32 %201, i32 %203, i32 %205)
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %199
  %210 = load %struct.device*, %struct.device** %4, align 8
  %211 = load i32, i32* %11, align 4
  %212 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %210, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* %11, align 4
  store i32 %213, i32* %2, align 4
  br label %216

214:                                              ; preds = %199
  br label %215

215:                                              ; preds = %214, %194
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %215, %209, %188, %167, %151, %77, %58, %35, %27
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.max77686_clk_driver_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.regmap* @dev_get_regmap(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.max77686_clk_init_data* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_string_index(i64, i8*, i32, i8**) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @devm_clk_hw_register_clkdev(%struct.device*, %struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.max77686_clk_driver_data*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
