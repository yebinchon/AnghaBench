; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_visflow.c_PassageChopWinding.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_visflow.c_PassageChopWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32** }
%struct.TYPE_7__ = type { i32*, i32 }

@ON_EPSILON = common dso_local global i32 0, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4
@SIDE_ON = common dso_local global i32 0, align 4
@MAX_POINTS_ON_FIXED_WINDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @PassageChopWinding(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca [128 x i32], align 16
  %9 = alloca [128 x i32], align 16
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %20, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %81, %3
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %84

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @DotProduct(i32* %34, i32* %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %46
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @ON_EPSILON, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %27
  %52 = load i32, i32* @SIDE_FRONT, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  br label %72

56:                                               ; preds = %27
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ON_EPSILON, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* @SIDE_BACK, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %64
  store i32 %62, i32* %65, align 4
  br label %71

66:                                               ; preds = %56
  %67 = load i32, i32* @SIDE_ON, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %69
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %21

84:                                               ; preds = %21
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %4, align 8
  br label %320

90:                                               ; preds = %84
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %320

95:                                               ; preds = %90
  %96 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %97 = load i32, i32* %96, align 16
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %99
  store i32 %97, i32* %100, align 4
  %101 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %104
  store i32 %102, i32* %105, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %106, %struct.TYPE_8__** %17, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %315, %95
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %318

115:                                              ; preds = %109
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %14, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MAX_POINTS_ON_FIXED_WINDING, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %115
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %129, %struct.TYPE_8__** %4, align 8
  br label %320

130:                                              ; preds = %115
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SIDE_ON, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %130
  %138 = load i32*, i32** %14, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32**, i32*** %140, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %141, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @VectorCopy(i32* %138, i32* %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  br label %315

153:                                              ; preds = %130
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SIDE_FRONT, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %153
  %161 = load i32*, i32** %14, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32**, i32*** %163, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %164, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @VectorCopy(i32* %161, i32* %170)
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %160, %153
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @SIDE_ON, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %176
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %189, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %184, %176
  br label %315

196:                                              ; preds = %184
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @MAX_POINTS_ON_FIXED_WINDING, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %196
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %203, %struct.TYPE_8__** %4, align 8
  br label %320

204:                                              ; preds = %196
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32**, i32*** %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = srem i32 %209, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32*, i32** %207, i64 %214
  %216 = load i32*, i32** %215, align 8
  store i32* %216, i32** %15, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %224, %229
  %231 = sdiv i32 %220, %230
  store i32 %231, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %232

232:                                              ; preds = %296, %204
  %233 = load i32, i32* %13, align 4
  %234 = icmp slt i32 %233, 3
  br i1 %234, label %235, label %299

235:                                              ; preds = %232
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %252

244:                                              ; preds = %235
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32*, i32** %16, align 8
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %247, i32* %251, align 4
  br label %295

252:                                              ; preds = %235
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %261, label %270

261:                                              ; preds = %252
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = sub nsw i32 0, %264
  %266 = load i32*, i32** %16, align 8
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %265, i32* %269, align 4
  br label %294

270:                                              ; preds = %252
  %271 = load i32*, i32** %14, align 8
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %11, align 4
  %277 = load i32*, i32** %15, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32*, i32** %14, align 8
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %281, %286
  %288 = mul nsw i32 %276, %287
  %289 = add nsw i32 %275, %288
  %290 = load i32*, i32** %16, align 8
  %291 = load i32, i32* %13, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  store i32 %289, i32* %293, align 4
  br label %294

294:                                              ; preds = %270, %261
  br label %295

295:                                              ; preds = %294, %244
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %13, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %13, align 4
  br label %232

299:                                              ; preds = %232
  %300 = load i32*, i32** %16, align 8
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 1
  %303 = load i32**, i32*** %302, align 8
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32*, i32** %303, i64 %307
  %309 = load i32*, i32** %308, align 8
  %310 = call i32 @VectorCopy(i32* %300, i32* %309)
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %312, align 8
  br label %315

315:                                              ; preds = %299, %195, %137
  %316 = load i32, i32* %12, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %12, align 4
  br label %109

318:                                              ; preds = %109
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %319, %struct.TYPE_8__** %4, align 8
  br label %320

320:                                              ; preds = %318, %202, %128, %94, %88
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %321
}

declare dso_local i32 @DotProduct(i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
