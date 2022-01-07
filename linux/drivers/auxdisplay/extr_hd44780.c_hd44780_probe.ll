; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_hd44780.c_hd44780_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_hd44780.c_hd44780_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.charlcd = type { i32, i32, i32, i32, i32*, %struct.hd44780* }
%struct.hd44780 = type { i8** }

@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@PIN_DATA4 = common dso_local global i32 0, align 4
@PIN_DATA0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@PIN_CTRL_E = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@PIN_CTRL_RS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@PIN_CTRL_RW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@PIN_CTRL_BL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"display-height-chars\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"display-width-chars\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"internal-buffer-width\00", align 1
@hd44780_ops_gpio8 = common dso_local global i32 0, align 4
@hd44780_ops_gpio4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hd44780_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hd44780_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.charlcd*, align 8
  %8 = alloca %struct.hd44780*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @gpiod_count(%struct.device* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %2, align 4
  br label %236

19:                                               ; preds = %1
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %25 [
    i32 4, label %21
    i32 8, label %23
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @PIN_DATA4, align 4
  store i32 %22, i32* %6, align 4
  br label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @PIN_DATA0, align 4
  store i32 %24, i32* %6, align 4
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %236

28:                                               ; preds = %23, %21
  %29 = call %struct.charlcd* @charlcd_alloc(i32 8)
  store %struct.charlcd* %29, %struct.charlcd** %7, align 8
  %30 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %31 = icmp ne %struct.charlcd* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %236

35:                                               ; preds = %28
  %36 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %37 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %36, i32 0, i32 5
  %38 = load %struct.hd44780*, %struct.hd44780** %37, align 8
  store %struct.hd44780* %38, %struct.hd44780** %8, align 8
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %79, %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %39
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %47 = call i8* @devm_gpiod_get_index(%struct.device* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %49 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %50, i64 %54
  store i8* %47, i8** %55, align 8
  %56 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %57 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %58, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @IS_ERR(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %43
  %68 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %69 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add i32 %71, %72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %70, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR(i8* %76)
  store i32 %77, i32* %10, align 4
  br label %232

78:                                               ; preds = %43
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %39

82:                                               ; preds = %39
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %85 = call i8* @devm_gpiod_get(%struct.device* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %87 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = load i64, i64* @PIN_CTRL_E, align 8
  %90 = getelementptr inbounds i8*, i8** %88, i64 %89
  store i8* %85, i8** %90, align 8
  %91 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %92 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = load i64, i64* @PIN_CTRL_E, align 8
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @IS_ERR(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %82
  %100 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %101 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = load i64, i64* @PIN_CTRL_E, align 8
  %104 = getelementptr inbounds i8*, i8** %102, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @PTR_ERR(i8* %105)
  store i32 %106, i32* %10, align 4
  br label %232

107:                                              ; preds = %82
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %110 = call i8* @devm_gpiod_get(%struct.device* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %112 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = load i64, i64* @PIN_CTRL_RS, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  store i8* %110, i8** %115, align 8
  %116 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %117 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %116, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = load i64, i64* @PIN_CTRL_RS, align 8
  %120 = getelementptr inbounds i8*, i8** %118, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @IS_ERR(i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %107
  %125 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %126 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = load i64, i64* @PIN_CTRL_RS, align 8
  %129 = getelementptr inbounds i8*, i8** %127, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @PTR_ERR(i8* %130)
  store i32 %131, i32* %10, align 4
  br label %232

132:                                              ; preds = %107
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %135 = call i8* @devm_gpiod_get_optional(%struct.device* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  %136 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %137 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %136, i32 0, i32 0
  %138 = load i8**, i8*** %137, align 8
  %139 = load i64, i64* @PIN_CTRL_RW, align 8
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139
  store i8* %135, i8** %140, align 8
  %141 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %142 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %141, i32 0, i32 0
  %143 = load i8**, i8*** %142, align 8
  %144 = load i64, i64* @PIN_CTRL_RW, align 8
  %145 = getelementptr inbounds i8*, i8** %143, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @IS_ERR(i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %132
  %150 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %151 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %150, i32 0, i32 0
  %152 = load i8**, i8*** %151, align 8
  %153 = load i64, i64* @PIN_CTRL_RW, align 8
  %154 = getelementptr inbounds i8*, i8** %152, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @PTR_ERR(i8* %155)
  store i32 %156, i32* %10, align 4
  br label %232

157:                                              ; preds = %132
  %158 = load %struct.device*, %struct.device** %4, align 8
  %159 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %160 = call i8* @devm_gpiod_get_optional(%struct.device* %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  %161 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %162 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %161, i32 0, i32 0
  %163 = load i8**, i8*** %162, align 8
  %164 = load i64, i64* @PIN_CTRL_BL, align 8
  %165 = getelementptr inbounds i8*, i8** %163, i64 %164
  store i8* %160, i8** %165, align 8
  %166 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %167 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %166, i32 0, i32 0
  %168 = load i8**, i8*** %167, align 8
  %169 = load i64, i64* @PIN_CTRL_BL, align 8
  %170 = getelementptr inbounds i8*, i8** %168, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @IS_ERR(i8* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %157
  %175 = load %struct.hd44780*, %struct.hd44780** %8, align 8
  %176 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %175, i32 0, i32 0
  %177 = load i8**, i8*** %176, align 8
  %178 = load i64, i64* @PIN_CTRL_BL, align 8
  %179 = getelementptr inbounds i8*, i8** %177, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @PTR_ERR(i8* %180)
  store i32 %181, i32* %10, align 4
  br label %232

182:                                              ; preds = %157
  %183 = load %struct.device*, %struct.device** %4, align 8
  %184 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %185 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %184, i32 0, i32 0
  %186 = call i32 @device_property_read_u32(%struct.device* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %185)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %232

190:                                              ; preds = %182
  %191 = load %struct.device*, %struct.device** %4, align 8
  %192 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %193 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %192, i32 0, i32 1
  %194 = call i32 @device_property_read_u32(%struct.device* %191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* %193)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %232

198:                                              ; preds = %190
  %199 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %200 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp sgt i32 %201, 2
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %205 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %208 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  br label %209

209:                                              ; preds = %203, %198
  %210 = load %struct.device*, %struct.device** %4, align 8
  %211 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %212 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %211, i32 0, i32 2
  %213 = call i32 @device_property_read_u32(%struct.device* %210, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32* %212)
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %216 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp eq i32 %217, 8
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32* @hd44780_ops_gpio8, i32* @hd44780_ops_gpio4
  %221 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %222 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %221, i32 0, i32 4
  store i32* %220, i32** %222, align 8
  %223 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %224 = call i32 @charlcd_register(%struct.charlcd* %223)
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %10, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %209
  br label %232

228:                                              ; preds = %209
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %231 = call i32 @platform_set_drvdata(%struct.platform_device* %229, %struct.charlcd* %230)
  store i32 0, i32* %2, align 4
  br label %236

232:                                              ; preds = %227, %197, %189, %174, %149, %124, %99, %67
  %233 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %234 = call i32 @charlcd_free(%struct.charlcd* %233)
  %235 = load i32, i32* %10, align 4
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %232, %228, %32, %25, %17
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @gpiod_count(%struct.device*, i8*) #1

declare dso_local %struct.charlcd* @charlcd_alloc(i32) #1

declare dso_local i8* @devm_gpiod_get_index(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @charlcd_register(%struct.charlcd*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.charlcd*) #1

declare dso_local i32 @charlcd_free(%struct.charlcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
