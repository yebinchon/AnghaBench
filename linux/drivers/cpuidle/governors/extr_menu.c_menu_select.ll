; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_menu.c_menu_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_menu.c_menu_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32, %struct.cpuidle_state* }
%struct.cpuidle_state = type { i32, i32, i32, i64 }
%struct.cpuidle_device = type { %struct.cpuidle_state_usage*, i32 }
%struct.cpuidle_state_usage = type { i64 }
%struct.menu_device = type { i32, i64, i32*, i64 }

@menu_devices = common dso_local global i32 0, align 4
@CPUIDLE_FLAG_POLLING = common dso_local global i32 0, align 4
@RESOLUTION = common dso_local global i32 0, align 4
@DECAY = common dso_local global i32 0, align 4
@TICK_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i32*)* @menu_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_select(%struct.cpuidle_driver* %0, %struct.cpuidle_device* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca %struct.cpuidle_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.menu_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.cpuidle_state*, align 8
  %17 = alloca %struct.cpuidle_state_usage*, align 8
  %18 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %5, align 8
  store %struct.cpuidle_device* %1, %struct.cpuidle_device** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = call %struct.menu_device* @this_cpu_ptr(i32* @menu_devices)
  store %struct.menu_device* %19, %struct.menu_device** %8, align 8
  %20 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %21 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @cpuidle_governor_latency_req(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.menu_device*, %struct.menu_device** %8, align 8
  %25 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %30 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %31 = call i32 @menu_update(%struct.cpuidle_driver* %29, %struct.cpuidle_device* %30)
  %32 = load %struct.menu_device*, %struct.menu_device** %8, align 8
  %33 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %3
  %35 = call i32 @tick_nohz_get_sleep_length(i32* %15)
  %36 = call i8* @ktime_to_us(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.menu_device*, %struct.menu_device** %8, align 8
  %39 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %41 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @nr_iowait_cpu(i32 %42)
  store i64 %43, i64* %14, align 8
  %44 = load %struct.menu_device*, %struct.menu_device** %8, align 8
  %45 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i64 @which_bucket(i32 %46, i64 %47)
  %49 = load %struct.menu_device*, %struct.menu_device** %8, align 8
  %50 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %52 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sle i32 %53, 1
  br i1 %54, label %58, label %55

55:                                               ; preds = %34
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br label %58

58:                                               ; preds = %55, %34
  %59 = phi i1 [ true, %34 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %99, label %63

63:                                               ; preds = %58
  %64 = load %struct.menu_device*, %struct.menu_device** %8, align 8
  %65 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %68 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %67, i32 0, i32 1
  %69 = load %struct.cpuidle_state*, %struct.cpuidle_state** %68, align 8
  %70 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %69, i64 1
  %71 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %66, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %77 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %76, i32 0, i32 1
  %78 = load %struct.cpuidle_state*, %struct.cpuidle_state** %77, align 8
  %79 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %78, i64 1
  %80 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %75, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %74, %63
  %84 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %85 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %84, i32 0, i32 1
  %86 = load %struct.cpuidle_state*, %struct.cpuidle_state** %85, align 8
  %87 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %86, i64 0
  %88 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %112, label %91

91:                                               ; preds = %83
  %92 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %93 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %92, i32 0, i32 0
  %94 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %93, align 8
  %95 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %94, i64 0
  %96 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %91, %58
  %100 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %101 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %100, i32 0, i32 1
  %102 = load %struct.cpuidle_state*, %struct.cpuidle_state** %101, align 8
  %103 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %102, i64 0
  %104 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @CPUIDLE_FLAG_POLLING, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = load i32*, i32** %7, align 8
  store i32 %110, i32* %111, align 4
  store i32 0, i32* %4, align 4
  br label %370

112:                                              ; preds = %91, %83, %74
  %113 = load %struct.menu_device*, %struct.menu_device** %8, align 8
  %114 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.menu_device*, %struct.menu_device** %8, align 8
  %117 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.menu_device*, %struct.menu_device** %8, align 8
  %120 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %115, %123
  %125 = load i32, i32* @RESOLUTION, align 4
  %126 = load i32, i32* @DECAY, align 4
  %127 = mul nsw i32 %125, %126
  %128 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %124, i32 %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.menu_device*, %struct.menu_device** %8, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @get_typical_interval(%struct.menu_device* %130, i32 %131)
  %133 = call i32 @min(i32 %129, i32 %132)
  store i32 %133, i32* %13, align 4
  %134 = call i64 (...) @tick_nohz_tick_stopped()
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %112
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @TICK_USEC, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* %15, align 4
  %142 = call i8* @ktime_to_us(i32 %141)
  %143 = ptrtoint i8* %142 to i32
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %140, %136
  br label %156

145:                                              ; preds = %112
  %146 = load i32, i32* %13, align 4
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @performance_multiplier(i64 %147)
  %149 = udiv i32 %146, %148
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ugt i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %153, %145
  br label %156

156:                                              ; preds = %155, %144
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %278, %156
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %160 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %281

163:                                              ; preds = %157
  %164 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %165 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %164, i32 0, i32 1
  %166 = load %struct.cpuidle_state*, %struct.cpuidle_state** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %166, i64 %168
  store %struct.cpuidle_state* %169, %struct.cpuidle_state** %16, align 8
  %170 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %171 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %170, i32 0, i32 0
  %172 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %172, i64 %174
  store %struct.cpuidle_state_usage* %175, %struct.cpuidle_state_usage** %17, align 8
  %176 = load %struct.cpuidle_state*, %struct.cpuidle_state** %16, align 8
  %177 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %163
  %181 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %17, align 8
  %182 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180, %163
  br label %278

186:                                              ; preds = %180
  %187 = load i32, i32* %11, align 4
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %189, %186
  %192 = load %struct.cpuidle_state*, %struct.cpuidle_state** %16, align 8
  %193 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = icmp ugt i32 %194, %195
  br i1 %196, label %197, label %269

197:                                              ; preds = %191
  %198 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %199 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %198, i32 0, i32 1
  %200 = load %struct.cpuidle_state*, %struct.cpuidle_state** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %200, i64 %202
  %204 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @CPUIDLE_FLAG_POLLING, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %228

209:                                              ; preds = %197
  %210 = load %struct.cpuidle_state*, %struct.cpuidle_state** %16, align 8
  %211 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp sle i32 %212, %213
  br i1 %214, label %215, label %228

215:                                              ; preds = %209
  %216 = load %struct.cpuidle_state*, %struct.cpuidle_state** %16, align 8
  %217 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.menu_device*, %struct.menu_device** %8, align 8
  %220 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ule i32 %218, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %215
  %224 = load %struct.cpuidle_state*, %struct.cpuidle_state** %16, align 8
  %225 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  store i32 %226, i32* %13, align 4
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %11, align 4
  br label %281

228:                                              ; preds = %215, %209, %197
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* @TICK_USEC, align 4
  %231 = icmp ult i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  br label %281

233:                                              ; preds = %228
  %234 = call i64 (...) @tick_nohz_tick_stopped()
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %233
  %237 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %238 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %237, i32 0, i32 1
  %239 = load %struct.cpuidle_state*, %struct.cpuidle_state** %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %239, i64 %241
  %243 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  store i32 %244, i32* %13, align 4
  br label %281

245:                                              ; preds = %233
  %246 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %247 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %246, i32 0, i32 1
  %248 = load %struct.cpuidle_state*, %struct.cpuidle_state** %247, align 8
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %248, i64 %250
  %252 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @TICK_USEC, align 4
  %255 = icmp ult i32 %253, %254
  br i1 %255, label %256, label %267

256:                                              ; preds = %245
  %257 = load %struct.cpuidle_state*, %struct.cpuidle_state** %16, align 8
  %258 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = zext i32 %259 to i64
  %261 = inttoptr i64 %260 to i8*
  %262 = load i32, i32* %15, align 4
  %263 = call i8* @ktime_to_us(i32 %262)
  %264 = icmp ule i8* %261, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %256
  %266 = load i32, i32* %10, align 4
  store i32 %266, i32* %11, align 4
  br label %267

267:                                              ; preds = %265, %256, %245
  %268 = load i32, i32* %11, align 4
  store i32 %268, i32* %4, align 4
  br label %370

269:                                              ; preds = %191
  %270 = load %struct.cpuidle_state*, %struct.cpuidle_state** %16, align 8
  %271 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp sgt i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %269
  br label %281

276:                                              ; preds = %269
  %277 = load i32, i32* %10, align 4
  store i32 %277, i32* %11, align 4
  br label %278

278:                                              ; preds = %276, %185
  %279 = load i32, i32* %10, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %10, align 4
  br label %157

281:                                              ; preds = %275, %236, %232, %223, %157
  %282 = load i32, i32* %11, align 4
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  store i32 0, i32* %11, align 4
  br label %285

285:                                              ; preds = %284, %281
  %286 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %287 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %286, i32 0, i32 1
  %288 = load %struct.cpuidle_state*, %struct.cpuidle_state** %287, align 8
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %288, i64 %290
  %292 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @CPUIDLE_FLAG_POLLING, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %285
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* @TICK_USEC, align 4
  %300 = icmp ult i32 %298, %299
  br i1 %300, label %301, label %368

301:                                              ; preds = %297, %285
  %302 = call i64 (...) @tick_nohz_tick_stopped()
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %368, label %304

304:                                              ; preds = %301
  %305 = load i32, i32* %15, align 4
  %306 = call i8* @ktime_to_us(i32 %305)
  %307 = ptrtoint i8* %306 to i32
  store i32 %307, i32* %18, align 4
  %308 = load i32*, i32** %7, align 8
  store i32 0, i32* %308, align 4
  %309 = load i32, i32* %11, align 4
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %367

311:                                              ; preds = %304
  %312 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %313 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %312, i32 0, i32 1
  %314 = load %struct.cpuidle_state*, %struct.cpuidle_state** %313, align 8
  %315 = load i32, i32* %11, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %314, i64 %316
  %318 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* %18, align 4
  %321 = icmp ugt i32 %319, %320
  br i1 %321, label %322, label %367

322:                                              ; preds = %311
  %323 = load i32, i32* %11, align 4
  %324 = sub nsw i32 %323, 1
  store i32 %324, i32* %10, align 4
  br label %325

325:                                              ; preds = %363, %322
  %326 = load i32, i32* %10, align 4
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %366

328:                                              ; preds = %325
  %329 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %330 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %329, i32 0, i32 1
  %331 = load %struct.cpuidle_state*, %struct.cpuidle_state** %330, align 8
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %331, i64 %333
  %335 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %348, label %338

338:                                              ; preds = %328
  %339 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %340 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %339, i32 0, i32 0
  %341 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %340, align 8
  %342 = load i32, i32* %10, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %341, i64 %343
  %345 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %338, %328
  br label %363

349:                                              ; preds = %338
  %350 = load i32, i32* %10, align 4
  store i32 %350, i32* %11, align 4
  %351 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %352 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %351, i32 0, i32 1
  %353 = load %struct.cpuidle_state*, %struct.cpuidle_state** %352, align 8
  %354 = load i32, i32* %10, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %353, i64 %355
  %357 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* %18, align 4
  %360 = icmp ule i32 %358, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %349
  br label %366

362:                                              ; preds = %349
  br label %363

363:                                              ; preds = %362, %348
  %364 = load i32, i32* %10, align 4
  %365 = add nsw i32 %364, -1
  store i32 %365, i32* %10, align 4
  br label %325

366:                                              ; preds = %361, %325
  br label %367

367:                                              ; preds = %366, %311, %304
  br label %368

368:                                              ; preds = %367, %301, %297
  %369 = load i32, i32* %11, align 4
  store i32 %369, i32* %4, align 4
  br label %370

370:                                              ; preds = %368, %267, %99
  %371 = load i32, i32* %4, align 4
  ret i32 %371
}

declare dso_local %struct.menu_device* @this_cpu_ptr(i32*) #1

declare dso_local i32 @cpuidle_governor_latency_req(i32) #1

declare dso_local i32 @menu_update(%struct.cpuidle_driver*, %struct.cpuidle_device*) #1

declare dso_local i8* @ktime_to_us(i32) #1

declare dso_local i32 @tick_nohz_get_sleep_length(i32*) #1

declare dso_local i64 @nr_iowait_cpu(i32) #1

declare dso_local i64 @which_bucket(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @get_typical_interval(%struct.menu_device*, i32) #1

declare dso_local i64 @tick_nohz_tick_stopped(...) #1

declare dso_local i32 @performance_multiplier(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
