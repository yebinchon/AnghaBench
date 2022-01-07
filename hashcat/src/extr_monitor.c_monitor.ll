; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_monitor.c_monitor.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_monitor.c_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_27__*, %struct.TYPE_23__*, %struct.TYPE_25__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_21__ = type { i32, i64, i64, i64, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i64, i64, i64 }

@HL_MODE_FILE_PLAIN = common dso_local global i64 0, align 8
@HL_MODE_FILE_BINARY = common dso_local global i64 0, align 8
@STATUS_INIT = common dso_local global i64 0, align 8
@CL_DEVICE_TYPE_GPU = common dso_local global i32 0, align 4
@EVENT_MONITOR_TEMP_ABORT = common dso_local global i32 0, align 4
@EVENT_MONITOR_THROTTLE1 = common dso_local global i32 0, align 4
@EVENT_MONITOR_THROTTLE2 = common dso_local global i32 0, align 4
@EVENT_MONITOR_THROTTLE3 = common dso_local global i32 0, align 4
@EVENT_MONITOR_RUNTIME_LIMIT = common dso_local global i32 0, align 4
@EVENT_MONITOR_STATUS_REFRESH = common dso_local global i32 0, align 4
@EVENT_MONITOR_PERFORMANCE_HINT = common dso_local global i32 0, align 4
@EVENT_MONITOR_NOINPUT_ABORT = common dso_local global i32 0, align 4
@STDIN_TIMEOUT_WARN = common dso_local global i32 0, align 4
@EVENT_MONITOR_NOINPUT_HINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*)* @monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_24__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_24__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_24__*, align 8
  %39 = alloca double, align 8
  %40 = alloca i32, align 4
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %46, align 8
  store %struct.TYPE_25__* %47, %struct.TYPE_25__** %4, align 8
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  store %struct.TYPE_23__* %50, %struct.TYPE_23__** %5, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %52, align 8
  store %struct.TYPE_27__* %53, %struct.TYPE_27__** %6, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  store %struct.TYPE_22__* %56, %struct.TYPE_22__** %7, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %8, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store double 5.000000e+01, double* %17, align 8
  store double 9.000000e+01, double* %18, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %1
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @HL_MODE_FILE_PLAIN, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @HL_MODE_FILE_BINARY, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85, %79
  store i32 1, i32* %11, align 4
  br label %92

92:                                               ; preds = %91, %85, %74
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %12, align 4
  br label %98

98:                                               ; preds = %97, %92
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 1, i32* %14, align 4
  br label %104

104:                                              ; preds = %103, %98
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i32 1, i32* %15, align 4
  br label %110

110:                                              ; preds = %109, %104
  %111 = load i32, i32* %10, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i32, i32* %14, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, i32* %15, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %560

129:                                              ; preds = %125, %122, %119, %116, %113, %110
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %21, align 4
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %22, align 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %23, align 4
  br label %139

139:                                              ; preds = %529, %151, %129
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %530

144:                                              ; preds = %139
  %145 = call i32 @sleep(i32 1)
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @STATUS_INIT, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %139

152:                                              ; preds = %144
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %284

157:                                              ; preds = %152
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @hc_thread_mutex_lock(i32 %160)
  store i32 0, i32* %24, align 4
  br label %162

162:                                              ; preds = %209, %157
  %163 = load i32, i32* %24, align 4
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %212

168:                                              ; preds = %162
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  %172 = load i32, i32* %24, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i64 %173
  store %struct.TYPE_24__* %174, %struct.TYPE_24__** %25, align 8
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %209

180:                                              ; preds = %168
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %182, align 8
  %184 = load i32, i32* %24, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @CL_DEVICE_TYPE_GPU, align 4
  %190 = and i32 %188, %189
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %180
  br label %209

193:                                              ; preds = %180
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %195 = load i32, i32* %24, align 4
  %196 = call i32 @hm_get_temperature_with_devices_idx(%struct.TYPE_26__* %194, i32 %195)
  store i32 %196, i32* %26, align 4
  %197 = load i32, i32* %26, align 4
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = icmp sgt i32 %197, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %193
  %204 = load i32, i32* @EVENT_MONITOR_TEMP_ABORT, align 4
  %205 = call i32 @EVENT_DATA(i32 %204, i32* %24, i32 4)
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %207 = call i32 @myabort(%struct.TYPE_26__* %206)
  br label %208

208:                                              ; preds = %203, %193
  br label %209

209:                                              ; preds = %208, %192, %179
  %210 = load i32, i32* %24, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %24, align 4
  br label %162

212:                                              ; preds = %162
  store i32 0, i32* %27, align 4
  br label %213

213:                                              ; preds = %276, %212
  %214 = load i32, i32* %27, align 4
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %279

219:                                              ; preds = %213
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %221, align 8
  %223 = load i32, i32* %27, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i64 %224
  store %struct.TYPE_24__* %225, %struct.TYPE_24__** %28, align 8
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %230, label %231

230:                                              ; preds = %219
  br label %276

231:                                              ; preds = %219
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  br label %276

237:                                              ; preds = %231
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %239 = load i32, i32* %27, align 4
  %240 = call i32 @hm_get_throttle_with_devices_idx(%struct.TYPE_26__* %238, i32 %239)
  store i32 %240, i32* %29, align 4
  %241 = load i32, i32* %29, align 4
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %243, label %244

243:                                              ; preds = %237
  br label %276

244:                                              ; preds = %237
  %245 = load i32, i32* %29, align 4
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %268

247:                                              ; preds = %244
  %248 = load i32, i32* %19, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %19, align 4
  %250 = load i32, i32* %19, align 4
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load i32, i32* @EVENT_MONITOR_THROTTLE1, align 4
  %254 = call i32 @EVENT_DATA(i32 %253, i32* %27, i32 4)
  br label %255

255:                                              ; preds = %252, %247
  %256 = load i32, i32* %19, align 4
  %257 = icmp eq i32 %256, 2
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i32, i32* @EVENT_MONITOR_THROTTLE2, align 4
  %260 = call i32 @EVENT_DATA(i32 %259, i32* %27, i32 4)
  br label %261

261:                                              ; preds = %258, %255
  %262 = load i32, i32* %19, align 4
  %263 = icmp eq i32 %262, 3
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* @EVENT_MONITOR_THROTTLE3, align 4
  %266 = call i32 @EVENT_DATA(i32 %265, i32* %27, i32 4)
  br label %267

267:                                              ; preds = %264, %261
  br label %275

268:                                              ; preds = %244
  %269 = load i32, i32* %19, align 4
  %270 = icmp sgt i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i32, i32* %19, align 4
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %19, align 4
  br label %274

274:                                              ; preds = %271, %268
  br label %275

275:                                              ; preds = %274, %267
  br label %276

276:                                              ; preds = %275, %243, %236, %230
  %277 = load i32, i32* %27, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %27, align 4
  br label %213

279:                                              ; preds = %213
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @hc_thread_mutex_unlock(i32 %282)
  br label %284

284:                                              ; preds = %279, %152
  %285 = load i32, i32* %13, align 4
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %303

287:                                              ; preds = %284
  %288 = load i32, i32* %21, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %21, align 4
  %290 = load i32, i32* %21, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %302

292:                                              ; preds = %287
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %294 = call i32 @cycle_restore(%struct.TYPE_26__* %293)
  store i32 %294, i32* %30, align 4
  %295 = load i32, i32* %30, align 4
  %296 = icmp eq i32 %295, -1
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  store i32 -1, i32* %2, align 4
  br label %560

298:                                              ; preds = %292
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  store i32 %301, i32* %21, align 4
  br label %302

302:                                              ; preds = %298, %287
  br label %303

303:                                              ; preds = %302, %284
  %304 = load i32, i32* %10, align 4
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %322

306:                                              ; preds = %303
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = icmp sgt i64 %309, 0
  br i1 %310, label %311, label %322

311:                                              ; preds = %306
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %313 = call i32 @get_runtime_left(%struct.TYPE_26__* %312)
  store i32 %313, i32* %31, align 4
  %314 = load i32, i32* %31, align 4
  %315 = icmp sle i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %311
  %317 = load i32, i32* @EVENT_MONITOR_RUNTIME_LIMIT, align 4
  %318 = call i32 @EVENT_DATA(i32 %317, i32* null, i32 0)
  %319 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %320 = call i32 @myabort_runtime(%struct.TYPE_26__* %319)
  br label %321

321:                                              ; preds = %316, %311
  br label %322

322:                                              ; preds = %321, %306, %303
  %323 = load i32, i32* %11, align 4
  %324 = icmp eq i32 %323, 1
  br i1 %324, label %325, label %355

325:                                              ; preds = %322
  %326 = load i32, i32* %22, align 4
  %327 = add nsw i32 %326, -1
  store i32 %327, i32* %22, align 4
  %328 = load i32, i32* %22, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %354

330:                                              ; preds = %325
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %333, %336
  br i1 %337, label %338, label %350

338:                                              ; preds = %330
  %339 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %339, i32 0, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i32 0, i32 1
  store i64 %341, i64* %343, align 8
  %344 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %345 = call i32 @save_hash(%struct.TYPE_26__* %344)
  store i32 %345, i32* %32, align 4
  %346 = load i32, i32* %32, align 4
  %347 = icmp eq i32 %346, -1
  br i1 %347, label %348, label %349

348:                                              ; preds = %338
  store i32 -1, i32* %2, align 4
  br label %560

349:                                              ; preds = %338
  br label %350

350:                                              ; preds = %349, %330
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %22, align 4
  br label %354

354:                                              ; preds = %350, %325
  br label %355

355:                                              ; preds = %354, %322
  %356 = load i32, i32* %12, align 4
  %357 = icmp eq i32 %356, 1
  br i1 %357, label %358, label %378

358:                                              ; preds = %355
  %359 = load i32, i32* %23, align 4
  %360 = add nsw i32 %359, -1
  store i32 %360, i32* %23, align 4
  %361 = load i32, i32* %23, align 4
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %377

363:                                              ; preds = %358
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 5
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @hc_thread_mutex_lock(i32 %366)
  %368 = load i32, i32* @EVENT_MONITOR_STATUS_REFRESH, align 4
  %369 = call i32 @EVENT_DATA(i32 %368, i32* null, i32 0)
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @hc_thread_mutex_unlock(i32 %372)
  %374 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 8
  store i32 %376, i32* %23, align 4
  br label %377

377:                                              ; preds = %363, %358
  br label %378

378:                                              ; preds = %377, %355
  %379 = load i32, i32* %15, align 4
  %380 = icmp eq i32 %379, 1
  br i1 %380, label %381, label %486

381:                                              ; preds = %378
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store double 0.000000e+00, double* %35, align 8
  store double 0.000000e+00, double* %36, align 8
  %382 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @hc_thread_mutex_lock(i32 %384)
  store i32 0, i32* %37, align 4
  br label %386

386:                                              ; preds = %432, %381
  %387 = load i32, i32* %37, align 4
  %388 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = icmp slt i32 %387, %390
  br i1 %391, label %392, label %435

392:                                              ; preds = %386
  %393 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %393, i32 0, i32 1
  %395 = load %struct.TYPE_24__*, %struct.TYPE_24__** %394, align 8
  %396 = load i32, i32* %37, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %395, i64 %397
  store %struct.TYPE_24__* %398, %struct.TYPE_24__** %38, align 8
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = icmp eq i32 %401, 1
  br i1 %402, label %403, label %404

403:                                              ; preds = %392
  br label %432

404:                                              ; preds = %392
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 4
  %408 = icmp eq i32 %407, 1
  br i1 %408, label %409, label %410

409:                                              ; preds = %404
  br label %432

410:                                              ; preds = %404
  %411 = load i32, i32* %33, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %33, align 4
  %413 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %414 = load i32, i32* %37, align 4
  %415 = call double @status_get_exec_msec_dev(%struct.TYPE_26__* %413, i32 %414)
  store double %415, double* %39, align 8
  %416 = load double, double* %39, align 8
  %417 = load double, double* %35, align 8
  %418 = fadd double %417, %416
  store double %418, double* %35, align 8
  %419 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %420 = load i32, i32* %37, align 4
  %421 = call i32 @hm_get_utilization_with_devices_idx(%struct.TYPE_26__* %419, i32 %420)
  store i32 %421, i32* %40, align 4
  %422 = load i32, i32* %40, align 4
  %423 = icmp eq i32 %422, -1
  br i1 %423, label %424, label %425

424:                                              ; preds = %410
  br label %432

425:                                              ; preds = %410
  %426 = load i32, i32* %40, align 4
  %427 = sitofp i32 %426 to double
  %428 = load double, double* %36, align 8
  %429 = fadd double %428, %427
  store double %429, double* %36, align 8
  %430 = load i32, i32* %34, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %34, align 4
  br label %432

432:                                              ; preds = %425, %424, %409, %403
  %433 = load i32, i32* %37, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %37, align 4
  br label %386

435:                                              ; preds = %386
  %436 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %436, i32 0, i32 4
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @hc_thread_mutex_unlock(i32 %438)
  store double 0.000000e+00, double* %41, align 8
  store double 0.000000e+00, double* %42, align 8
  %440 = load i32, i32* %33, align 4
  %441 = icmp sgt i32 %440, 0
  br i1 %441, label %442, label %447

442:                                              ; preds = %435
  %443 = load double, double* %35, align 8
  %444 = load i32, i32* %33, align 4
  %445 = sitofp i32 %444 to double
  %446 = fdiv double %443, %445
  store double %446, double* %41, align 8
  br label %447

447:                                              ; preds = %442, %435
  %448 = load i32, i32* %34, align 4
  %449 = icmp sgt i32 %448, 0
  br i1 %449, label %450, label %455

450:                                              ; preds = %447
  %451 = load double, double* %36, align 8
  %452 = load i32, i32* %34, align 4
  %453 = sitofp i32 %452 to double
  %454 = fdiv double %451, %453
  store double %454, double* %42, align 8
  br label %455

455:                                              ; preds = %450, %447
  %456 = load double, double* %41, align 8
  %457 = fcmp ogt double %456, 0.000000e+00
  br i1 %457, label %458, label %470

458:                                              ; preds = %455
  %459 = load double, double* %41, align 8
  %460 = fcmp olt double %459, 5.000000e+01
  br i1 %460, label %461, label %470

461:                                              ; preds = %458
  %462 = load i32, i32* %20, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %20, align 4
  %464 = load i32, i32* %20, align 4
  %465 = icmp eq i32 %464, 10
  br i1 %465, label %466, label %469

466:                                              ; preds = %461
  %467 = load i32, i32* @EVENT_MONITOR_PERFORMANCE_HINT, align 4
  %468 = call i32 @EVENT_DATA(i32 %467, i32* null, i32 0)
  br label %469

469:                                              ; preds = %466, %461
  br label %470

470:                                              ; preds = %469, %458, %455
  %471 = load double, double* %42, align 8
  %472 = fcmp ogt double %471, 0.000000e+00
  br i1 %472, label %473, label %485

473:                                              ; preds = %470
  %474 = load double, double* %42, align 8
  %475 = fcmp olt double %474, 9.000000e+01
  br i1 %475, label %476, label %485

476:                                              ; preds = %473
  %477 = load i32, i32* %20, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %20, align 4
  %479 = load i32, i32* %20, align 4
  %480 = icmp eq i32 %479, 10
  br i1 %480, label %481, label %484

481:                                              ; preds = %476
  %482 = load i32, i32* @EVENT_MONITOR_PERFORMANCE_HINT, align 4
  %483 = call i32 @EVENT_DATA(i32 %482, i32* null, i32 0)
  br label %484

484:                                              ; preds = %481, %476
  br label %485

485:                                              ; preds = %484, %473, %470
  br label %486

486:                                              ; preds = %485, %378
  %487 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %488 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %487, i32 0, i32 5
  %489 = load i64, i64* %488, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %529

491:                                              ; preds = %486
  %492 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %493 = call i64 @status_get_progress_done(%struct.TYPE_26__* %492)
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %495, label %528

495:                                              ; preds = %491
  %496 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %497 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %496, i32 0, i32 3
  %498 = load i64, i64* %497, align 8
  %499 = icmp sgt i64 %498, 0
  br i1 %499, label %500, label %527

500:                                              ; preds = %495
  %501 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %502 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %501, i32 0, i32 3
  %503 = load i64, i64* %502, align 8
  %504 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %505 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %504, i32 0, i32 5
  %506 = load i64, i64* %505, align 8
  %507 = icmp sge i64 %503, %506
  br i1 %507, label %508, label %515

508:                                              ; preds = %500
  %509 = load i32, i32* @EVENT_MONITOR_NOINPUT_ABORT, align 4
  %510 = call i32 @EVENT_DATA(i32 %509, i32* null, i32 0)
  %511 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %512 = call i32 @myabort(%struct.TYPE_26__* %511)
  %513 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %514 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %513, i32 0, i32 0
  store i32 1, i32* %514, align 8
  br label %530

515:                                              ; preds = %500
  %516 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %517 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %516, i32 0, i32 3
  %518 = load i64, i64* %517, align 8
  %519 = load i32, i32* @STDIN_TIMEOUT_WARN, align 4
  %520 = sext i32 %519 to i64
  %521 = srem i64 %518, %520
  %522 = icmp eq i64 %521, 0
  br i1 %522, label %523, label %526

523:                                              ; preds = %515
  %524 = load i32, i32* @EVENT_MONITOR_NOINPUT_HINT, align 4
  %525 = call i32 @EVENT_DATA(i32 %524, i32* null, i32 0)
  br label %526

526:                                              ; preds = %523, %515
  br label %527

527:                                              ; preds = %526, %495
  br label %528

528:                                              ; preds = %527, %491
  br label %529

529:                                              ; preds = %528, %486
  br label %139

530:                                              ; preds = %508, %139
  %531 = load i32, i32* %11, align 4
  %532 = icmp eq i32 %531, 1
  br i1 %532, label %533, label %549

533:                                              ; preds = %530
  %534 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %535 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %534, i32 0, i32 1
  %536 = load i64, i64* %535, align 8
  %537 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %538 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %537, i32 0, i32 2
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %536, %539
  br i1 %540, label %541, label %548

541:                                              ; preds = %533
  %542 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %543 = call i32 @save_hash(%struct.TYPE_26__* %542)
  store i32 %543, i32* %43, align 4
  %544 = load i32, i32* %43, align 4
  %545 = icmp eq i32 %544, -1
  br i1 %545, label %546, label %547

546:                                              ; preds = %541
  store i32 -1, i32* %2, align 4
  br label %560

547:                                              ; preds = %541
  br label %548

548:                                              ; preds = %547, %533
  br label %549

549:                                              ; preds = %548, %530
  %550 = load i32, i32* %13, align 4
  %551 = icmp eq i32 %550, 1
  br i1 %551, label %552, label %559

552:                                              ; preds = %549
  %553 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %554 = call i32 @cycle_restore(%struct.TYPE_26__* %553)
  store i32 %554, i32* %44, align 4
  %555 = load i32, i32* %44, align 4
  %556 = icmp eq i32 %555, -1
  br i1 %556, label %557, label %558

557:                                              ; preds = %552
  store i32 -1, i32* %2, align 4
  br label %560

558:                                              ; preds = %552
  br label %559

559:                                              ; preds = %558, %549
  store i32 0, i32* %2, align 4
  br label %560

560:                                              ; preds = %559, %557, %546, %348, %297, %128
  %561 = load i32, i32* %2, align 4
  ret i32 %561
}

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @hc_thread_mutex_lock(i32) #1

declare dso_local i32 @hm_get_temperature_with_devices_idx(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @EVENT_DATA(i32, i32*, i32) #1

declare dso_local i32 @myabort(%struct.TYPE_26__*) #1

declare dso_local i32 @hm_get_throttle_with_devices_idx(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @hc_thread_mutex_unlock(i32) #1

declare dso_local i32 @cycle_restore(%struct.TYPE_26__*) #1

declare dso_local i32 @get_runtime_left(%struct.TYPE_26__*) #1

declare dso_local i32 @myabort_runtime(%struct.TYPE_26__*) #1

declare dso_local i32 @save_hash(%struct.TYPE_26__*) #1

declare dso_local double @status_get_exec_msec_dev(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @hm_get_utilization_with_devices_idx(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @status_get_progress_done(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
