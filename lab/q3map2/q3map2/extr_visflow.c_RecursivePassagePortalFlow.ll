; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_visflow.c_RecursivePassagePortalFlow.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_visflow.c_RecursivePassagePortalFlow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { i64, i64, float, %struct.TYPE_19__, i8*, i32, i64, i64, i64, %struct.TYPE_25__* }
%struct.TYPE_19__ = type { float, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { %struct.TYPE_20__*, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i32*, float, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { float, i32 }
%struct.TYPE_24__ = type { i32*, i32*, i32*, %struct.TYPE_24__*, i8*, i8*, %struct.TYPE_22__**, %struct.TYPE_21__*, %struct.TYPE_19__, i64, %struct.TYPE_26__* }

@leafs = common dso_local global %struct.TYPE_26__* null, align 8
@portals = common dso_local global %struct.TYPE_21__* null, align 8
@portalbytes = common dso_local global i32 0, align 4
@portal_mutex = common dso_local global i32 0, align 4
@stat_done = common dso_local global i64 0, align 8
@portallongs = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RecursivePassagePortalFlow(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_22__, align 4
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %6, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** @leafs, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i64 %28
  store %struct.TYPE_26__* %29, %struct.TYPE_26__** %9, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 3
  store %struct.TYPE_24__* %7, %struct.TYPE_24__** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %32, align 8
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 10
  store %struct.TYPE_26__* %33, %struct.TYPE_26__** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 7
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %35, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 9
  store i64 %39, i64* %40, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = bitcast i32* %45 to i64*
  store i64* %46, i64** %17, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 9
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  store %struct.TYPE_25__* %49, %struct.TYPE_25__** %11, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_25__* %50, %struct.TYPE_25__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %392, %3
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %396

57:                                               ; preds = %51
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %60, i64 %62
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  store %struct.TYPE_21__* %64, %struct.TYPE_21__** %8, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %392

70:                                               ; preds = %57
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %72, align 8
  store %struct.TYPE_25__* %73, %struct.TYPE_25__** %12, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** @portals, align 8
  %76 = ptrtoint %struct.TYPE_21__* %74 to i64
  %77 = ptrtoint %struct.TYPE_21__* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 80
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %22, align 4
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %22, align 4
  %85 = ashr i32 %84, 3
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %22, align 4
  %90 = and i32 %89, 7
  %91 = shl i32 1, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %70
  br label %392

95:                                               ; preds = %70
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = bitcast i32* %98 to i64*
  store i64* %99, i64** %18, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i64*
  store i64* %103, i64** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = bitcast i32* %105 to i64*
  store i64* %106, i64** %16, align 8
  %107 = load i64*, i64** %16, align 8
  %108 = load i64*, i64** %18, align 8
  %109 = load i32, i32* @portalbytes, align 4
  %110 = call i32 @memcpy(i64* %107, i64* %108, i32 %109)
  %111 = call i32 @pthread_mutex_lock(i32* @portal_mutex)
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @stat_done, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %95
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i64*
  store i64* %121, i64** %20, align 8
  br label %127

122:                                              ; preds = %95
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i64*
  store i64* %126, i64** %20, align 8
  br label %127

127:                                              ; preds = %122, %117
  %128 = call i32 @pthread_mutex_unlock(i32* @portal_mutex)
  store i64 0, i64* %21, align 8
  store i32 0, i32* %14, align 4
  br label %129

129:                                              ; preds = %167, %127
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @portallongs, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %170

133:                                              ; preds = %129
  %134 = load i64*, i64** %16, align 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %133
  %138 = load i64*, i64** %19, align 8
  %139 = getelementptr inbounds i64, i64* %138, i32 1
  store i64* %139, i64** %19, align 8
  %140 = load i64, i64* %138, align 8
  %141 = load i64*, i64** %20, align 8
  %142 = getelementptr inbounds i64, i64* %141, i32 1
  store i64* %142, i64** %20, align 8
  %143 = load i64, i64* %141, align 8
  %144 = and i64 %140, %143
  %145 = load i64*, i64** %16, align 8
  %146 = load i64, i64* %145, align 8
  %147 = and i64 %146, %144
  store i64 %147, i64* %145, align 8
  %148 = load i64*, i64** %16, align 8
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %17, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = xor i64 %154, -1
  %156 = and i64 %149, %155
  %157 = load i64, i64* %21, align 8
  %158 = or i64 %157, %156
  store i64 %158, i64* %21, align 8
  br label %164

159:                                              ; preds = %133
  %160 = load i64*, i64** %19, align 8
  %161 = getelementptr inbounds i64, i64* %160, i32 1
  store i64* %161, i64** %19, align 8
  %162 = load i64*, i64** %20, align 8
  %163 = getelementptr inbounds i64, i64* %162, i32 1
  store i64* %163, i64** %20, align 8
  br label %164

164:                                              ; preds = %159, %137
  %165 = load i64*, i64** %16, align 8
  %166 = getelementptr inbounds i64, i64* %165, i32 1
  store i64* %166, i64** %16, align 8
  br label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %129

170:                                              ; preds = %129
  %171 = load i64, i64* %21, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %190, label %173

173:                                              ; preds = %170
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %22, align 4
  %180 = ashr i32 %179, 3
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %22, align 4
  %185 = and i32 %184, 7
  %186 = shl i32 1, %185
  %187 = and i32 %183, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %173
  br label %392

190:                                              ; preds = %173, %170
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 3
  %194 = bitcast %struct.TYPE_19__* %191 to i8*
  %195 = bitcast %struct.TYPE_19__* %193 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %194, i8* align 4 %195, i64 8, i1 false)
  %196 = load i32, i32* @vec3_origin, align 4
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @VectorSubtract(i32 %196, i32 %200, i32 %202)
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = load float, float* %206, align 4
  %208 = fneg float %207
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store float %208, float* %209, align 4
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 7
  store %struct.TYPE_21__* %210, %struct.TYPE_21__** %211, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %212, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 1, i32* %215, align 4
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  store i32 1, i32* %218, align 4
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  store i32 1, i32* %221, align 4
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call float @DotProduct(i32 %224, i32 %229)
  store float %230, float* %23, align 4
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 0
  %235 = load float, float* %234, align 8
  %236 = load float, float* %23, align 4
  %237 = fsub float %236, %235
  store float %237, float* %23, align 4
  %238 = load float, float* %23, align 4
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 2
  %241 = load float, float* %240, align 8
  %242 = fneg float %241
  %243 = fcmp olt float %238, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %190
  br label %392

245:                                              ; preds = %190
  %246 = load float, float* %23, align 4
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 2
  %249 = load float, float* %248, align 8
  %250 = fcmp ogt float %246, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %245
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 4
  %254 = load i8*, i8** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  store i8* %254, i8** %255, align 8
  br label %270

256:                                              ; preds = %245
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 4
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 0
  %263 = call i8* @VisChopWinding(i8* %259, %struct.TYPE_24__* %7, %struct.TYPE_22__* %262)
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  store i8* %263, i8** %264, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %256
  br label %392

269:                                              ; preds = %256
  br label %270

270:                                              ; preds = %269, %251
  br label %271

271:                                              ; preds = %270
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call float @DotProduct(i32 %276, i32 %280)
  store float %281, float* %24, align 4
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  %285 = load float, float* %284, align 4
  %286 = load float, float* %24, align 4
  %287 = fsub float %286, %285
  store float %287, float* %24, align 4
  %288 = load float, float* %24, align 4
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 1
  %293 = load float, float* %292, align 8
  %294 = fcmp ogt float %288, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %271
  br label %392

296:                                              ; preds = %271
  %297 = load float, float* %24, align 4
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 1
  %302 = load float, float* %301, align 8
  %303 = fneg float %302
  %304 = fcmp olt float %297, %303
  br i1 %304, label %305, label %310

305:                                              ; preds = %296
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 5
  %308 = load i8*, i8** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 5
  store i8* %308, i8** %309, align 8
  br label %321

310:                                              ; preds = %296
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %311, i32 0, i32 5
  %313 = load i8*, i8** %312, align 8
  %314 = call i8* @VisChopWinding(i8* %313, %struct.TYPE_24__* %7, %struct.TYPE_22__* %10)
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 5
  store i8* %314, i8** %315, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 5
  %317 = load i8*, i8** %316, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %320, label %319

319:                                              ; preds = %310
  br label %392

320:                                              ; preds = %310
  br label %321

321:                                              ; preds = %320, %305
  br label %322

322:                                              ; preds = %321
  %323 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %323, i32 0, i32 4
  %325 = load i8*, i8** %324, align 8
  %326 = icmp ne i8* %325, null
  br i1 %326, label %344, label %327

327:                                              ; preds = %322
  %328 = load i32, i32* %22, align 4
  %329 = and i32 %328, 7
  %330 = shl i32 1, %329
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %22, align 4
  %337 = ashr i32 %336, 3
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %335, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = or i32 %340, %330
  store i32 %341, i32* %339, align 4
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  call void @RecursivePassagePortalFlow(%struct.TYPE_21__* %342, %struct.TYPE_23__* %343, %struct.TYPE_24__* %7)
  br label %392

344:                                              ; preds = %322
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 5
  %346 = load i8*, i8** %345, align 8
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 4
  %349 = load i8*, i8** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  %351 = load i8*, i8** %350, align 8
  %352 = load i32, i32* @qfalse, align 4
  %353 = call i8* @ClipToSeperators(i8* %346, i8* %349, i8* %351, i32 %352, %struct.TYPE_24__* %7)
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  store i8* %353, i8** %354, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  %356 = load i8*, i8** %355, align 8
  %357 = icmp ne i8* %356, null
  br i1 %357, label %359, label %358

358:                                              ; preds = %344
  br label %392

359:                                              ; preds = %344
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %360, i32 0, i32 4
  %362 = load i8*, i8** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 5
  %364 = load i8*, i8** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  %366 = load i8*, i8** %365, align 8
  %367 = load i32, i32* @qtrue, align 4
  %368 = call i8* @ClipToSeperators(i8* %362, i8* %364, i8* %366, i32 %367, %struct.TYPE_24__* %7)
  %369 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  store i8* %368, i8** %369, align 8
  %370 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  %371 = load i8*, i8** %370, align 8
  %372 = icmp ne i8* %371, null
  br i1 %372, label %374, label %373

373:                                              ; preds = %359
  br label %392

374:                                              ; preds = %359
  %375 = load i32, i32* %22, align 4
  %376 = and i32 %375, 7
  %377 = shl i32 1, %376
  %378 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %380, i32 0, i32 0
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %22, align 4
  %384 = ashr i32 %383, 3
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %382, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %387, %377
  store i32 %388, i32* %386, align 4
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %390 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  call void @RecursivePassagePortalFlow(%struct.TYPE_21__* %389, %struct.TYPE_23__* %390, %struct.TYPE_24__* %7)
  %391 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %391, align 8
  br label %392

392:                                              ; preds = %374, %373, %358, %327, %319, %295, %268, %244, %189, %94, %69
  %393 = load i32, i32* %13, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %13, align 4
  %395 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  store %struct.TYPE_25__* %395, %struct.TYPE_25__** %11, align 8
  br label %51

396:                                              ; preds = %51
  ret void
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i8* @VisChopWinding(i8*, %struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i8* @ClipToSeperators(i8*, i8*, i8*, i32, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
