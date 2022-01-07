; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-fsl-emb.c_fsl_emb_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-fsl-emb.c_fsl_emb_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64*, i32 (i64)*, i32 }
%struct.perf_event = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.perf_event* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64 }

@MAX_HWEVENTS = common dso_local global i32 0, align 4
@ppmu = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"No. of perf counters (%d) is higher than max array size(%d)\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FSL_EMB_EVENT_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FSL_EMB_EVENT_RESTRICTED = common dso_local global i32 0, align 4
@PMLCA_CE = common dso_local global i32 0, align 4
@PMLCA_FCM1 = common dso_local global i32 0, align 4
@PMLCA_EVENT_MASK = common dso_local global i64 0, align 8
@PMLCA_FCU = common dso_local global i32 0, align 4
@PMLCA_FCS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@num_events = common dso_local global i32 0, align 4
@pmc_reserve_mutex = common dso_local global i32 0, align 4
@perf_event_interrupt = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PMRN_PMGC0 = common dso_local global i32 0, align 4
@PMGC0_FAC = common dso_local global i32 0, align 4
@hw_perf_event_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @fsl_emb_pmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_emb_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %12 = load i32, i32* @MAX_HWEVENTS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca %struct.perf_event*, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAX_HWEVENTS, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MAX_HWEVENTS, align 4
  %26 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @MAX_HWEVENTS, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %21, %1
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %79 [
    i32 130, label %35
    i32 129, label %63
    i32 128, label %74
  ]

35:                                               ; preds = %30
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %40, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %35
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45, %35
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %255

56:                                               ; preds = %45
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %4, align 8
  br label %82

63:                                               ; preds = %30
  %64 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @hw_perf_cache_event(i64 %67, i64* %4)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %255

73:                                               ; preds = %63
  br label %82

74:                                               ; preds = %30
  %75 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %76 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %4, align 8
  br label %82

79:                                               ; preds = %30
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %255

82:                                               ; preds = %74, %73, %56
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i32 (i64)*, i32 (i64)** %84, align 8
  %86 = load i64, i64* %4, align 8
  %87 = call i32 %85(i64 %86)
  %88 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %89 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %92 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FSL_EMB_EVENT_VALID, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %82
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %255

101:                                              ; preds = %82
  store i32 0, i32* %7, align 4
  %102 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %103 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %102, i32 0, i32 3
  %104 = load %struct.perf_event*, %struct.perf_event** %103, align 8
  %105 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %106 = icmp ne %struct.perf_event* %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %101
  %108 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %109 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %108, i32 0, i32 3
  %110 = load %struct.perf_event*, %struct.perf_event** %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = call i32 @collect_events(%struct.perf_event* %110, i32 %114, %struct.perf_event** %15)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %255

121:                                              ; preds = %107
  br label %122

122:                                              ; preds = %121, %101
  %123 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %124 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FSL_EMB_EVENT_RESTRICTED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %163

130:                                              ; preds = %122
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %150, %130
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %153

135:                                              ; preds = %131
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %15, i64 %137
  %139 = load %struct.perf_event*, %struct.perf_event** %138, align 8
  %140 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @FSL_EMB_EVENT_RESTRICTED, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %135
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %146, %135
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %131

153:                                              ; preds = %131
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = icmp sge i32 %154, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %255

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162, %122
  %164 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %165 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store i32 -1, i32* %166, align 4
  %167 = load i32, i32* @PMLCA_CE, align 4
  %168 = load i32, i32* @PMLCA_FCM1, align 4
  %169 = or i32 %167, %168
  %170 = load i64, i64* %4, align 8
  %171 = shl i64 %170, 16
  %172 = load i64, i64* @PMLCA_EVENT_MASK, align 8
  %173 = and i64 %171, %172
  %174 = trunc i64 %173 to i32
  %175 = or i32 %169, %174
  %176 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %177 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  store i32 %175, i32* %178, align 4
  %179 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %180 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %163
  %185 = load i32, i32* @PMLCA_FCU, align 4
  %186 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %187 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %185
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %184, %163
  %192 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %193 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %191
  %198 = load i32, i32* @PMLCA_FCS, align 4
  %199 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %200 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %198
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %197, %191
  %205 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %206 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load i32, i32* @ENOTSUPP, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %255

213:                                              ; preds = %204
  %214 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %215 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %219 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 3
  store i32 %217, i32* %220, align 4
  %221 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %222 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 4
  %224 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %225 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @local64_set(i32* %223, i32 %227)
  store i32 0, i32* %8, align 4
  %229 = call i32 @atomic_inc_not_zero(i32* @num_events)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %250, label %231

231:                                              ; preds = %213
  %232 = call i32 @mutex_lock(i32* @pmc_reserve_mutex)
  %233 = call i64 @atomic_read(i32* @num_events)
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %231
  %236 = load i32, i32* @perf_event_interrupt, align 4
  %237 = call i64 @reserve_pmc_hardware(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i32, i32* @EBUSY, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %8, align 4
  br label %244

242:                                              ; preds = %235, %231
  %243 = call i32 @atomic_inc(i32* @num_events)
  br label %244

244:                                              ; preds = %242, %239
  %245 = call i32 @mutex_unlock(i32* @pmc_reserve_mutex)
  %246 = load i32, i32* @PMRN_PMGC0, align 4
  %247 = load i32, i32* @PMGC0_FAC, align 4
  %248 = call i32 @mtpmr(i32 %246, i32 %247)
  %249 = call i32 (...) @isync()
  br label %250

250:                                              ; preds = %244, %213
  %251 = load i32, i32* @hw_perf_event_destroy, align 4
  %252 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %253 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* %8, align 4
  store i32 %254, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %255

255:                                              ; preds = %250, %210, %159, %118, %98, %79, %71, %53
  %256 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %256)
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #2

declare dso_local i32 @hw_perf_cache_event(i64, i64*) #2

declare dso_local i32 @collect_events(%struct.perf_event*, i32, %struct.perf_event**) #2

declare dso_local i32 @local64_set(i32*, i32) #2

declare dso_local i32 @atomic_inc_not_zero(i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i64 @reserve_pmc_hardware(i32) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @mtpmr(i32, i32) #2

declare dso_local i32 @isync(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
