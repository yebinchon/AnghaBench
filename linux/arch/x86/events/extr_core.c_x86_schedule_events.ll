; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_schedule_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_schedule_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (%struct.cpu_hw_events*)*, i32 (%struct.cpu_hw_events*, %struct.perf_event*)*, i32 (%struct.cpu_hw_events*, i32, i32)*, %struct.event_constraint* (%struct.cpu_hw_events*, i32, %struct.perf_event*)*, i32 (%struct.cpu_hw_events*)* }
%struct.cpu_hw_events = type { i32, i32, %struct.event_constraint**, %struct.perf_event**, %struct.TYPE_3__*, i32, i64 }
%struct.event_constraint = type { i32, i64*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }

@X86_PMC_IDX_MAX = common dso_local global i32 0, align 4
@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PERF_X86_EVENT_DYNAMIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_schedule_events(%struct.cpu_hw_events* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.event_constraint*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.perf_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hw_perf_event*, align 8
  %17 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %18 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  %19 = call i32 @BITS_TO_LONGS(i32 %18)
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  %24 = call i32 @bitmap_zero(i64* %22, i32 %23)
  %25 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %26 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %29 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %3
  %35 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %36 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %34, %3
  %43 = load i32 (%struct.cpu_hw_events*)*, i32 (%struct.cpu_hw_events*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 5), align 8
  %44 = icmp ne i32 (%struct.cpu_hw_events*)* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32 (%struct.cpu_hw_events*)*, i32 (%struct.cpu_hw_events*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 5), align 8
  %47 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %48 = call i32 %46(%struct.cpu_hw_events* %47)
  br label %49

49:                                               ; preds = %45, %42
  store i32 0, i32* %12, align 4
  %50 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  store i32 %50, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %121, %49
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %124

55:                                               ; preds = %51
  %56 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %57 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %56, i32 0, i32 2
  %58 = load %struct.event_constraint**, %struct.event_constraint*** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %58, i64 %60
  %62 = load %struct.event_constraint*, %struct.event_constraint** %61, align 8
  store %struct.event_constraint* %62, %struct.event_constraint** %7, align 8
  %63 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %64 = icmp ne %struct.event_constraint* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %78, label %69

69:                                               ; preds = %65, %55
  %70 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %71 = icmp ne %struct.event_constraint* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  br label %78

78:                                               ; preds = %76, %65
  %79 = phi i1 [ true, %65 ], [ %77, %76 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @WARN_ON_ONCE(i32 %80)
  %82 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %83 = icmp ne %struct.event_constraint* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %86 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PERF_X86_EVENT_DYNAMIC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %84, %78
  %92 = load %struct.event_constraint* (%struct.cpu_hw_events*, i32, %struct.perf_event*)*, %struct.event_constraint* (%struct.cpu_hw_events*, i32, %struct.perf_event*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 4), align 8
  %93 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %96 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %95, i32 0, i32 3
  %97 = load %struct.perf_event**, %struct.perf_event*** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %97, i64 %99
  %101 = load %struct.perf_event*, %struct.perf_event** %100, align 8
  %102 = call %struct.event_constraint* %92(%struct.cpu_hw_events* %93, i32 %94, %struct.perf_event* %101)
  store %struct.event_constraint* %102, %struct.event_constraint** %7, align 8
  %103 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %104 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %105 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %104, i32 0, i32 2
  %106 = load %struct.event_constraint**, %struct.event_constraint*** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %106, i64 %108
  store %struct.event_constraint* %103, %struct.event_constraint** %109, align 8
  br label %110

110:                                              ; preds = %91, %84
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %113 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @min(i32 %111, i32 %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %118 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @max(i32 %116, i32 %119)
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %51

124:                                              ; preds = %51
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %183, %124
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %186

129:                                              ; preds = %125
  %130 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %131 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %130, i32 0, i32 3
  %132 = load %struct.perf_event**, %struct.perf_event*** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %132, i64 %134
  %136 = load %struct.perf_event*, %struct.perf_event** %135, align 8
  %137 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %136, i32 0, i32 0
  store %struct.hw_perf_event* %137, %struct.hw_perf_event** %16, align 8
  %138 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %139 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %138, i32 0, i32 2
  %140 = load %struct.event_constraint**, %struct.event_constraint*** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %140, i64 %142
  %144 = load %struct.event_constraint*, %struct.event_constraint** %143, align 8
  store %struct.event_constraint* %144, %struct.event_constraint** %7, align 8
  %145 = load %struct.hw_perf_event*, %struct.hw_perf_event** %16, align 8
  %146 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %150

149:                                              ; preds = %129
  br label %186

150:                                              ; preds = %129
  %151 = load %struct.hw_perf_event*, %struct.hw_perf_event** %16, align 8
  %152 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %155 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %154, i32 0, i32 1
  %156 = load i64*, i64** %155, align 8
  %157 = call i64 @test_bit(i32 %153, i64* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %150
  br label %186

160:                                              ; preds = %150
  %161 = load %struct.hw_perf_event*, %struct.hw_perf_event** %16, align 8
  %162 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @test_bit(i32 %163, i64* %22)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %186

167:                                              ; preds = %160
  %168 = load %struct.hw_perf_event*, %struct.hw_perf_event** %16, align 8
  %169 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @__set_bit(i32 %170, i64* %22)
  %172 = load i32*, i32** %6, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %167
  %175 = load %struct.hw_perf_event*, %struct.hw_perf_event** %16, align 8
  %176 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %6, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %177, i32* %181, align 4
  br label %182

182:                                              ; preds = %174, %167
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  br label %125

186:                                              ; preds = %166, %159, %149, %125
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %220

190:                                              ; preds = %186
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 8
  store i32 %191, i32* %17, align 4
  %192 = call i64 (...) @is_ht_workaround_enabled()
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %190
  %195 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %196 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %210, label %199

199:                                              ; preds = %194
  %200 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %201 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %200, i32 0, i32 4
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @READ_ONCE(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %199
  %208 = load i32, i32* %17, align 4
  %209 = sdiv i32 %208, 2
  store i32 %209, i32* %17, align 4
  br label %210

210:                                              ; preds = %207, %199, %194, %190
  %211 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %212 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %211, i32 0, i32 2
  %213 = load %struct.event_constraint**, %struct.event_constraint*** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* %17, align 4
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 @perf_assign_events(%struct.event_constraint** %213, i32 %214, i32 %215, i32 %216, i32 %217, i32* %218)
  store i32 %219, i32* %15, align 4
  br label %220

220:                                              ; preds = %210, %186
  %221 = load i32, i32* %15, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %256, label %223

223:                                              ; preds = %220
  %224 = load i32*, i32** %6, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %256

226:                                              ; preds = %223
  store i32 0, i32* %12, align 4
  br label %227

227:                                              ; preds = %252, %226
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* %5, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %255

231:                                              ; preds = %227
  %232 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %233 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %232, i32 0, i32 3
  %234 = load %struct.perf_event**, %struct.perf_event*** %233, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %234, i64 %236
  %238 = load %struct.perf_event*, %struct.perf_event** %237, align 8
  store %struct.perf_event* %238, %struct.perf_event** %10, align 8
  %239 = load i32 (%struct.cpu_hw_events*, i32, i32)*, i32 (%struct.cpu_hw_events*, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 3), align 8
  %240 = icmp ne i32 (%struct.cpu_hw_events*, i32, i32)* %239, null
  br i1 %240, label %241, label %251

241:                                              ; preds = %231
  %242 = load i32 (%struct.cpu_hw_events*, i32, i32)*, i32 (%struct.cpu_hw_events*, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 3), align 8
  %243 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %244 = load i32, i32* %12, align 4
  %245 = load i32*, i32** %6, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = call i32 %242(%struct.cpu_hw_events* %243, i32 %244, i32 %249)
  br label %251

251:                                              ; preds = %241, %231
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %12, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %12, align 4
  br label %227

255:                                              ; preds = %227
  br label %288

256:                                              ; preds = %223, %220
  %257 = load i32, i32* %11, align 4
  store i32 %257, i32* %12, align 4
  br label %258

258:                                              ; preds = %284, %256
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %5, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %287

262:                                              ; preds = %258
  %263 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %264 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %263, i32 0, i32 3
  %265 = load %struct.perf_event**, %struct.perf_event*** %264, align 8
  %266 = load i32, i32* %12, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %265, i64 %267
  %269 = load %struct.perf_event*, %struct.perf_event** %268, align 8
  store %struct.perf_event* %269, %struct.perf_event** %10, align 8
  %270 = load i32 (%struct.cpu_hw_events*, %struct.perf_event*)*, i32 (%struct.cpu_hw_events*, %struct.perf_event*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 2), align 8
  %271 = icmp ne i32 (%struct.cpu_hw_events*, %struct.perf_event*)* %270, null
  br i1 %271, label %272, label %277

272:                                              ; preds = %262
  %273 = load i32 (%struct.cpu_hw_events*, %struct.perf_event*)*, i32 (%struct.cpu_hw_events*, %struct.perf_event*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 2), align 8
  %274 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %275 = load %struct.perf_event*, %struct.perf_event** %10, align 8
  %276 = call i32 %273(%struct.cpu_hw_events* %274, %struct.perf_event* %275)
  br label %277

277:                                              ; preds = %272, %262
  %278 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %279 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %278, i32 0, i32 2
  %280 = load %struct.event_constraint**, %struct.event_constraint*** %279, align 8
  %281 = load i32, i32* %12, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %280, i64 %282
  store %struct.event_constraint* null, %struct.event_constraint** %283, align 8
  br label %284

284:                                              ; preds = %277
  %285 = load i32, i32* %12, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %12, align 4
  br label %258

287:                                              ; preds = %258
  br label %288

288:                                              ; preds = %287, %255
  %289 = load i32 (%struct.cpu_hw_events*)*, i32 (%struct.cpu_hw_events*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 1), align 8
  %290 = icmp ne i32 (%struct.cpu_hw_events*)* %289, null
  br i1 %290, label %291, label %295

291:                                              ; preds = %288
  %292 = load i32 (%struct.cpu_hw_events*)*, i32 (%struct.cpu_hw_events*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 1), align 8
  %293 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %294 = call i32 %292(%struct.cpu_hw_events* %293)
  br label %295

295:                                              ; preds = %291, %288
  %296 = load i32, i32* %15, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32, i32* @EINVAL, align 4
  %300 = sub nsw i32 0, %299
  br label %302

301:                                              ; preds = %295
  br label %302

302:                                              ; preds = %301, %298
  %303 = phi i32 [ %300, %298 ], [ 0, %301 ]
  %304 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %304)
  ret i32 %303
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bitmap_zero(i64*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i64 @is_ht_workaround_enabled(...) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @perf_assign_events(%struct.event_constraint**, i32, i32, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
