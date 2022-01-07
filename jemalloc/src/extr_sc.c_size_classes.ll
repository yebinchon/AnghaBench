; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_sc.c_size_classes.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_sc.c_size_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64 }

@SC_NPSIZES = common dso_local global i32 0, align 4
@SC_LG_TINY_MAXCLASS = common dso_local global i32 0, align 4
@SC_SMALL_MAXCLASS = common dso_local global i64 0, align 8
@SC_LARGE_MINCLASS = common dso_local global i32 0, align 4
@SC_LG_LARGE_MINCLASS = common dso_local global i32 0, align 4
@SC_LARGE_MAXCLASS = common dso_local global i64 0, align 8
@SSIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i32, i32, i32, i32, i32)* @size_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @size_classes(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_5__*, align 8
  %31 = alloca %struct.TYPE_5__*, align 8
  %32 = alloca %struct.TYPE_5__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_5__*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 1, %38
  %40 = mul nsw i32 %39, 8
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %14, align 4
  %42 = shl i32 1, %41
  store i32 %42, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %24, align 4
  %44 = load i32, i32* %24, align 4
  store i32 %44, i32* %25, align 4
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i32 0, i32* %28, align 4
  store i64 0, i64* %29, align 8
  br label %45

45:                                               ; preds = %88, %7
  %46 = load i32, i32* %24, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %97

49:                                               ; preds = %45
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 12
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %22, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %30, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* %25, align 4
  %63 = load i32, i32* %23, align 4
  %64 = call i32 @size_class(%struct.TYPE_5__* %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %49
  %70 = load i32, i32* %22, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %69, %49
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %21, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %21, align 4
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %20, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %20, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %24, align 4
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %22, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %24, align 4
  store i32 %94, i32* %25, align 4
  %95 = load i32, i32* %24, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %24, align 4
  br label %45

97:                                               ; preds = %45
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %140

100:                                              ; preds = %97
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 12
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %22, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  store %struct.TYPE_5__* %106, %struct.TYPE_5__** %31, align 8
  %107 = load i32, i32* %24, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %24, align 4
  store i32 1, i32* %23, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %22, align 4
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %25, align 4
  %116 = load i32, i32* %23, align 4
  %117 = call i32 @size_class(%struct.TYPE_5__* %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %22, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %22, align 4
  %120 = load i32, i32* %24, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %24, align 4
  %122 = load i32, i32* %25, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %25, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %100
  %129 = load i32, i32* %21, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %21, align 4
  br label %131

131:                                              ; preds = %128, %100
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* %20, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %20, align 4
  br label %139

139:                                              ; preds = %136, %131
  br label %140

140:                                              ; preds = %139, %97
  br label %141

141:                                              ; preds = %180, %140
  %142 = load i32, i32* %23, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %181

145:                                              ; preds = %141
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 12
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load i32, i32* %22, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %150
  store %struct.TYPE_5__* %151, %struct.TYPE_5__** %32, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %24, align 4
  %158 = load i32, i32* %25, align 4
  %159 = load i32, i32* %23, align 4
  %160 = call i32 @size_class(%struct.TYPE_5__* %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load i32, i32* %22, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %22, align 4
  %163 = load i32, i32* %23, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %23, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %145
  %170 = load i32, i32* %21, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %21, align 4
  br label %172

172:                                              ; preds = %169, %145
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32, i32* %20, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %20, align 4
  br label %180

180:                                              ; preds = %177, %172
  br label %141

181:                                              ; preds = %141
  %182 = load i32, i32* %24, align 4
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %182, %183
  store i32 %184, i32* %24, align 4
  br label %185

185:                                              ; preds = %285, %181
  %186 = load i32, i32* %24, align 4
  %187 = load i32, i32* %15, align 4
  %188 = sub nsw i32 %187, 1
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %290

190:                                              ; preds = %185
  store i32 1, i32* %23, align 4
  %191 = load i32, i32* %24, align 4
  %192 = load i32, i32* %15, align 4
  %193 = sub nsw i32 %192, 2
  %194 = icmp eq i32 %191, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i32, i32* %16, align 4
  %197 = sub nsw i32 %196, 1
  store i32 %197, i32* %33, align 4
  br label %200

198:                                              ; preds = %190
  %199 = load i32, i32* %16, align 4
  store i32 %199, i32* %33, align 4
  br label %200

200:                                              ; preds = %198, %195
  br label %201

201:                                              ; preds = %271, %200
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* %33, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %205, label %285

205:                                              ; preds = %201
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 12
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = load i32, i32* %22, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i64 %210
  store %struct.TYPE_5__* %211, %struct.TYPE_5__** %34, align 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %22, align 4
  %217 = load i32, i32* %24, align 4
  %218 = load i32, i32* %25, align 4
  %219 = load i32, i32* %23, align 4
  %220 = call i32 @size_class(%struct.TYPE_5__* %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219)
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %205
  %226 = load i32, i32* %22, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %18, align 4
  %228 = call i32 @ZU(i32 1)
  %229 = load i32, i32* %24, align 4
  %230 = shl i32 %228, %229
  %231 = load i32, i32* %23, align 4
  %232 = call i32 @ZU(i32 %231)
  %233 = load i32, i32* %25, align 4
  %234 = shl i32 %232, %233
  %235 = add nsw i32 %230, %234
  %236 = sext i32 %235 to i64
  store i64 %236, i64* %26, align 8
  br label %237

237:                                              ; preds = %225, %205
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load i32, i32* %21, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %21, align 4
  br label %245

245:                                              ; preds = %242, %237
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %271

250:                                              ; preds = %245
  %251 = load i32, i32* %20, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %20, align 4
  %253 = call i32 @ZU(i32 1)
  %254 = load i32, i32* %24, align 4
  %255 = shl i32 %253, %254
  %256 = load i32, i32* %23, align 4
  %257 = call i32 @ZU(i32 %256)
  %258 = load i32, i32* %25, align 4
  %259 = shl i32 %257, %258
  %260 = add nsw i32 %255, %259
  %261 = sext i32 %260 to i64
  store i64 %261, i64* %27, align 8
  %262 = load i32, i32* %14, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %250
  %265 = load i32, i32* %24, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %28, align 4
  br label %270

267:                                              ; preds = %250
  %268 = load i32, i32* %24, align 4
  %269 = add nsw i32 %268, 2
  store i32 %269, i32* %28, align 4
  br label %270

270:                                              ; preds = %267, %264
  br label %271

271:                                              ; preds = %270, %245
  %272 = call i32 @ZU(i32 1)
  %273 = load i32, i32* %24, align 4
  %274 = shl i32 %272, %273
  %275 = load i32, i32* %23, align 4
  %276 = call i32 @ZU(i32 %275)
  %277 = load i32, i32* %25, align 4
  %278 = shl i32 %276, %277
  %279 = add nsw i32 %274, %278
  %280 = sext i32 %279 to i64
  store i64 %280, i64* %29, align 8
  %281 = load i32, i32* %22, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %22, align 4
  %283 = load i32, i32* %23, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %23, align 4
  br label %201

285:                                              ; preds = %201
  %286 = load i32, i32* %24, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %24, align 4
  %288 = load i32, i32* %25, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %25, align 4
  br label %185

290:                                              ; preds = %185
  %291 = load i32, i32* %22, align 4
  store i32 %291, i32* %35, align 4
  %292 = load i32, i32* %35, align 4
  %293 = call i32 @lg_ceil(i32 %292)
  store i32 %293, i32* %36, align 4
  %294 = load i32, i32* %17, align 4
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 8
  %297 = load i32, i32* %18, align 4
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* %20, align 4
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 8
  %303 = load i32, i32* %35, align 4
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* %36, align 4
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 4
  store i32 %306, i32* %308, align 8
  %309 = load i32, i32* %21, align 4
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 5
  store i32 %309, i32* %311, align 4
  %312 = load i32, i32* %19, align 4
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 6
  store i32 %312, i32* %314, align 8
  %315 = load i64, i64* %26, align 8
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 7
  store i64 %315, i64* %317, align 8
  %318 = load i64, i64* %27, align 8
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 8
  store i64 %318, i64* %320, align 8
  %321 = load i32, i32* %28, align 4
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 9
  store i32 %321, i32* %323, align 8
  %324 = call i32 @ZU(i32 1)
  %325 = load i32, i32* %28, align 4
  %326 = shl i32 %324, %325
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 10
  store i32 %326, i32* %328, align 4
  %329 = load i64, i64* %29, align 8
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 11
  store i64 %329, i64* %331, align 8
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @SC_NPSIZES, align 4
  %336 = icmp eq i32 %334, %335
  %337 = zext i1 %336 to i32
  %338 = call i32 @assert(i32 %337)
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @SC_LG_TINY_MAXCLASS, align 4
  %343 = icmp eq i32 %341, %342
  %344 = zext i1 %343 to i32
  %345 = call i32 @assert(i32 %344)
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 8
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @SC_SMALL_MAXCLASS, align 8
  %350 = icmp eq i64 %348, %349
  %351 = zext i1 %350 to i32
  %352 = call i32 @assert(i32 %351)
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 10
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @SC_LARGE_MINCLASS, align 4
  %357 = icmp eq i32 %355, %356
  %358 = zext i1 %357 to i32
  %359 = call i32 @assert(i32 %358)
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 9
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @SC_LG_LARGE_MINCLASS, align 4
  %364 = icmp eq i32 %362, %363
  %365 = zext i1 %364 to i32
  %366 = call i32 @assert(i32 %365)
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 11
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @SC_LARGE_MAXCLASS, align 8
  %371 = icmp eq i64 %369, %370
  %372 = zext i1 %371 to i32
  %373 = call i32 @assert(i32 %372)
  %374 = load i64, i64* @SC_LARGE_MAXCLASS, align 8
  %375 = load i64, i64* @SSIZE_MAX, align 8
  %376 = icmp ult i64 %374, %375
  %377 = zext i1 %376 to i32
  %378 = call i32 @assert(i32 %377)
  ret void
}

declare dso_local i32 @size_class(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ZU(i32) #1

declare dso_local i32 @lg_ceil(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
