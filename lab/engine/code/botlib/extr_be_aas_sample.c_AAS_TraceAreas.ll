; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_sample.c_AAS_TraceAreas.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_sample.c_AAS_TraceAreas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32, float, i32 }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_9__ = type { i32 (i32, i8*)* }
%struct.TYPE_6__ = type { float*, float*, i32, i32 }

@aasworld = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@botimport = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"AAS_TraceAreas: stack overflow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_TraceAreas(float* %0, float* %1, i32* %2, float** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca [127 x %struct.TYPE_6__], align 16
  %23 = alloca %struct.TYPE_6__*, align 8
  %24 = alloca %struct.TYPE_8__*, align 8
  %25 = alloca %struct.TYPE_7__*, align 8
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store i32* %2, i32** %9, align 8
  store float** %3, float*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 4), align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %6, align 4
  br label %333

32:                                               ; preds = %5
  %33 = getelementptr inbounds [127 x %struct.TYPE_6__], [127 x %struct.TYPE_6__]* %22, i64 0, i64 0
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %23, align 8
  %34 = load float*, float** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load float*, float** %36, align 8
  %38 = call i32 @VectorCopy(float* %34, float* %37)
  %39 = load float*, float** %8, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load float*, float** %41, align 8
  %43 = call i32 @VectorCopy(float* %39, float* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  store i32 1, i32* %47, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 1
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %23, align 8
  br label %50

50:                                               ; preds = %32, %91, %95, %332
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 -1
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %23, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %54 = getelementptr inbounds [127 x %struct.TYPE_6__], [127 x %struct.TYPE_6__]* %22, i64 0, i64 0
  %55 = icmp ult %struct.TYPE_6__* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %6, align 4
  br label %333

58:                                               ; preds = %50
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  %66 = sub nsw i32 0, %65
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load float**, float*** %10, align 8
  %72 = icmp ne float** %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %64
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load float*, float** %75, align 8
  %77 = load float**, float*** %10, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float*, float** %77, i64 %79
  %81 = load float*, float** %80, align 8
  %82 = call i32 @VectorCopy(float* %76, float* %81)
  br label %83

83:                                               ; preds = %73, %64
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %6, align 4
  br label %333

91:                                               ; preds = %83
  br label %50

92:                                               ; preds = %58
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  br label %50

96:                                               ; preds = %92
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 3), align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %24, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load float*, float** %102, align 8
  %104 = load float*, float** %19, align 8
  %105 = call i32 @VectorCopy(float* %103, float* %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load float*, float** %107, align 8
  %109 = load float*, float** %20, align 8
  %110 = call i32 @VectorCopy(float* %108, float* %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %114
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %25, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %119 [
  ]

119:                                              ; preds = %96
  %120 = load float*, float** %19, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call float @DotProduct(float* %120, i32 %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load float, float* %126, align 4
  %128 = fsub float %124, %127
  store float %128, float* %16, align 4
  %129 = load float*, float** %20, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call float @DotProduct(float* %129, i32 %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load float, float* %135, align 4
  %137 = fsub float %133, %136
  store float %137, float* %17, align 4
  br label %138

138:                                              ; preds = %119
  %139 = load float, float* %16, align 4
  %140 = fcmp ogt float %139, 0.000000e+00
  br i1 %140, label %141, label %163

141:                                              ; preds = %138
  %142 = load float, float* %17, align 4
  %143 = fcmp ogt float %142, 0.000000e+00
  br i1 %143, label %144, label %163

144:                                              ; preds = %141
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 1
  store %struct.TYPE_6__* %153, %struct.TYPE_6__** %23, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %155 = getelementptr inbounds [127 x %struct.TYPE_6__], [127 x %struct.TYPE_6__]* %22, i64 0, i64 127
  %156 = icmp uge %struct.TYPE_6__* %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %144
  %158 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 0), align 8
  %159 = load i32, i32* @PRT_ERROR, align 4
  %160 = call i32 %158(i32 %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %161 = load i32, i32* %15, align 4
  store i32 %161, i32* %6, align 4
  br label %333

162:                                              ; preds = %144
  br label %332

163:                                              ; preds = %141, %138
  %164 = load float, float* %16, align 4
  %165 = fcmp ole float %164, 0.000000e+00
  br i1 %165, label %166, label %188

166:                                              ; preds = %163
  %167 = load float, float* %17, align 4
  %168 = fcmp ole float %167, 0.000000e+00
  br i1 %168, label %169, label %188

169:                                              ; preds = %166
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 1
  store %struct.TYPE_6__* %178, %struct.TYPE_6__** %23, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %180 = getelementptr inbounds [127 x %struct.TYPE_6__], [127 x %struct.TYPE_6__]* %22, i64 0, i64 127
  %181 = icmp uge %struct.TYPE_6__* %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %169
  %183 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 0), align 8
  %184 = load i32, i32* @PRT_ERROR, align 4
  %185 = call i32 %183(i32 %184, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %186 = load i32, i32* %15, align 4
  store i32 %186, i32* %6, align 4
  br label %333

187:                                              ; preds = %169
  br label %331

188:                                              ; preds = %166, %163
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  store i32 %191, i32* %14, align 4
  %192 = load float, float* %16, align 4
  %193 = fcmp olt float %192, 0.000000e+00
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = load float, float* %16, align 4
  %196 = load float, float* %16, align 4
  %197 = load float, float* %17, align 4
  %198 = fsub float %196, %197
  %199 = fdiv float %195, %198
  store float %199, float* %18, align 4
  br label %206

200:                                              ; preds = %188
  %201 = load float, float* %16, align 4
  %202 = load float, float* %16, align 4
  %203 = load float, float* %17, align 4
  %204 = fsub float %202, %203
  %205 = fdiv float %201, %204
  store float %205, float* %18, align 4
  br label %206

206:                                              ; preds = %200, %194
  %207 = load float, float* %18, align 4
  %208 = fcmp olt float %207, 0.000000e+00
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store float 0.000000e+00, float* %18, align 4
  br label %215

210:                                              ; preds = %206
  %211 = load float, float* %18, align 4
  %212 = fcmp ogt float %211, 1.000000e+00
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  store float 1.000000e+00, float* %18, align 4
  br label %214

214:                                              ; preds = %213, %210
  br label %215

215:                                              ; preds = %214, %209
  %216 = load float*, float** %19, align 8
  %217 = getelementptr inbounds float, float* %216, i64 0
  %218 = load float, float* %217, align 4
  %219 = load float*, float** %20, align 8
  %220 = getelementptr inbounds float, float* %219, i64 0
  %221 = load float, float* %220, align 4
  %222 = load float*, float** %19, align 8
  %223 = getelementptr inbounds float, float* %222, i64 0
  %224 = load float, float* %223, align 4
  %225 = fsub float %221, %224
  %226 = load float, float* %18, align 4
  %227 = fmul float %225, %226
  %228 = fadd float %218, %227
  %229 = load float*, float** %21, align 8
  %230 = getelementptr inbounds float, float* %229, i64 0
  store float %228, float* %230, align 4
  %231 = load float*, float** %19, align 8
  %232 = getelementptr inbounds float, float* %231, i64 1
  %233 = load float, float* %232, align 4
  %234 = load float*, float** %20, align 8
  %235 = getelementptr inbounds float, float* %234, i64 1
  %236 = load float, float* %235, align 4
  %237 = load float*, float** %19, align 8
  %238 = getelementptr inbounds float, float* %237, i64 1
  %239 = load float, float* %238, align 4
  %240 = fsub float %236, %239
  %241 = load float, float* %18, align 4
  %242 = fmul float %240, %241
  %243 = fadd float %233, %242
  %244 = load float*, float** %21, align 8
  %245 = getelementptr inbounds float, float* %244, i64 1
  store float %243, float* %245, align 4
  %246 = load float*, float** %19, align 8
  %247 = getelementptr inbounds float, float* %246, i64 2
  %248 = load float, float* %247, align 4
  %249 = load float*, float** %20, align 8
  %250 = getelementptr inbounds float, float* %249, i64 2
  %251 = load float, float* %250, align 4
  %252 = load float*, float** %19, align 8
  %253 = getelementptr inbounds float, float* %252, i64 2
  %254 = load float, float* %253, align 4
  %255 = fsub float %251, %254
  %256 = load float, float* %18, align 4
  %257 = fmul float %255, %256
  %258 = fadd float %248, %257
  %259 = load float*, float** %21, align 8
  %260 = getelementptr inbounds float, float* %259, i64 2
  store float %258, float* %260, align 4
  %261 = load float, float* %16, align 4
  %262 = fcmp olt float %261, 0.000000e+00
  %263 = zext i1 %262 to i32
  store i32 %263, i32* %12, align 4
  %264 = load float*, float** %21, align 8
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load float*, float** %266, align 8
  %268 = call i32 @VectorCopy(float* %264, float* %267)
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = trunc i64 %271 to i32
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %12, align 4
  %279 = icmp ne i32 %278, 0
  %280 = xor i1 %279, true
  %281 = zext i1 %280 to i32
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %277, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 3
  store i32 %284, i32* %286, align 4
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 1
  store %struct.TYPE_6__* %288, %struct.TYPE_6__** %23, align 8
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %290 = getelementptr inbounds [127 x %struct.TYPE_6__], [127 x %struct.TYPE_6__]* %22, i64 0, i64 127
  %291 = icmp uge %struct.TYPE_6__* %289, %290
  br i1 %291, label %292, label %297

292:                                              ; preds = %215
  %293 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 0), align 8
  %294 = load i32, i32* @PRT_ERROR, align 4
  %295 = call i32 %293(i32 %294, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %296 = load i32, i32* %15, align 4
  store i32 %296, i32* %6, align 4
  br label %333

297:                                              ; preds = %215
  %298 = load float*, float** %19, align 8
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 0
  %301 = load float*, float** %300, align 8
  %302 = call i32 @VectorCopy(float* %298, float* %301)
  %303 = load float*, float** %21, align 8
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 1
  %306 = load float*, float** %305, align 8
  %307 = call i32 @VectorCopy(float* %303, float* %306)
  %308 = load i32, i32* %14, align 4
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 2
  store i32 %308, i32* %310, align 8
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %12, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 3
  store i32 %317, i32* %319, align 4
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 1
  store %struct.TYPE_6__* %321, %struct.TYPE_6__** %23, align 8
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %323 = getelementptr inbounds [127 x %struct.TYPE_6__], [127 x %struct.TYPE_6__]* %22, i64 0, i64 127
  %324 = icmp uge %struct.TYPE_6__* %322, %323
  br i1 %324, label %325, label %330

325:                                              ; preds = %297
  %326 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 0), align 8
  %327 = load i32, i32* @PRT_ERROR, align 4
  %328 = call i32 %326(i32 %327, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %329 = load i32, i32* %15, align 4
  store i32 %329, i32* %6, align 4
  br label %333

330:                                              ; preds = %297
  br label %331

331:                                              ; preds = %330, %187
  br label %332

332:                                              ; preds = %331, %162
  br label %50

333:                                              ; preds = %325, %292, %182, %157, %89, %56, %30
  %334 = load i32, i32* %6, align 4
  ret i32 %334
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local float @DotProduct(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
