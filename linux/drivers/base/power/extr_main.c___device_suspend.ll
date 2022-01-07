; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c___device_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c___device_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@wd = common dso_local global i32 0, align 4
@async_error = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"direct-complete \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"power domain \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"type \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bus \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"legacy bus \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"driver \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @__device_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__device_suspend(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @wd, align 4
  %11 = call i32 @DECLARE_DPM_WATCHDOG_ON_STACK(i32 %10)
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @TRACE_DEVICE(%struct.device* %12)
  %14 = call i32 @TRACE_SUSPEND(i32 0)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dpm_wait_for_subordinate(%struct.device* %15, i32 %16)
  %18 = load i32, i32* @async_error, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %248

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i64 @pm_runtime_barrier(%struct.device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i64 @device_may_wakeup(%struct.device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @pm_wakeup_event(%struct.device* %33, i32 0)
  br label %35

35:                                               ; preds = %32, %28, %24
  %36 = call i64 (...) @pm_wakeup_pending()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* @async_error, align 4
  br label %248

44:                                               ; preds = %35
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %248

51:                                               ; preds = %44
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i64 @device_may_wakeup(%struct.device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55, %51
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = getelementptr inbounds %struct.device, %struct.device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i64 @pm_runtime_status_suspended(%struct.device* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @pm_runtime_disable(%struct.device* %76)
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i64 @pm_runtime_status_suspended(%struct.device* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @pm_dev_dbg(%struct.device* %82, i32 %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %248

85:                                               ; preds = %75
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @pm_runtime_enable(%struct.device* %86)
  br label %88

88:                                               ; preds = %85, %71
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %65
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  store i32 0, i32* %95, align 8
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = getelementptr inbounds %struct.device, %struct.device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  store i32 0, i32* %98, align 4
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = call i32 @dpm_watchdog_set(i32* @wd, %struct.device* %99)
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i32 @device_lock(%struct.device* %101)
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = getelementptr inbounds %struct.device, %struct.device* %103, i32 0, i32 5
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = icmp ne %struct.TYPE_7__* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %92
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = getelementptr inbounds %struct.device, %struct.device* %108, i32 0, i32 5
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %5, align 4
  %113 = call i32* @pm_op(i32* %111, i32 %112)
  store i32* %113, i32** %7, align 8
  br label %196

114:                                              ; preds = %92
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = getelementptr inbounds %struct.device, %struct.device* %115, i32 0, i32 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = icmp ne %struct.TYPE_8__* %117, null
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = getelementptr inbounds %struct.device, %struct.device* %120, i32 0, i32 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = getelementptr inbounds %struct.device, %struct.device* %127, i32 0, i32 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32* @pm_op(i32* %131, i32 %132)
  store i32* %133, i32** %7, align 8
  br label %196

134:                                              ; preds = %119, %114
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = getelementptr inbounds %struct.device, %struct.device* %135, i32 0, i32 3
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = icmp ne %struct.TYPE_9__* %137, null
  br i1 %138, label %139, label %154

139:                                              ; preds = %134
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = getelementptr inbounds %struct.device, %struct.device* %140, i32 0, i32 3
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = getelementptr inbounds %struct.device, %struct.device* %147, i32 0, i32 3
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32* @pm_op(i32* %151, i32 %152)
  store i32* %153, i32** %7, align 8
  br label %196

154:                                              ; preds = %139, %134
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = getelementptr inbounds %struct.device, %struct.device* %155, i32 0, i32 2
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = icmp ne %struct.TYPE_10__* %157, null
  br i1 %158, label %159, label %195

159:                                              ; preds = %154
  %160 = load %struct.device*, %struct.device** %4, align 8
  %161 = getelementptr inbounds %struct.device, %struct.device* %160, i32 0, i32 2
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %159
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  %167 = load %struct.device*, %struct.device** %4, align 8
  %168 = getelementptr inbounds %struct.device, %struct.device* %167, i32 0, i32 2
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = call i32* @pm_op(i32* %171, i32 %172)
  store i32* %173, i32** %7, align 8
  br label %194

174:                                              ; preds = %159
  %175 = load %struct.device*, %struct.device** %4, align 8
  %176 = getelementptr inbounds %struct.device, %struct.device* %175, i32 0, i32 2
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %174
  %182 = load %struct.device*, %struct.device** %4, align 8
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @pm_dev_dbg(%struct.device* %182, i32 %183, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %185 = load %struct.device*, %struct.device** %4, align 8
  %186 = load i32, i32* %5, align 4
  %187 = load %struct.device*, %struct.device** %4, align 8
  %188 = getelementptr inbounds %struct.device, %struct.device* %187, i32 0, i32 2
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @legacy_suspend(%struct.device* %185, i32 %186, i64 %191, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %192, i32* %9, align 4
  br label %225

193:                                              ; preds = %174
  br label %194

194:                                              ; preds = %193, %166
  br label %195

195:                                              ; preds = %194, %154
  br label %196

196:                                              ; preds = %195, %146, %126, %107
  %197 = load i32*, i32** %7, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %219, label %199

199:                                              ; preds = %196
  %200 = load %struct.device*, %struct.device** %4, align 8
  %201 = getelementptr inbounds %struct.device, %struct.device* %200, i32 0, i32 1
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = icmp ne %struct.TYPE_11__* %202, null
  br i1 %203, label %204, label %219

204:                                              ; preds = %199
  %205 = load %struct.device*, %struct.device** %4, align 8
  %206 = getelementptr inbounds %struct.device, %struct.device* %205, i32 0, i32 1
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %219

211:                                              ; preds = %204
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  %212 = load %struct.device*, %struct.device** %4, align 8
  %213 = getelementptr inbounds %struct.device, %struct.device* %212, i32 0, i32 1
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = call i32* @pm_op(i32* %216, i32 %217)
  store i32* %218, i32** %7, align 8
  br label %219

219:                                              ; preds = %211, %204, %199, %196
  %220 = load i32*, i32** %7, align 8
  %221 = load %struct.device*, %struct.device** %4, align 8
  %222 = load i32, i32* %5, align 4
  %223 = load i8*, i8** %8, align 8
  %224 = call i32 @dpm_run_callback(i32* %220, %struct.device* %221, i32 %222, i8* %223)
  store i32 %224, i32* %9, align 4
  br label %225

225:                                              ; preds = %219, %181
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %244, label %228

228:                                              ; preds = %225
  %229 = load %struct.device*, %struct.device** %4, align 8
  %230 = getelementptr inbounds %struct.device, %struct.device* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 4
  store i32 1, i32* %231, align 8
  %232 = load %struct.device*, %struct.device** %4, align 8
  %233 = call i64 @device_may_wakeup(%struct.device* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %228
  %236 = load %struct.device*, %struct.device** %4, align 8
  %237 = getelementptr inbounds %struct.device, %struct.device* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  store i32 1, i32* %238, align 4
  br label %239

239:                                              ; preds = %235, %228
  %240 = load %struct.device*, %struct.device** %4, align 8
  %241 = call i32 @dpm_propagate_wakeup_to_parent(%struct.device* %240)
  %242 = load %struct.device*, %struct.device** %4, align 8
  %243 = call i32 @dpm_clear_superiors_direct_complete(%struct.device* %242)
  br label %244

244:                                              ; preds = %239, %225
  %245 = load %struct.device*, %struct.device** %4, align 8
  %246 = call i32 @device_unlock(%struct.device* %245)
  %247 = call i32 @dpm_watchdog_clear(i32* @wd)
  br label %248

248:                                              ; preds = %244, %81, %50, %38, %20
  %249 = load i32, i32* %9, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = load i32, i32* %9, align 4
  store i32 %252, i32* @async_error, align 4
  br label %253

253:                                              ; preds = %251, %248
  %254 = load %struct.device*, %struct.device** %4, align 8
  %255 = getelementptr inbounds %struct.device, %struct.device* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 5
  %257 = call i32 @complete_all(i32* %256)
  %258 = load i32, i32* %9, align 4
  %259 = call i32 @TRACE_SUSPEND(i32 %258)
  %260 = load i32, i32* %9, align 4
  ret i32 %260
}

declare dso_local i32 @DECLARE_DPM_WATCHDOG_ON_STACK(i32) #1

declare dso_local i32 @TRACE_DEVICE(%struct.device*) #1

declare dso_local i32 @TRACE_SUSPEND(i32) #1

declare dso_local i32 @dpm_wait_for_subordinate(%struct.device*, i32) #1

declare dso_local i64 @pm_runtime_barrier(%struct.device*) #1

declare dso_local i64 @device_may_wakeup(%struct.device*) #1

declare dso_local i32 @pm_wakeup_event(%struct.device*, i32) #1

declare dso_local i64 @pm_wakeup_pending(...) #1

declare dso_local i64 @pm_runtime_status_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_dev_dbg(%struct.device*, i32, i8*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @dpm_watchdog_set(i32*, %struct.device*) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32* @pm_op(i32*, i32) #1

declare dso_local i32 @legacy_suspend(%struct.device*, i32, i64, i8*) #1

declare dso_local i32 @dpm_run_callback(i32*, %struct.device*, i32, i8*) #1

declare dso_local i32 @dpm_propagate_wakeup_to_parent(%struct.device*) #1

declare dso_local i32 @dpm_clear_superiors_direct_complete(%struct.device*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

declare dso_local i32 @dpm_watchdog_clear(i32*) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
