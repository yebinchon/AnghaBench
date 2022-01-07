; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_teo.c_teo_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_teo.c_teo_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32, %struct.cpuidle_state* }
%struct.cpuidle_state = type { i32, i32, i32, i64 }
%struct.cpuidle_device = type { i32, %struct.cpuidle_state_usage*, i32 }
%struct.cpuidle_state_usage = type { i64 }
%struct.teo_cpu = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@teo_cpus = common dso_local global i32 0, align 4
@TICK_USEC = common dso_local global i32 0, align 4
@INTERVALS = common dso_local global i32 0, align 4
@CPUIDLE_FLAG_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i32*)* @teo_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teo_select(%struct.cpuidle_driver* %0, %struct.cpuidle_device* %1, i32* %2) #0 {
  %4 = alloca %struct.cpuidle_driver*, align 8
  %5 = alloca %struct.cpuidle_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.teo_cpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cpuidle_state*, align 8
  %17 = alloca %struct.cpuidle_state_usage*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %4, align 8
  store %struct.cpuidle_device* %1, %struct.cpuidle_device** %5, align 8
  store i32* %2, i32** %6, align 8
  %22 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %23 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.teo_cpu* @per_cpu_ptr(i32* @teo_cpus, i32 %24)
  store %struct.teo_cpu* %25, %struct.teo_cpu** %7, align 8
  %26 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %27 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cpuidle_governor_latency_req(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %31 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %36 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %37 = call i32 @teo_update(%struct.cpuidle_driver* %35, %struct.cpuidle_device* %36)
  %38 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %39 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %3
  %41 = call i32 (...) @local_clock()
  %42 = load %struct.teo_cpu*, %struct.teo_cpu** %7, align 8
  %43 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = call i32 @tick_nohz_get_sleep_length(i32* %15)
  %45 = load %struct.teo_cpu*, %struct.teo_cpu** %7, align 8
  %46 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.teo_cpu*, %struct.teo_cpu** %7, align 8
  %48 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ktime_to_us(i32 %49)
  store i32 %50, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %51 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %52 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %167, %40
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %57 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %170

60:                                               ; preds = %54
  %61 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %62 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %61, i32 0, i32 1
  %63 = load %struct.cpuidle_state*, %struct.cpuidle_state** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %63, i64 %65
  store %struct.cpuidle_state* %66, %struct.cpuidle_state** %16, align 8
  %67 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %68 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %67, i32 0, i32 1
  %69 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %69, i64 %71
  store %struct.cpuidle_state_usage* %72, %struct.cpuidle_state_usage** %17, align 8
  %73 = load %struct.cpuidle_state*, %struct.cpuidle_state** %16, align 8
  %74 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %60
  %78 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %17, align 8
  %79 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %77, %60
  %83 = load i32, i32* %11, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.teo_cpu*, %struct.teo_cpu** %7, align 8
  %88 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %86, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %85
  %97 = load %struct.teo_cpu*, %struct.teo_cpu** %7, align 8
  %98 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %96, %85, %82
  br label %167

106:                                              ; preds = %77
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %109, %106
  %112 = load %struct.cpuidle_state*, %struct.cpuidle_state** %16, align 8
  %113 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = icmp ugt i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %170

118:                                              ; preds = %111
  %119 = load %struct.cpuidle_state*, %struct.cpuidle_state** %16, align 8
  %120 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %128, %124, %118
  %131 = load i32, i32* %14, align 4
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.teo_cpu*, %struct.teo_cpu** %7, align 8
  %134 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ult i32 %132, %140
  br i1 %141, label %142, label %166

142:                                              ; preds = %130
  %143 = call i64 (...) @tick_nohz_tick_stopped()
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %147 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %146, i32 0, i32 1
  %148 = load %struct.cpuidle_state*, %struct.cpuidle_state** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %148, i64 %150
  %152 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @TICK_USEC, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %166, label %156

156:                                              ; preds = %145, %142
  %157 = load %struct.teo_cpu*, %struct.teo_cpu** %7, align 8
  %158 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %157, i32 0, i32 1
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %11, align 4
  br label %166

166:                                              ; preds = %156, %145, %130
  br label %167

167:                                              ; preds = %166, %105
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %54

170:                                              ; preds = %117, %54
  %171 = load %struct.teo_cpu*, %struct.teo_cpu** %7, align 8
  %172 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %171, i32 0, i32 1
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.teo_cpu*, %struct.teo_cpu** %7, align 8
  %180 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %179, i32 0, i32 1
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp sle i64 %178, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %170
  %189 = load i32, i32* %11, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %188
  %192 = load i32, i32* %11, align 4
  store i32 %192, i32* %13, align 4
  %193 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %194 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %193, i32 0, i32 1
  %195 = load %struct.cpuidle_state*, %struct.cpuidle_state** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %195, i64 %197
  %199 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %9, align 4
  br label %201

201:                                              ; preds = %191, %188, %170
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = load i32, i32* %12, align 4
  store i32 %206, i32* %13, align 4
  br label %207

207:                                              ; preds = %205, %201
  %208 = load i32, i32* %13, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i32 0, i32* %13, align 4
  br label %277

211:                                              ; preds = %207
  %212 = load i32, i32* %13, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %276

214:                                              ; preds = %211
  store i32 0, i32* %18, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %215

215:                                              ; preds = %237, %214
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* @INTERVALS, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %240

219:                                              ; preds = %215
  %220 = load %struct.teo_cpu*, %struct.teo_cpu** %7, align 8
  %221 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %19, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %9, align 4
  %229 = icmp uge i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %219
  br label %237

231:                                              ; preds = %219
  %232 = load i32, i32* %10, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %18, align 4
  %236 = add i32 %235, %234
  store i32 %236, i32* %18, align 4
  br label %237

237:                                              ; preds = %231, %230
  %238 = load i32, i32* %14, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %14, align 4
  br label %215

240:                                              ; preds = %215
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @INTERVALS, align 4
  %243 = sdiv i32 %242, 2
  %244 = icmp ugt i32 %241, %243
  br i1 %244, label %245, label %275

245:                                              ; preds = %240
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %10, align 4
  %248 = call i32 @div64_u64(i32 %246, i32 %247)
  store i32 %248, i32* %20, align 4
  %249 = call i64 (...) @tick_nohz_tick_stopped()
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %245
  %252 = load i32, i32* %20, align 4
  %253 = load i32, i32* @TICK_USEC, align 4
  %254 = icmp ult i32 %252, %253
  br i1 %254, label %274, label %255

255:                                              ; preds = %251, %245
  %256 = load i32, i32* %20, align 4
  store i32 %256, i32* %9, align 4
  %257 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %258 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %257, i32 0, i32 1
  %259 = load %struct.cpuidle_state*, %struct.cpuidle_state** %258, align 8
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %259, i64 %261
  %263 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %20, align 4
  %266 = icmp ugt i32 %264, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %255
  %268 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %269 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %270 = load i32, i32* %13, align 4
  %271 = load i32, i32* %20, align 4
  %272 = call i32 @teo_find_shallower_state(%struct.cpuidle_driver* %268, %struct.cpuidle_device* %269, i32 %270, i32 %271)
  store i32 %272, i32* %13, align 4
  br label %273

273:                                              ; preds = %267, %255
  br label %274

274:                                              ; preds = %273, %251
  br label %275

275:                                              ; preds = %274, %240
  br label %276

276:                                              ; preds = %275, %211
  br label %277

277:                                              ; preds = %276, %210
  %278 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %279 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %278, i32 0, i32 1
  %280 = load %struct.cpuidle_state*, %struct.cpuidle_state** %279, align 8
  %281 = load i32, i32* %13, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %280, i64 %282
  %284 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @CPUIDLE_FLAG_POLLING, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %293, label %289

289:                                              ; preds = %277
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* @TICK_USEC, align 4
  %292 = icmp ult i32 %290, %291
  br i1 %292, label %293, label %320

293:                                              ; preds = %289, %277
  %294 = call i64 (...) @tick_nohz_tick_stopped()
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %320, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* %15, align 4
  %298 = call i32 @ktime_to_us(i32 %297)
  store i32 %298, i32* %21, align 4
  %299 = load i32*, i32** %6, align 8
  store i32 0, i32* %299, align 4
  %300 = load i32, i32* %13, align 4
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %302, label %319

302:                                              ; preds = %296
  %303 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %304 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %303, i32 0, i32 1
  %305 = load %struct.cpuidle_state*, %struct.cpuidle_state** %304, align 8
  %306 = load i32, i32* %13, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %305, i64 %307
  %309 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* %21, align 4
  %312 = icmp ugt i32 %310, %311
  br i1 %312, label %313, label %319

313:                                              ; preds = %302
  %314 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %315 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* %21, align 4
  %318 = call i32 @teo_find_shallower_state(%struct.cpuidle_driver* %314, %struct.cpuidle_device* %315, i32 %316, i32 %317)
  store i32 %318, i32* %13, align 4
  br label %319

319:                                              ; preds = %313, %302, %296
  br label %320

320:                                              ; preds = %319, %293, %289
  %321 = load i32, i32* %13, align 4
  ret i32 %321
}

declare dso_local %struct.teo_cpu* @per_cpu_ptr(i32*, i32) #1

declare dso_local i32 @cpuidle_governor_latency_req(i32) #1

declare dso_local i32 @teo_update(%struct.cpuidle_driver*, %struct.cpuidle_device*) #1

declare dso_local i32 @local_clock(...) #1

declare dso_local i32 @tick_nohz_get_sleep_length(i32*) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i64 @tick_nohz_tick_stopped(...) #1

declare dso_local i32 @div64_u64(i32, i32) #1

declare dso_local i32 @teo_find_shallower_state(%struct.cpuidle_driver*, %struct.cpuidle_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
