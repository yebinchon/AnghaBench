; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_map.c_AAS_MakeBrushWindings.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_map.c_AAS_MakeBrushWindings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32*, i32*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32* }

@mapplanes = common dso_local global %struct.TYPE_13__* null, align 8
@SFL_BEVEL = common dso_local global i32 0, align 4
@SFL_VISIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"non convex brush\00", align 1
@MAX_MAP_BOUNDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"entity %i, brush %i: bounds out of range\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ob->mins[%d] = %f, ob->maxs[%d] = %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"entity %i, brush %i: no visible sides on brush\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_MakeBrushWindings(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @ClearBounds(i32* %12, i32* %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %136, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %139

23:                                               ; preds = %17
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i64 %32
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %7, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_11__* @BaseWindingForPlane(i32 %36, i32 %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %89, %23
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i1 [ false, %41 ], [ %49, %47 ]
  br i1 %51, label %52, label %92

52:                                               ; preds = %50
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %89

57:                                               ; preds = %52
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SFL_BEVEL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %89

70:                                               ; preds = %57
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = xor i64 %79, 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 %80
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %7, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ChopWindingInPlace(%struct.TYPE_11__** %5, i32 %84, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %70, %69, %56
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %41

92:                                               ; preds = %50
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i64 %97
  store %struct.TYPE_12__* %98, %struct.TYPE_12__** %6, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = icmp ne %struct.TYPE_11__* %102, null
  br i1 %103, label %104, label %135

104:                                              ; preds = %92
  %105 = load i32, i32* @SFL_VISIBLE, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %131, %104
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %110
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @AddPointToBounds(i32 %123, i32* %126, i32* %129)
  br label %131

131:                                              ; preds = %116
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  br label %110

134:                                              ; preds = %110
  br label %135

135:                                              ; preds = %134, %92
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %17

139:                                              ; preds = %17
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %216, %139
  %141 = load i32, i32* %3, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %219

146:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %212, %146
  %148 = load i32, i32* %4, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %215

153:                                              ; preds = %147
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %212

158:                                              ; preds = %153
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i64 %167
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %8, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i64 %177
  store %struct.TYPE_13__* %178, %struct.TYPE_13__** %9, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 5
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 5
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = load i32, i32* %4, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @WindingsNonConvex(%struct.TYPE_11__* %186, %struct.TYPE_11__* %194, i32 %197, i32 %200, i32 %203, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %158
  %210 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %158
  br label %212

212:                                              ; preds = %211, %157
  %213 = load i32, i32* %4, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %4, align 4
  br label %147

215:                                              ; preds = %147
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %3, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %3, align 4
  br label %140

219:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %220

220:                                              ; preds = %320, %219
  %221 = load i32, i32* %3, align 4
  %222 = icmp slt i32 %221, 3
  br i1 %222, label %223, label %323

223:                                              ; preds = %220
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %232 = sub nsw i32 0, %231
  %233 = icmp slt i32 %230, %232
  br i1 %233, label %244, label %234

234:                                              ; preds = %223
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %3, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %243 = icmp sgt i32 %241, %242
  br i1 %243, label %244, label %271

244:                                              ; preds = %234, %223
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %247, i32 %250)
  %252 = load i32, i32* %3, align 4
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %3, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %3, align 4
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %3, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %252, i32 %259, i32 %260, i32 %267)
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  store i32 0, i32* %270, align 8
  br label %323

271:                                              ; preds = %234
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %3, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %280 = icmp sgt i32 %278, %279
  br i1 %280, label %292, label %281

281:                                              ; preds = %271
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %3, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %290 = sub nsw i32 0, %289
  %291 = icmp slt i32 %288, %290
  br i1 %291, label %292, label %319

292:                                              ; preds = %281, %271
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %295, i32 %298)
  %300 = load i32, i32* %3, align 4
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %3, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %3, align 4
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %3, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %300, i32 %307, i32 %308, i32 %315)
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 0
  store i32 0, i32* %318, align 8
  br label %323

319:                                              ; preds = %281
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %3, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %3, align 4
  br label %220

323:                                              ; preds = %292, %244, %220
  ret i32 1
}

declare dso_local i32 @ClearBounds(i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @BaseWindingForPlane(i32, i32) #1

declare dso_local i32 @ChopWindingInPlace(%struct.TYPE_11__**, i32, i32, i32) #1

declare dso_local i32 @AddPointToBounds(i32, i32*, i32*) #1

declare dso_local i64 @WindingsNonConvex(%struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @Log_Print(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
