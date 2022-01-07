; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.clk_si570 = type { i32, %struct.TYPE_12__, i32, i32, i32, %struct.i2c_client* }
%struct.TYPE_12__ = type { i32, %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i64, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@si570_clk_ops = common dso_local global i32 0, align 4
@si57x = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"temperature-stability\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"'temperature-stability' property missing\0A\00", align 1
@SI570_DIV_OFFSET_7PPM = common dso_local global i32 0, align 4
@SI570_MAX_FREQ = common dso_local global i32 0, align 4
@SI598_MAX_FREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"factory-fout\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"'factory-fout' property missing\0A\00", align 1
@si570_regmap_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"clock registration failed\0A\00", align 1
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"unable to add clk provider\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"registered, current frequency %llu Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si570_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si570_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.clk_si570*, align 8
  %7 = alloca %struct.clk_init_data, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.clk_si570* @devm_kzalloc(%struct.TYPE_13__* %17, i32 48, i32 %18)
  store %struct.clk_si570* %19, %struct.clk_si570** %6, align 8
  %20 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %21 = icmp ne %struct.clk_si570* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %184

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i32* @si570_clk_ops, i32** %26, align 8
  %27 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %30 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store %struct.clk_init_data* %7, %struct.clk_init_data** %31, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %34 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %33, i32 0, i32 5
  store %struct.i2c_client* %32, %struct.i2c_client** %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @si57x, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %25
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = call i32 @of_property_read_u32(%struct.TYPE_11__* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 @dev_err(%struct.TYPE_13__* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %3, align 4
  br label %184

51:                                               ; preds = %38
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @SI570_DIV_OFFSET_7PPM, align 4
  %56 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %57 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* @SI570_MAX_FREQ, align 4
  %60 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %61 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %66

62:                                               ; preds = %25
  %63 = load i32, i32* @SI598_MAX_FREQ, align 4
  %64 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %65 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  %72 = call i64 @of_property_read_string(%struct.TYPE_11__* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i32 %80, i32* %81, align 8
  br label %82

82:                                               ; preds = %74, %66
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = call i32 @of_property_read_u32(%struct.TYPE_11__* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = call i32 @dev_err(%struct.TYPE_13__* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %3, align 4
  br label %184

95:                                               ; preds = %82
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %96, i32* @si570_regmap_config)
  %98 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %99 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %101 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %95
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = call i32 @dev_err(%struct.TYPE_13__* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %110 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @PTR_ERR(i32 %111)
  store i32 %112, i32* %3, align 4
  br label %184

113:                                              ; preds = %95
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %116 = call i32 @i2c_set_clientdata(%struct.i2c_client* %114, %struct.clk_si570* %115)
  %117 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @si570_get_defaults(%struct.clk_si570* %117, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %3, align 4
  br label %184

124:                                              ; preds = %113
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %128 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %127, i32 0, i32 1
  %129 = call i32 @devm_clk_hw_register(%struct.TYPE_13__* %126, %struct.TYPE_12__* %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = call i32 @dev_err(%struct.TYPE_13__* %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %3, align 4
  br label %184

137:                                              ; preds = %124
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = load i32, i32* @of_clk_hw_simple_get, align 4
  %143 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %144 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %143, i32 0, i32 1
  %145 = call i32 @of_clk_add_hw_provider(%struct.TYPE_11__* %141, i32 %142, %struct.TYPE_12__* %144)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %137
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = call i32 @dev_err(%struct.TYPE_13__* %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %3, align 4
  br label %184

153:                                              ; preds = %137
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = call i32 @of_property_read_u32(%struct.TYPE_11__* %157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* %8)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %177, label %160

160:                                              ; preds = %153
  %161 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %162 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @clk_set_rate(i32 %164, i32 %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %160
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = call i32 @of_clk_del_provider(%struct.TYPE_11__* %173)
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %3, align 4
  br label %184

176:                                              ; preds = %160
  br label %177

177:                                              ; preds = %176, %153
  %178 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %179 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %178, i32 0, i32 0
  %180 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %181 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @dev_info(%struct.TYPE_13__* %179, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %182)
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %177, %169, %148, %132, %122, %105, %90, %46, %22
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.clk_si570* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @of_property_read_string(%struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.clk_si570*) #1

declare dso_local i32 @si570_get_defaults(%struct.clk_si570*, i32) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @of_clk_del_provider(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
