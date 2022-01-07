; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_cpuidle_enter_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_cpuidle_enter_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.cpuidle_driver = type { i32, %struct.cpuidle_state* }
%struct.cpuidle_state = type { i32, i64, i32 (%struct.cpuidle_device.0*, %struct.cpuidle_driver.1*, i32)*, i64, i64 }
%struct.cpuidle_device.0 = type opaque
%struct.cpuidle_driver.1 = type opaque

@CPUIDLE_FLAG_TIMER_STOP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PWR_EVENT_EXIT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_enter_state(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuidle_device*, align 8
  %6 = alloca %struct.cpuidle_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpuidle_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %5, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %17 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %16, i32 0, i32 1
  %18 = load %struct.cpuidle_state*, %struct.cpuidle_state** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %18, i64 %20
  store %struct.cpuidle_state* %21, %struct.cpuidle_state** %9, align 8
  %22 = load %struct.cpuidle_state*, %struct.cpuidle_state** %9, align 8
  %23 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CPUIDLE_FLAG_TIMER_STOP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %3
  %34 = call i64 (...) @tick_broadcast_enter()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %38 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %39 = load %struct.cpuidle_state*, %struct.cpuidle_state** %9, align 8
  %40 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @CPUIDLE_FLAG_TIMER_STOP, align 4
  %43 = call i32 @find_deepest_state(%struct.cpuidle_driver* %37, %struct.cpuidle_device* %38, i64 %41, i32 %42, i32 0)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = call i32 (...) @default_idle_call()
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %273

50:                                               ; preds = %36
  %51 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %52 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %51, i32 0, i32 1
  %53 = load %struct.cpuidle_state*, %struct.cpuidle_state** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %53, i64 %55
  store %struct.cpuidle_state* %56, %struct.cpuidle_state** %9, align 8
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %50, %33, %3
  %58 = load %struct.cpuidle_state*, %struct.cpuidle_state** %9, align 8
  %59 = call i32 @sched_idle_set_state(%struct.cpuidle_state* %58)
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %62 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @trace_cpu_idle_rcuidle(i32 %60, i32 %63)
  %65 = call i32 (...) @local_clock()
  %66 = call i32 @ns_to_ktime(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = call i32 (...) @stop_critical_timings()
  %68 = load %struct.cpuidle_state*, %struct.cpuidle_state** %9, align 8
  %69 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %68, i32 0, i32 2
  %70 = load i32 (%struct.cpuidle_device.0*, %struct.cpuidle_driver.1*, i32)*, i32 (%struct.cpuidle_device.0*, %struct.cpuidle_driver.1*, i32)** %69, align 8
  %71 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %72 = bitcast %struct.cpuidle_device* %71 to %struct.cpuidle_device.0*
  %73 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %74 = bitcast %struct.cpuidle_driver* %73 to %struct.cpuidle_driver.1*
  %75 = load i32, i32* %7, align 4
  %76 = call i32 %70(%struct.cpuidle_device.0* %72, %struct.cpuidle_driver.1* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = call i32 (...) @start_critical_timings()
  %78 = call i32 (...) @sched_clock_idle_wakeup_event()
  %79 = call i32 (...) @local_clock()
  %80 = call i32 @ns_to_ktime(i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* @PWR_EVENT_EXIT, align 4
  %82 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %83 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @trace_cpu_idle_rcuidle(i32 %81, i32 %84)
  %86 = call i32 @sched_idle_set_state(%struct.cpuidle_state* null)
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %57
  %90 = call i32 (...) @irqs_disabled()
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i64 @WARN_ON_ONCE(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = call i32 (...) @local_irq_disable()
  br label %98

98:                                               ; preds = %96, %89
  %99 = call i32 (...) @tick_broadcast_exit()
  br label %100

100:                                              ; preds = %98, %57
  %101 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @cpuidle_state_is_coupled(%struct.cpuidle_driver* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = call i32 (...) @local_irq_enable()
  br label %107

107:                                              ; preds = %105, %100
  %108 = load i32, i32* %8, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %268

110:                                              ; preds = %107
  %111 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %112 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %111, i32 0, i32 1
  %113 = load %struct.cpuidle_state*, %struct.cpuidle_state** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %113, i64 %115
  %117 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %14, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i64 @ktime_us_delta(i32 %119, i32 %120)
  store i64 %121, i64* %13, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* @INT_MAX, align 8
  %124 = icmp sgt i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %110
  %126 = load i64, i64* @INT_MAX, align 8
  store i64 %126, i64* %13, align 8
  br label %127

127:                                              ; preds = %125, %110
  %128 = load i64, i64* %13, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %131 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %133 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %136 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, %134
  store i32 %143, i32* %141, align 8
  %144 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %145 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load i64, i64* %13, align 8
  %154 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %155 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %154, i32 0, i32 1
  %156 = load %struct.cpuidle_state*, %struct.cpuidle_state** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %156, i64 %158
  %160 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp slt i64 %153, %161
  br i1 %162, label %163, label %204

163:                                              ; preds = %127
  %164 = load i32, i32* %8, align 4
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %15, align 4
  br label %166

166:                                              ; preds = %200, %163
  %167 = load i32, i32* %15, align 4
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %203

169:                                              ; preds = %166
  %170 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %171 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %170, i32 0, i32 1
  %172 = load %struct.cpuidle_state*, %struct.cpuidle_state** %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %172, i64 %174
  %176 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %169
  %180 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %181 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %180, i32 0, i32 1
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %179, %169
  br label %200

190:                                              ; preds = %179
  %191 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %192 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %191, i32 0, i32 1
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 8
  br label %203

200:                                              ; preds = %189
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %15, align 4
  br label %166

203:                                              ; preds = %190, %166
  br label %267

204:                                              ; preds = %127
  %205 = load i64, i64* %13, align 8
  %206 = load i64, i64* %14, align 8
  %207 = icmp sgt i64 %205, %206
  br i1 %207, label %208, label %266

208:                                              ; preds = %204
  %209 = load i32, i32* %8, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %15, align 4
  br label %211

211:                                              ; preds = %262, %208
  %212 = load i32, i32* %15, align 4
  %213 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %214 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %265

217:                                              ; preds = %211
  %218 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %219 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %218, i32 0, i32 1
  %220 = load %struct.cpuidle_state*, %struct.cpuidle_state** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %220, i64 %222
  %224 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %237, label %227

227:                                              ; preds = %217
  %228 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %229 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %228, i32 0, i32 1
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %227, %217
  br label %262

238:                                              ; preds = %227
  %239 = load i64, i64* %13, align 8
  %240 = load i64, i64* %14, align 8
  %241 = sub nsw i64 %239, %240
  %242 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %243 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %242, i32 0, i32 1
  %244 = load %struct.cpuidle_state*, %struct.cpuidle_state** %243, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %244, i64 %246
  %248 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = icmp sge i64 %241, %249
  br i1 %250, label %251, label %261

251:                                              ; preds = %238
  %252 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %253 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %252, i32 0, i32 1
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 4
  br label %261

261:                                              ; preds = %251, %238
  br label %265

262:                                              ; preds = %237
  %263 = load i32, i32* %15, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %15, align 4
  br label %211

265:                                              ; preds = %261, %211
  br label %266

266:                                              ; preds = %265, %204
  br label %267

267:                                              ; preds = %266, %203
  br label %271

268:                                              ; preds = %107
  %269 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %270 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %269, i32 0, i32 0
  store i32 0, i32* %270, align 8
  br label %271

271:                                              ; preds = %268, %267
  %272 = load i32, i32* %8, align 4
  store i32 %272, i32* %4, align 4
  br label %273

273:                                              ; preds = %271, %46
  %274 = load i32, i32* %4, align 4
  ret i32 %274
}

declare dso_local i64 @tick_broadcast_enter(...) #1

declare dso_local i32 @find_deepest_state(%struct.cpuidle_driver*, %struct.cpuidle_device*, i64, i32, i32) #1

declare dso_local i32 @default_idle_call(...) #1

declare dso_local i32 @sched_idle_set_state(%struct.cpuidle_state*) #1

declare dso_local i32 @trace_cpu_idle_rcuidle(i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @local_clock(...) #1

declare dso_local i32 @stop_critical_timings(...) #1

declare dso_local i32 @start_critical_timings(...) #1

declare dso_local i32 @sched_clock_idle_wakeup_event(...) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @tick_broadcast_exit(...) #1

declare dso_local i32 @cpuidle_state_is_coupled(%struct.cpuidle_driver*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
