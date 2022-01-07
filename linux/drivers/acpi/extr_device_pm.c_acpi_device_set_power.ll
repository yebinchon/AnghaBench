; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_device_pm.c_acpi_device_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_device_pm.c_acpi_device_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_16__, %struct.TYPE_15__, i32, %struct.TYPE_13__*, i32, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@ACPI_STATE_D3_COLD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Power state change: %s -> %s\0A\00", align 1
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Device [%s] already in %s\0A\00", align 1
@ACPI_STATE_D3_HOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Power state %s not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Cannot transition to power state %s for parent in %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Cannot transition from %s to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to change power state to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Device [%s] transitioned to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_device_set_power(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %12 = icmp ne %struct.acpi_device* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ACPI_STATE_D0, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ACPI_STATE_D3_COLD, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %19, %13, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %260

30:                                               ; preds = %23
  %31 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %35 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @acpi_power_state_string(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @acpi_power_state_string(i32 %39)
  %41 = call i32 @acpi_handle_debug(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ACPI_STATE_D0, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i32, i32* @ACPI_DB_INFO, align 4
  %54 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %55 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @acpi_power_state_string(i32 %58)
  %60 = call i32 @ACPI_DEBUG_PRINT(i32 %59)
  store i32 0, i32* %3, align 4
  br label %260

61:                                               ; preds = %45, %30
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @ACPI_STATE_D3_COLD, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = load i32, i32* @ACPI_STATE_D3_HOT, align 4
  store i32 %66, i32* %5, align 4
  %67 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %68 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i32, i32* @ACPI_STATE_D3_COLD, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %65
  br label %102

81:                                               ; preds = %61
  %82 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %83 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %81
  %94 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %95 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %94, i32 0, i32 2
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @acpi_power_state_string(i32 %96)
  %98 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %260

101:                                              ; preds = %81
  br label %102

102:                                              ; preds = %101, %80
  %103 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %104 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %138, label %109

109:                                              ; preds = %102
  %110 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %111 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %110, i32 0, i32 3
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = icmp ne %struct.TYPE_13__* %112, null
  br i1 %113, label %114, label %138

114:                                              ; preds = %109
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %117 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %116, i32 0, i32 3
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %115, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %114
  %124 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %125 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %124, i32 0, i32 2
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @acpi_power_state_string(i32 %126)
  %128 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %129 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %128, i32 0, i32 3
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @acpi_power_state_string(i32 %133)
  %135 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %125, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %134)
  %136 = load i32, i32* @ENODEV, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %260

138:                                              ; preds = %114, %109, %102
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @ACPI_STATE_D0, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %189

142:                                              ; preds = %138
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %145 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %143, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %142
  %150 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %151 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %150, i32 0, i32 2
  %152 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %153 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @acpi_power_state_string(i32 %155)
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @acpi_power_state_string(i32 %157)
  %159 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %156, i32 %158)
  %160 = load i32, i32* @ENODEV, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %260

162:                                              ; preds = %142
  %163 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %164 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @ACPI_STATE_D3_HOT, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %162
  %170 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @acpi_dev_pm_explicit_set(%struct.acpi_device* %170, i32 %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %236

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %176, %162
  %178 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %179 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @acpi_power_transition(%struct.acpi_device* %185, i32 %186)
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %184, %177
  br label %235

189:                                              ; preds = %138
  %190 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %191 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  store i32 %193, i32* %8, align 4
  %194 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %195 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %189
  %201 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %202 = load i32, i32* @ACPI_STATE_D0, align 4
  %203 = call i32 @acpi_power_transition(%struct.acpi_device* %201, i32 %202)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %236

207:                                              ; preds = %200
  br label %208

208:                                              ; preds = %207, %189
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @ACPI_STATE_D0, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %231

212:                                              ; preds = %208
  %213 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %214 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %212
  store i32 0, i32* %3, align 4
  br label %260

220:                                              ; preds = %212
  %221 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %222 = call i32 @acpi_dev_pm_explicit_get(%struct.acpi_device* %221, i32* %9)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %220
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @ACPI_STATE_D0, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %225, %220
  store i32 0, i32* %3, align 4
  br label %260

230:                                              ; preds = %225
  br label %231

231:                                              ; preds = %230, %208
  %232 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %233 = load i32, i32* @ACPI_STATE_D0, align 4
  %234 = call i32 @acpi_dev_pm_explicit_set(%struct.acpi_device* %232, i32 %233)
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %231, %188
  br label %236

236:                                              ; preds = %235, %206, %175
  %237 = load i32, i32* %7, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  %240 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %241 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %240, i32 0, i32 2
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @acpi_power_state_string(i32 %242)
  %244 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %241, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %243)
  br label %258

245:                                              ; preds = %236
  %246 = load i32, i32* %6, align 4
  %247 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %248 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  store i32 %246, i32* %249, align 8
  %250 = load i32, i32* @ACPI_DB_INFO, align 4
  %251 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %252 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %5, align 4
  %256 = call i32 @acpi_power_state_string(i32 %255)
  %257 = call i32 @ACPI_DEBUG_PRINT(i32 %256)
  br label %258

258:                                              ; preds = %245, %239
  %259 = load i32, i32* %7, align 4
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %258, %229, %219, %149, %123, %93, %52, %27
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32 @acpi_handle_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @acpi_power_state_string(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

declare dso_local i32 @acpi_dev_pm_explicit_set(%struct.acpi_device*, i32) #1

declare dso_local i32 @acpi_power_transition(%struct.acpi_device*, i32) #1

declare dso_local i32 @acpi_dev_pm_explicit_get(%struct.acpi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
