; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_Reachability_EqualFloorHeight.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_Reachability_EqualFloorHeight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32*, %struct.TYPE_11__*, i32*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i64*, i64*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, double*, double*, i32, %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_17__ = type { i64 }

@qfalse = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@FACE_GROUND = common dso_local global i32 0, align 4
@INSIDEUNITS_WALKEND = common dso_local global i32 0, align 4
@INSIDEUNITS_WALKSTART = common dso_local global i32 0, align 4
@TRAVEL_WALK = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@areareachability = common dso_local global %struct.TYPE_12__** null, align 8
@aassettings = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@reach_equalfloor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_Reachability_EqualFloorHeight(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca %struct.TYPE_15__*, align 8
  %25 = alloca %struct.TYPE_15__*, align 8
  %26 = alloca %struct.TYPE_13__*, align 8
  %27 = alloca %struct.TYPE_13__*, align 8
  %28 = alloca %struct.TYPE_14__*, align 8
  %29 = alloca %struct.TYPE_11__*, align 8
  %30 = alloca %struct.TYPE_12__, align 8
  %31 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store double* null, double** %22, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @AAS_AreaGrounded(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @AAS_AreaGrounded(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %2
  %40 = load i32, i32* @qfalse, align 4
  store i32 %40, i32* %3, align 4
  br label %446

41:                                               ; preds = %35
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 6), align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i64 %44
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %24, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 6), align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i64 %48
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %25, align 8
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %92, %41
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %95

53:                                               ; preds = %50
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 10
  %69 = icmp sgt i64 %60, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %53
  %71 = load i32, i32* @qfalse, align 4
  store i32 %71, i32* %3, align 4
  br label %446

72:                                               ; preds = %53
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, 10
  %88 = icmp slt i64 %79, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %72
  %90 = load i32, i32* @qfalse, align 4
  store i32 %90, i32* %3, align 4
  br label %446

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %50

95:                                               ; preds = %50
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %100, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load i32, i32* @qfalse, align 4
  store i32 %108, i32* %3, align 4
  br label %446

109:                                              ; preds = %95
  %110 = load double*, double** %22, align 8
  %111 = load double*, double** %21, align 8
  %112 = call i32 @VectorCopy(double* %110, double* %111)
  %113 = load double*, double** %21, align 8
  %114 = call i32 @VectorInverse(double* %113)
  store float 9.999900e+04, float* %14, align 4
  store float 0.000000e+00, float* %16, align 4
  %115 = load i32, i32* @qfalse, align 4
  store i32 %115, i32* %11, align 4
  %116 = call i32 @Com_Memset(%struct.TYPE_12__* %30, i32 0, i32 56)
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %368, %109
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %371

123:                                              ; preds = %117
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 5), align 8
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 0), align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %125, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @abs(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i64 %134
  store %struct.TYPE_13__* %135, %struct.TYPE_13__** %26, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @FACE_GROUND, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %123
  br label %368

143:                                              ; preds = %123
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %364, %143
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %367

150:                                              ; preds = %144
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 5), align 8
  %152 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 0), align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %152, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @abs(i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 %161
  store %struct.TYPE_13__* %162, %struct.TYPE_13__** %27, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @FACE_GROUND, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %150
  br label %364

170:                                              ; preds = %150
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %360, %170
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %363

177:                                              ; preds = %171
  store i32 0, i32* %10, align 4
  br label %178

178:                                              ; preds = %356, %177
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %359

184:                                              ; preds = %178
  %185 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 1), align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %185, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @abs(i32 %193)
  %195 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 1), align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %195, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @abs(i32 %203)
  %205 = icmp ne i64 %194, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %184
  br label %356

207:                                              ; preds = %184
  %208 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 1), align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %208, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %8, align 4
  %218 = icmp slt i32 %217, 0
  %219 = zext i1 %218 to i32
  store i32 %219, i32* %12, align 4
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 4), align 8
  %221 = load i32, i32* %8, align 4
  %222 = call i64 @abs(i32 %221)
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i64 %222
  store %struct.TYPE_14__* %223, %struct.TYPE_14__** %28, align 8
  %224 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 1
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds i32, i32* %224, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = load i64*, i64** %234, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 0
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i32, i32* %232, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load double*, double** %17, align 8
  %241 = call i32 @VectorSubtract(i32 %231, i32 %239, double* %240)
  %242 = load double*, double** %17, align 8
  %243 = call float @VectorLength(double* %242)
  store float %243, float* %15, align 4
  %244 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load i64*, i64** %246, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 0
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds i32, i32* %244, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i64*, i64** %254, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 1
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds i32, i32* %252, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load double*, double** %18, align 8
  %261 = call i32 @VectorAdd(i32 %251, i32 %259, double* %260)
  %262 = load double*, double** %18, align 8
  %263 = load double*, double** %18, align 8
  %264 = call i32 @VectorScale(double* %262, double 5.000000e-01, double* %263)
  %265 = load double*, double** %18, align 8
  %266 = load double*, double** %19, align 8
  %267 = call i32 @VectorCopy(double* %265, double* %266)
  %268 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  %271 = load i64*, i64** %270, align 8
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds i32, i32* %268, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 0
  %281 = load i64*, i64** %280, align 8
  %282 = load i32, i32* %12, align 4
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64, i64* %281, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds i32, i32* %278, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load double*, double** %23, align 8
  %292 = call i32 @VectorSubtract(i32 %277, i32 %290, double* %291)
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 2), align 8
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i64 %296
  store %struct.TYPE_11__* %297, %struct.TYPE_11__** %29, align 8
  %298 = load double*, double** %23, align 8
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load double*, double** %20, align 8
  %303 = call i32 @CrossProduct(double* %298, i32 %301, double* %302)
  %304 = load double*, double** %20, align 8
  %305 = call i32 @VectorNormalize(double* %304)
  %306 = load double*, double** %19, align 8
  %307 = load i32, i32* @INSIDEUNITS_WALKEND, align 4
  %308 = load double*, double** %20, align 8
  %309 = load double*, double** %19, align 8
  %310 = call i32 @VectorMA(double* %306, i32 %307, double* %308, double* %309)
  %311 = load double*, double** %18, align 8
  %312 = load i32, i32* @INSIDEUNITS_WALKSTART, align 4
  %313 = load double*, double** %20, align 8
  %314 = load double*, double** %18, align 8
  %315 = call i32 @VectorMA(double* %311, i32 %312, double* %313, double* %314)
  %316 = load double*, double** %19, align 8
  %317 = getelementptr inbounds double, double* %316, i64 2
  %318 = load double, double* %317, align 8
  %319 = fadd double %318, 1.250000e-01
  store double %319, double* %317, align 8
  %320 = load double*, double** %21, align 8
  %321 = load double*, double** %18, align 8
  %322 = call float @DotProduct(double* %320, double* %321)
  store float %322, float* %13, align 4
  %323 = load float, float* %13, align 4
  %324 = load float, float* %14, align 4
  %325 = fcmp olt float %323, %324
  br i1 %325, label %335, label %326

326:                                              ; preds = %207
  %327 = load float, float* %13, align 4
  %328 = load float, float* %14, align 4
  %329 = fadd float %328, 1.000000e+00
  %330 = fcmp olt float %327, %329
  br i1 %330, label %331, label %355

331:                                              ; preds = %326
  %332 = load float, float* %15, align 4
  %333 = load float, float* %16, align 4
  %334 = fcmp ogt float %332, %333
  br i1 %334, label %335, label %355

335:                                              ; preds = %331, %207
  %336 = load float, float* %13, align 4
  store float %336, float* %14, align 4
  %337 = load float, float* %15, align 4
  store float %337, float* %16, align 4
  %338 = load i32, i32* %5, align 4
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store i32 %338, i32* %339, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 7
  store i64 0, i64* %340, align 8
  %341 = load i32, i32* %8, align 4
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store i32 %341, i32* %342, align 4
  %343 = load double*, double** %18, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %345 = load double*, double** %344, align 8
  %346 = call i32 @VectorCopy(double* %343, double* %345)
  %347 = load double*, double** %19, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %349 = load double*, double** %348, align 8
  %350 = call i32 @VectorCopy(double* %347, double* %349)
  %351 = load i32, i32* @TRAVEL_WALK, align 4
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 6
  store i32 %351, i32* %352, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 4
  store i32 1, i32* %353, align 8
  %354 = load i32, i32* @qtrue, align 4
  store i32 %354, i32* %11, align 4
  br label %355

355:                                              ; preds = %335, %331, %326
  br label %356

356:                                              ; preds = %355, %206
  %357 = load i32, i32* %10, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %10, align 4
  br label %178

359:                                              ; preds = %178
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %9, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %9, align 4
  br label %171

363:                                              ; preds = %171
  br label %364

364:                                              ; preds = %363, %169
  %365 = load i32, i32* %7, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %7, align 4
  br label %144

367:                                              ; preds = %144
  br label %368

368:                                              ; preds = %367, %142
  %369 = load i32, i32* %6, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %6, align 4
  br label %117

371:                                              ; preds = %117
  %372 = load i32, i32* %11, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %444

374:                                              ; preds = %371
  %375 = call %struct.TYPE_12__* (...) @AAS_AllocReachability()
  store %struct.TYPE_12__* %375, %struct.TYPE_12__** %31, align 8
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %377 = icmp ne %struct.TYPE_12__* %376, null
  br i1 %377, label %380, label %378

378:                                              ; preds = %374
  %379 = load i32, i32* @qfalse, align 4
  store i32 %379, i32* %3, align 4
  br label %446

380:                                              ; preds = %374
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  store i32 %382, i32* %384, align 8
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 7
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 7
  store i64 %386, i64* %388, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 1
  store i32 %390, i32* %392, align 4
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %394 = load double*, double** %393, align 8
  %395 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 2
  %397 = load double*, double** %396, align 8
  %398 = call i32 @VectorCopy(double* %394, double* %397)
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %400 = load double*, double** %399, align 8
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 3
  %403 = load double*, double** %402, align 8
  %404 = call i32 @VectorCopy(double* %400, double* %403)
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 6
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 6
  store i32 %406, i32* %408, align 8
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 4
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 4
  store i32 %410, i32* %412, align 8
  %413 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @areareachability, align 8
  %414 = load i32, i32* %4, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %413, i64 %415
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %416, align 8
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 5
  store %struct.TYPE_12__* %417, %struct.TYPE_12__** %419, align 8
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %421 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @areareachability, align 8
  %422 = load i32, i32* %4, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %421, i64 %423
  store %struct.TYPE_12__* %420, %struct.TYPE_12__** %424, align 8
  %425 = load i32, i32* %4, align 4
  %426 = call i64 @AAS_AreaCrouch(i32 %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %440, label %428

428:                                              ; preds = %380
  %429 = load i32, i32* %5, align 4
  %430 = call i64 @AAS_AreaCrouch(i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %440

432:                                              ; preds = %428
  %433 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aassettings, i32 0, i32 0), align 8
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 8
  %437 = sext i32 %436 to i64
  %438 = add nsw i64 %437, %433
  %439 = trunc i64 %438 to i32
  store i32 %439, i32* %435, align 8
  br label %440

440:                                              ; preds = %432, %428, %380
  %441 = load i32, i32* @reach_equalfloor, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* @reach_equalfloor, align 4
  %443 = load i32, i32* @qtrue, align 4
  store i32 %443, i32* %3, align 4
  br label %446

444:                                              ; preds = %371
  %445 = load i32, i32* @qfalse, align 4
  store i32 %445, i32* %3, align 4
  br label %446

446:                                              ; preds = %444, %440, %378, %107, %89, %70, %39
  %447 = load i32, i32* %3, align 4
  ret i32 %447
}

declare dso_local i32 @AAS_AreaGrounded(i32) #1

declare dso_local i32 @VectorCopy(double*, double*) #1

declare dso_local i32 @VectorInverse(double*) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, double*) #1

declare dso_local float @VectorLength(double*) #1

declare dso_local i32 @VectorAdd(i32, i32, double*) #1

declare dso_local i32 @VectorScale(double*, double, double*) #1

declare dso_local i32 @CrossProduct(double*, i32, double*) #1

declare dso_local i32 @VectorNormalize(double*) #1

declare dso_local i32 @VectorMA(double*, i32, double*, double*) #1

declare dso_local float @DotProduct(double*, double*) #1

declare dso_local %struct.TYPE_12__* @AAS_AllocReachability(...) #1

declare dso_local i64 @AAS_AreaCrouch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
