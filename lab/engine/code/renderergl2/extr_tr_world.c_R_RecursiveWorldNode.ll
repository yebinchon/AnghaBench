; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_world.c_R_RecursiveWorldNode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_world.c_R_RecursiveWorldNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64*, i64, %struct.TYPE_15__*, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32*, i64*, i32*, i32* }
%struct.TYPE_16__ = type { i32, i64**, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { float, i32 }
%struct.TYPE_20__ = type { float, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_19__ = type { i64*, i64*, i64*, i32, i32, i32, %struct.TYPE_19__**, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { float, i32 }

@tr = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@VPF_DEPTHSHADOW = common dso_local global i32 0, align 4
@r_nocull = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32, i32, i32)* @R_RecursiveWorldNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_RecursiveWorldNode(%struct.TYPE_19__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %21

21:                                               ; preds = %323, %4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 0), align 8
  %23 = load i32, i32* @VPF_DEPTHSHADOW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 0), align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 1), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %530

39:                                               ; preds = %26, %21
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_nocull, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %165, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 2), align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = call i32 @BoxOnPlaneSide(i64* %51, i64* %54, i32* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %530

61:                                               ; preds = %48
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, -2
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 2), align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = call i32 @BoxOnPlaneSide(i64* %75, i64* %78, i32* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %530

85:                                               ; preds = %72
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, -3
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %68
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %92
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 2), align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = call i32 @BoxOnPlaneSide(i64* %99, i64* %102, i32* %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  br label %530

109:                                              ; preds = %96
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = and i32 %113, -5
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %92
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  %127 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 2), align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = call i32 @BoxOnPlaneSide(i64* %123, i64* %126, i32* %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %530

133:                                              ; preds = %120
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, -9
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %136, %133
  br label %140

140:                                              ; preds = %139, %116
  %141 = load i32, i32* %6, align 4
  %142 = and i32 %141, 16
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %164

144:                                              ; preds = %140
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 2
  %150 = load i64*, i64** %149, align 8
  %151 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 2), align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  %153 = call i32 @BoxOnPlaneSide(i64* %147, i64* %150, i32* %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  br label %530

157:                                              ; preds = %144
  %158 = load i32, i32* %11, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = and i32 %161, -17
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %160, %157
  br label %164

164:                                              ; preds = %163, %140
  br label %165

165:                                              ; preds = %164, %39
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, -1
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %324

171:                                              ; preds = %165
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %172, align 4
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %173, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %237

176:                                              ; preds = %171
  store i32 0, i32* %12, align 4
  br label %177

177:                                              ; preds = %233, %176
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 6, i32 0), align 8
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %236

181:                                              ; preds = %177
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %12, align 4
  %184 = shl i32 1, %183
  %185 = and i32 %182, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %232

187:                                              ; preds = %181
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 6, i32 3), align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i64 %190
  store %struct.TYPE_20__* %191, %struct.TYPE_20__** %13, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 7
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call float @DotProduct(i32 %194, i32 %199)
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 7
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load float, float* %204, align 4
  %206 = fsub float %200, %205
  store float %206, float* %14, align 4
  %207 = load float, float* %14, align 4
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 0
  %210 = load float, float* %209, align 4
  %211 = fneg float %210
  %212 = fcmp ogt float %207, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %187
  %214 = load i32, i32* %12, align 4
  %215 = shl i32 1, %214
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %215
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %213, %187
  %220 = load float, float* %14, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  %223 = load float, float* %222, align 4
  %224 = fcmp olt float %220, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %219
  %226 = load i32, i32* %12, align 4
  %227 = shl i32 1, %226
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %227
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %225, %219
  br label %232

232:                                              ; preds = %231, %181
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %177

236:                                              ; preds = %177
  br label %237

237:                                              ; preds = %236, %171
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %238, align 4
  %239 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %239, align 4
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %303

242:                                              ; preds = %237
  store i32 0, i32* %15, align 4
  br label %243

243:                                              ; preds = %299, %242
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 6, i32 1), align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %302

247:                                              ; preds = %243
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* %15, align 4
  %250 = shl i32 1, %249
  %251 = and i32 %248, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %298

253:                                              ; preds = %247
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 6, i32 2), align 8
  %255 = load i32, i32* %15, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i64 %256
  store %struct.TYPE_18__* %257, %struct.TYPE_18__** %16, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 7
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call float @DotProduct(i32 %260, i32 %265)
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 7
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = load float, float* %270, align 4
  %272 = fsub float %266, %271
  store float %272, float* %17, align 4
  %273 = load float, float* %17, align 4
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %276 = load float, float* %275, align 4
  %277 = fneg float %276
  %278 = fcmp ogt float %273, %277
  br i1 %278, label %279, label %285

279:                                              ; preds = %253
  %280 = load i32, i32* %15, align 4
  %281 = shl i32 1, %280
  %282 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %281
  store i32 %284, i32* %282, align 4
  br label %285

285:                                              ; preds = %279, %253
  %286 = load float, float* %17, align 4
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load float, float* %288, align 4
  %290 = fcmp olt float %286, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %285
  %292 = load i32, i32* %15, align 4
  %293 = shl i32 1, %292
  %294 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %293
  store i32 %296, i32* %294, align 4
  br label %297

297:                                              ; preds = %291, %285
  br label %298

298:                                              ; preds = %297, %247
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %15, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %15, align 4
  br label %243

302:                                              ; preds = %243
  br label %303

303:                                              ; preds = %302, %237
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 6
  %306 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %306, i64 0
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %307, align 8
  %309 = load i32, i32* %6, align 4
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %313 = load i32, i32* %312, align 4
  call void @R_RecursiveWorldNode(%struct.TYPE_19__* %308, i32 %309, i32 %311, i32 %313)
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 6
  %316 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %316, i64 1
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %317, align 8
  store %struct.TYPE_19__* %318, %struct.TYPE_19__** %5, align 8
  %319 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %320 = load i32, i32* %319, align 4
  store i32 %320, i32* %7, align 4
  %321 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %322 = load i32, i32* %321, align 4
  store i32 %322, i32* %8, align 4
  br label %323

323:                                              ; preds = %303
  br i1 true, label %21, label %324

324:                                              ; preds = %323, %170
  %325 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 5, i32 0), align 8
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 5, i32 0), align 8
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 1
  %329 = load i64*, i64** %328, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 1), align 8
  %333 = getelementptr inbounds i64*, i64** %332, i64 0
  %334 = load i64*, i64** %333, align 8
  %335 = getelementptr inbounds i64, i64* %334, i64 0
  %336 = load i64, i64* %335, align 8
  %337 = icmp slt i64 %331, %336
  br i1 %337, label %338, label %348

338:                                              ; preds = %324
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 1
  %341 = load i64*, i64** %340, align 8
  %342 = getelementptr inbounds i64, i64* %341, i64 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 1), align 8
  %345 = getelementptr inbounds i64*, i64** %344, i64 0
  %346 = load i64*, i64** %345, align 8
  %347 = getelementptr inbounds i64, i64* %346, i64 0
  store i64 %343, i64* %347, align 8
  br label %348

348:                                              ; preds = %338, %324
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 1
  %351 = load i64*, i64** %350, align 8
  %352 = getelementptr inbounds i64, i64* %351, i64 1
  %353 = load i64, i64* %352, align 8
  %354 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 1), align 8
  %355 = getelementptr inbounds i64*, i64** %354, i64 0
  %356 = load i64*, i64** %355, align 8
  %357 = getelementptr inbounds i64, i64* %356, i64 1
  %358 = load i64, i64* %357, align 8
  %359 = icmp slt i64 %353, %358
  br i1 %359, label %360, label %370

360:                                              ; preds = %348
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %361, i32 0, i32 1
  %363 = load i64*, i64** %362, align 8
  %364 = getelementptr inbounds i64, i64* %363, i64 1
  %365 = load i64, i64* %364, align 8
  %366 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 1), align 8
  %367 = getelementptr inbounds i64*, i64** %366, i64 0
  %368 = load i64*, i64** %367, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 1
  store i64 %365, i64* %369, align 8
  br label %370

370:                                              ; preds = %360, %348
  %371 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i32 0, i32 1
  %373 = load i64*, i64** %372, align 8
  %374 = getelementptr inbounds i64, i64* %373, i64 2
  %375 = load i64, i64* %374, align 8
  %376 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 1), align 8
  %377 = getelementptr inbounds i64*, i64** %376, i64 0
  %378 = load i64*, i64** %377, align 8
  %379 = getelementptr inbounds i64, i64* %378, i64 2
  %380 = load i64, i64* %379, align 8
  %381 = icmp slt i64 %375, %380
  br i1 %381, label %382, label %392

382:                                              ; preds = %370
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 1
  %385 = load i64*, i64** %384, align 8
  %386 = getelementptr inbounds i64, i64* %385, i64 2
  %387 = load i64, i64* %386, align 8
  %388 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 1), align 8
  %389 = getelementptr inbounds i64*, i64** %388, i64 0
  %390 = load i64*, i64** %389, align 8
  %391 = getelementptr inbounds i64, i64* %390, i64 2
  store i64 %387, i64* %391, align 8
  br label %392

392:                                              ; preds = %382, %370
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i32 0, i32 2
  %395 = load i64*, i64** %394, align 8
  %396 = getelementptr inbounds i64, i64* %395, i64 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 1), align 8
  %399 = getelementptr inbounds i64*, i64** %398, i64 1
  %400 = load i64*, i64** %399, align 8
  %401 = getelementptr inbounds i64, i64* %400, i64 0
  %402 = load i64, i64* %401, align 8
  %403 = icmp sgt i64 %397, %402
  br i1 %403, label %404, label %414

404:                                              ; preds = %392
  %405 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 2
  %407 = load i64*, i64** %406, align 8
  %408 = getelementptr inbounds i64, i64* %407, i64 0
  %409 = load i64, i64* %408, align 8
  %410 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 1), align 8
  %411 = getelementptr inbounds i64*, i64** %410, i64 1
  %412 = load i64*, i64** %411, align 8
  %413 = getelementptr inbounds i64, i64* %412, i64 0
  store i64 %409, i64* %413, align 8
  br label %414

414:                                              ; preds = %404, %392
  %415 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 2
  %417 = load i64*, i64** %416, align 8
  %418 = getelementptr inbounds i64, i64* %417, i64 1
  %419 = load i64, i64* %418, align 8
  %420 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 1), align 8
  %421 = getelementptr inbounds i64*, i64** %420, i64 1
  %422 = load i64*, i64** %421, align 8
  %423 = getelementptr inbounds i64, i64* %422, i64 1
  %424 = load i64, i64* %423, align 8
  %425 = icmp sgt i64 %419, %424
  br i1 %425, label %426, label %436

426:                                              ; preds = %414
  %427 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %427, i32 0, i32 2
  %429 = load i64*, i64** %428, align 8
  %430 = getelementptr inbounds i64, i64* %429, i64 1
  %431 = load i64, i64* %430, align 8
  %432 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 1), align 8
  %433 = getelementptr inbounds i64*, i64** %432, i64 1
  %434 = load i64*, i64** %433, align 8
  %435 = getelementptr inbounds i64, i64* %434, i64 1
  store i64 %431, i64* %435, align 8
  br label %436

436:                                              ; preds = %426, %414
  %437 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %437, i32 0, i32 2
  %439 = load i64*, i64** %438, align 8
  %440 = getelementptr inbounds i64, i64* %439, i64 2
  %441 = load i64, i64* %440, align 8
  %442 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 1), align 8
  %443 = getelementptr inbounds i64*, i64** %442, i64 1
  %444 = load i64*, i64** %443, align 8
  %445 = getelementptr inbounds i64, i64* %444, i64 2
  %446 = load i64, i64* %445, align 8
  %447 = icmp sgt i64 %441, %446
  br i1 %447, label %448, label %458

448:                                              ; preds = %436
  %449 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %449, i32 0, i32 2
  %451 = load i64*, i64** %450, align 8
  %452 = getelementptr inbounds i64, i64* %451, i64 2
  %453 = load i64, i64* %452, align 8
  %454 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 4, i32 1), align 8
  %455 = getelementptr inbounds i64*, i64** %454, i64 1
  %456 = load i64*, i64** %455, align 8
  %457 = getelementptr inbounds i64, i64* %456, i64 2
  store i64 %453, i64* %457, align 8
  br label %458

458:                                              ; preds = %448, %436
  %459 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 3), align 8
  %460 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %459, i32 0, i32 0
  %461 = load i32*, i32** %460, align 8
  %462 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %462, i32 0, i32 4
  %464 = load i32, i32* %463, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %461, i64 %465
  store i32* %466, i32** %20, align 8
  %467 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %467, i32 0, i32 5
  %469 = load i32, i32* %468, align 8
  store i32 %469, i32* %18, align 4
  br label %470

470:                                              ; preds = %527, %458
  %471 = load i32, i32* %18, align 4
  %472 = add nsw i32 %471, -1
  store i32 %472, i32* %18, align 4
  %473 = icmp ne i32 %471, 0
  br i1 %473, label %474, label %530

474:                                              ; preds = %470
  %475 = load i32*, i32** %20, align 8
  %476 = load i32, i32* %475, align 4
  store i32 %476, i32* %19, align 4
  %477 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 3), align 8
  %478 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %477, i32 0, i32 1
  %479 = load i64*, i64** %478, align 8
  %480 = load i32, i32* %19, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i64, i64* %479, i64 %481
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 2), align 8
  %485 = icmp ne i64 %483, %484
  br i1 %485, label %486, label %508

486:                                              ; preds = %474
  %487 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 2), align 8
  %488 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 3), align 8
  %489 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %488, i32 0, i32 1
  %490 = load i64*, i64** %489, align 8
  %491 = load i32, i32* %19, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i64, i64* %490, i64 %492
  store i64 %487, i64* %493, align 8
  %494 = load i32, i32* %7, align 4
  %495 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 3), align 8
  %496 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %495, i32 0, i32 2
  %497 = load i32*, i32** %496, align 8
  %498 = load i32, i32* %19, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %497, i64 %499
  store i32 %494, i32* %500, align 4
  %501 = load i32, i32* %8, align 4
  %502 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 3), align 8
  %503 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %502, i32 0, i32 3
  %504 = load i32*, i32** %503, align 8
  %505 = load i32, i32* %19, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  store i32 %501, i32* %507, align 4
  br label %527

508:                                              ; preds = %474
  %509 = load i32, i32* %7, align 4
  %510 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 3), align 8
  %511 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %510, i32 0, i32 2
  %512 = load i32*, i32** %511, align 8
  %513 = load i32, i32* %19, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %512, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = or i32 %516, %509
  store i32 %517, i32* %515, align 4
  %518 = load i32, i32* %8, align 4
  %519 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @tr, i32 0, i32 3), align 8
  %520 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %519, i32 0, i32 3
  %521 = load i32*, i32** %520, align 8
  %522 = load i32, i32* %19, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, i32* %521, i64 %523
  %525 = load i32, i32* %524, align 4
  %526 = or i32 %525, %518
  store i32 %526, i32* %524, align 4
  br label %527

527:                                              ; preds = %508, %486
  %528 = load i32*, i32** %20, align 8
  %529 = getelementptr inbounds i32, i32* %528, i32 1
  store i32* %529, i32** %20, align 8
  br label %470

530:                                              ; preds = %38, %60, %84, %108, %132, %156, %470
  ret void
}

declare dso_local i32 @BoxOnPlaneSide(i64*, i64*, i32*) #1

declare dso_local float @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
