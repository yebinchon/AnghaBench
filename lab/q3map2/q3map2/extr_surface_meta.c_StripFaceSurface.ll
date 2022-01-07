; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_StripFaceSurface.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_StripFaceSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_7__ = type { i64 }

@MAX_INDEXES = common dso_local global i32 0, align 4
@SURFACE_FACE = common dso_local global i64 0, align 8
@SURFACE_DECAL = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"MAX_INDEXES exceeded for surface (%d > %d) (%d verts)\00", align 1
@numStripSurfaces = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StripFaceSurface(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %17 = load i32, i32* @MAX_INDEXES, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SURFACE_FACE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SURFACE_DECAL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %1
  store i32 1, i32* %16, align 4
  br label %353

38:                                               ; preds = %31, %25
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  store i32 3, i32* %7, align 4
  %44 = call i32 @VectorSet(i32* %20, i32 0, i32 1, i32 2)
  br label %326

45:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %136

50:                                               ; preds = %45
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @qfalse, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %136

58:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %132, %58
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %135

65:                                               ; preds = %59
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  store i64* %73, i64** %14, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  store i64* %81, i64** %15, align 8
  %82 = load i64*, i64** %14, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %15, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %129, label %89

89:                                               ; preds = %65
  %90 = load i64*, i64** %14, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %15, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %89
  %98 = load i64*, i64** %14, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %15, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %129, label %105

105:                                              ; preds = %97, %89
  %106 = load i64*, i64** %14, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %15, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %105
  %114 = load i64*, i64** %14, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %15, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %113
  %122 = load i64*, i64** %14, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %15, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %124, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %121, %97, %65
  %130 = load i32, i32* %3, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %121, %113, %105
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %3, align 4
  br label %59

135:                                              ; preds = %59
  br label %136

136:                                              ; preds = %135, %50, %45
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 2
  %141 = mul nsw i32 %140, 3
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @MAX_INDEXES, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %136
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @MAX_INDEXES, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @Error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %147, i32 %150)
  br label %152

152:                                              ; preds = %145, %136
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %315, %152
  %154 = load i32, i32* %4, align 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %318

159:                                              ; preds = %153
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %160, %161
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = srem i32 %162, %165
  store i32 %166, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %306, %159
  %168 = load i32, i32* %3, align 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %171, 2
  %173 = load i32, i32* %3, align 4
  %174 = sub nsw i32 %172, %173
  %175 = icmp slt i32 %168, %174
  br i1 %175, label %176, label %309

176:                                              ; preds = %167
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, 1
  %181 = load i32, i32* %3, align 4
  %182 = sub nsw i32 %180, %181
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %182, %183
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = srem i32 %184, %187
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %189, %190
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = srem i32 %191, %194
  store i32 %195, i32* %10, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sub nsw i32 %198, 2
  %200 = load i32, i32* %3, align 4
  %201 = sub nsw i32 %199, %200
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %201, %202
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = srem i32 %203, %206
  store i32 %207, i32* %11, align 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp sgt i32 %210, 4
  br i1 %211, label %212, label %222

212:                                              ; preds = %176
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %11, align 4
  %219 = call i64 @IsTriangleDegenerate(%struct.TYPE_9__* %215, i32 %216, i32 %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %212
  br label %309

222:                                              ; preds = %212, %176
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %8, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %8, align 4
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %20, i64 %226
  store i32 %223, i32* %227, align 4
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %20, i64 %231
  store i32 %228, i32* %232, align 4
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i32, i32* %20, i64 %236
  store i32 %233, i32* %237, align 4
  %238 = load i32, i32* %3, align 4
  %239 = add nsw i32 %238, 1
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sub nsw i32 %242, 1
  %244 = load i32, i32* %3, align 4
  %245 = sub nsw i32 %243, %244
  %246 = icmp ne i32 %239, %245
  br i1 %246, label %247, label %305

247:                                              ; preds = %222
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sub nsw i32 %250, 2
  %252 = load i32, i32* %3, align 4
  %253 = sub nsw i32 %251, %252
  %254 = load i32, i32* %6, align 4
  %255 = add nsw i32 %253, %254
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = srem i32 %255, %258
  store i32 %259, i32* %9, align 4
  %260 = load i32, i32* %3, align 4
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %260, %261
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = srem i32 %262, %265
  store i32 %266, i32* %10, align 4
  %267 = load i32, i32* %3, align 4
  %268 = add nsw i32 %267, 1
  %269 = load i32, i32* %6, align 4
  %270 = add nsw i32 %268, %269
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = srem i32 %270, %273
  store i32 %274, i32* %11, align 4
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp sgt i32 %277, 4
  br i1 %278, label %279, label %289

279:                                              ; preds = %247
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 4
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %281, align 8
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* %10, align 4
  %285 = load i32, i32* %11, align 4
  %286 = call i64 @IsTriangleDegenerate(%struct.TYPE_9__* %282, i32 %283, i32 %284, i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %279
  br label %309

289:                                              ; preds = %279, %247
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* %8, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %8, align 4
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds i32, i32* %20, i64 %293
  store i32 %290, i32* %294, align 4
  %295 = load i32, i32* %10, align 4
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %8, align 4
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i32, i32* %20, i64 %298
  store i32 %295, i32* %299, align 4
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %8, align 4
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds i32, i32* %20, i64 %303
  store i32 %300, i32* %304, align 4
  br label %305

305:                                              ; preds = %289, %222
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %3, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %3, align 4
  br label %167

309:                                              ; preds = %288, %221, %167
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* %7, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %309
  br label %318

314:                                              ; preds = %309
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %4, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %4, align 4
  br label %153

318:                                              ; preds = %313, %153
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* %7, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %325

322:                                              ; preds = %318
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %324 = call i32 @FanFaceSurface(%struct.TYPE_8__* %323)
  store i32 1, i32* %16, align 4
  br label %353

325:                                              ; preds = %318
  br label %326

326:                                              ; preds = %325, %43
  %327 = load i32, i32* %7, align 4
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 2
  store i32 %327, i32* %329, align 8
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = sext i32 %332 to i64
  %334 = mul i64 %333, 4
  %335 = trunc i64 %334 to i32
  %336 = call i32 @safe_malloc(i32 %335)
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 3
  store i32 %336, i32* %338, align 4
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = sext i32 %344 to i64
  %346 = mul i64 %345, 4
  %347 = trunc i64 %346 to i32
  %348 = call i32 @memcpy(i32 %341, i32* %20, i32 %347)
  %349 = load i32, i32* @numStripSurfaces, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* @numStripSurfaces, align 4
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %352 = call i32 @ClassifySurfaces(i32 1, %struct.TYPE_8__* %351)
  store i32 0, i32* %16, align 4
  br label %353

353:                                              ; preds = %326, %322, %37
  %354 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %354)
  %355 = load i32, i32* %16, align 4
  switch i32 %355, label %357 [
    i32 0, label %356
    i32 1, label %356
  ]

356:                                              ; preds = %353, %353
  ret void

357:                                              ; preds = %353
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VectorSet(i32*, i32, i32, i32) #2

declare dso_local i32 @Error(i8*, i32, i32, i32) #2

declare dso_local i64 @IsTriangleDegenerate(%struct.TYPE_9__*, i32, i32, i32) #2

declare dso_local i32 @FanFaceSurface(%struct.TYPE_8__*) #2

declare dso_local i32 @safe_malloc(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @ClassifySurfaces(i32, %struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
