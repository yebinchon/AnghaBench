; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_context.c__glfwChooseFBConfig.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_context.c__glfwChooseFBConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@UINT_MAX = common dso_local global i32 0, align 4
@GLFW_DONT_CARE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @_glfwChooseFBConfig(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @UINT_MAX, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @UINT_MAX, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @UINT_MAX, align 4
  store i32 %18, i32* %13, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %469, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %472

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %14, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %469

38:                                               ; preds = %32, %23
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %469

47:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %52, %47
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %65, %60
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %78, %73
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %86
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %91
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %102, %105
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %99, %91, %86
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %121, %116, %111
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32, i32* %8, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %132, %124
  store i32 0, i32* %10, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @GLFW_DONT_CARE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %135
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 8
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 8
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %151, %154
  %156 = mul nsw i64 %148, %155
  %157 = load i32, i32* %10, align 4
  %158 = zext i32 %157 to i64
  %159 = add nsw i64 %158, %156
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %141, %135
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 9
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @GLFW_DONT_CARE, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %187

167:                                              ; preds = %161
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 9
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 9
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %170, %173
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 9
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 9
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %177, %180
  %182 = mul nsw i64 %174, %181
  %183 = load i32, i32* %10, align 4
  %184 = zext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %167, %161
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 10
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @GLFW_DONT_CARE, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %187
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 10
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 10
  %199 = load i64, i64* %198, align 8
  %200 = sub nsw i64 %196, %199
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 10
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 10
  %206 = load i64, i64* %205, align 8
  %207 = sub nsw i64 %203, %206
  %208 = mul nsw i64 %200, %207
  %209 = load i32, i32* %10, align 4
  %210 = zext i32 %209 to i64
  %211 = add nsw i64 %210, %208
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %10, align 4
  br label %213

213:                                              ; preds = %193, %187
  store i32 0, i32* %12, align 4
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @GLFW_DONT_CARE, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %239

219:                                              ; preds = %213
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = sub nsw i64 %222, %225
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = sub nsw i64 %229, %232
  %234 = mul nsw i64 %226, %233
  %235 = load i32, i32* %12, align 4
  %236 = zext i32 %235 to i64
  %237 = add nsw i64 %236, %234
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %12, align 4
  br label %239

239:                                              ; preds = %219, %213
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @GLFW_DONT_CARE, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %265

245:                                              ; preds = %239
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = sub nsw i64 %248, %251
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = sub nsw i64 %255, %258
  %260 = mul nsw i64 %252, %259
  %261 = load i32, i32* %12, align 4
  %262 = zext i32 %261 to i64
  %263 = add nsw i64 %262, %260
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %12, align 4
  br label %265

265:                                              ; preds = %245, %239
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @GLFW_DONT_CARE, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %291

271:                                              ; preds = %265
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 4
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = sub nsw i64 %274, %277
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 4
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = sub nsw i64 %281, %284
  %286 = mul nsw i64 %278, %285
  %287 = load i32, i32* %12, align 4
  %288 = zext i32 %287 to i64
  %289 = add nsw i64 %288, %286
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %12, align 4
  br label %291

291:                                              ; preds = %271, %265
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 11
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @GLFW_DONT_CARE, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %317

297:                                              ; preds = %291
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 11
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 11
  %303 = load i64, i64* %302, align 8
  %304 = sub nsw i64 %300, %303
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 11
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 11
  %310 = load i64, i64* %309, align 8
  %311 = sub nsw i64 %307, %310
  %312 = mul nsw i64 %304, %311
  %313 = load i32, i32* %12, align 4
  %314 = zext i32 %313 to i64
  %315 = add nsw i64 %314, %312
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %12, align 4
  br label %317

317:                                              ; preds = %297, %291
  %318 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 12
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @GLFW_DONT_CARE, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %343

323:                                              ; preds = %317
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 12
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 12
  %329 = load i64, i64* %328, align 8
  %330 = sub nsw i64 %326, %329
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 12
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 12
  %336 = load i64, i64* %335, align 8
  %337 = sub nsw i64 %333, %336
  %338 = mul nsw i64 %330, %337
  %339 = load i32, i32* %12, align 4
  %340 = zext i32 %339 to i64
  %341 = add nsw i64 %340, %338
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %12, align 4
  br label %343

343:                                              ; preds = %323, %317
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 13
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @GLFW_DONT_CARE, align 8
  %348 = icmp ne i64 %346, %347
  br i1 %348, label %349, label %369

349:                                              ; preds = %343
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 13
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 13
  %355 = load i64, i64* %354, align 8
  %356 = sub nsw i64 %352, %355
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 13
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 13
  %362 = load i64, i64* %361, align 8
  %363 = sub nsw i64 %359, %362
  %364 = mul nsw i64 %356, %363
  %365 = load i32, i32* %12, align 4
  %366 = zext i32 %365 to i64
  %367 = add nsw i64 %366, %364
  %368 = trunc i64 %367 to i32
  store i32 %368, i32* %12, align 4
  br label %369

369:                                              ; preds = %349, %343
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 14
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @GLFW_DONT_CARE, align 8
  %374 = icmp ne i64 %372, %373
  br i1 %374, label %375, label %395

375:                                              ; preds = %369
  %376 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 14
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 14
  %381 = load i64, i64* %380, align 8
  %382 = sub nsw i64 %378, %381
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 14
  %385 = load i64, i64* %384, align 8
  %386 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 14
  %388 = load i64, i64* %387, align 8
  %389 = sub nsw i64 %385, %388
  %390 = mul nsw i64 %382, %389
  %391 = load i32, i32* %12, align 4
  %392 = zext i32 %391 to i64
  %393 = add nsw i64 %392, %390
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %12, align 4
  br label %395

395:                                              ; preds = %375, %369
  %396 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 0, i32 6
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @GLFW_DONT_CARE, align 8
  %400 = icmp ne i64 %398, %399
  br i1 %400, label %401, label %421

401:                                              ; preds = %395
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 6
  %404 = load i64, i64* %403, align 8
  %405 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 6
  %407 = load i64, i64* %406, align 8
  %408 = sub nsw i64 %404, %407
  %409 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 6
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %413 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %412, i32 0, i32 6
  %414 = load i64, i64* %413, align 8
  %415 = sub nsw i64 %411, %414
  %416 = mul nsw i64 %408, %415
  %417 = load i32, i32* %12, align 4
  %418 = zext i32 %417 to i64
  %419 = add nsw i64 %418, %416
  %420 = trunc i64 %419 to i32
  store i32 %420, i32* %12, align 4
  br label %421

421:                                              ; preds = %401, %395
  %422 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 15
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %434

426:                                              ; preds = %421
  %427 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 15
  %429 = load i64, i64* %428, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %434, label %431

431:                                              ; preds = %426
  %432 = load i32, i32* %12, align 4
  %433 = add i32 %432, 1
  store i32 %433, i32* %12, align 4
  br label %434

434:                                              ; preds = %431, %426, %421
  %435 = load i32, i32* %8, align 4
  %436 = load i32, i32* %9, align 4
  %437 = icmp ult i32 %435, %436
  br i1 %437, label %438, label %440

438:                                              ; preds = %434
  %439 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %439, %struct.TYPE_5__** %15, align 8
  br label %460

440:                                              ; preds = %434
  %441 = load i32, i32* %8, align 4
  %442 = load i32, i32* %9, align 4
  %443 = icmp eq i32 %441, %442
  br i1 %443, label %444, label %459

444:                                              ; preds = %440
  %445 = load i32, i32* %10, align 4
  %446 = load i32, i32* %11, align 4
  %447 = icmp ult i32 %445, %446
  br i1 %447, label %456, label %448

448:                                              ; preds = %444
  %449 = load i32, i32* %10, align 4
  %450 = load i32, i32* %11, align 4
  %451 = icmp eq i32 %449, %450
  br i1 %451, label %452, label %458

452:                                              ; preds = %448
  %453 = load i32, i32* %12, align 4
  %454 = load i32, i32* %13, align 4
  %455 = icmp ult i32 %453, %454
  br i1 %455, label %456, label %458

456:                                              ; preds = %452, %444
  %457 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %457, %struct.TYPE_5__** %15, align 8
  br label %458

458:                                              ; preds = %456, %452, %448
  br label %459

459:                                              ; preds = %458, %440
  br label %460

460:                                              ; preds = %459, %438
  %461 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %463 = icmp eq %struct.TYPE_5__* %461, %462
  br i1 %463, label %464, label %468

464:                                              ; preds = %460
  %465 = load i32, i32* %8, align 4
  store i32 %465, i32* %9, align 4
  %466 = load i32, i32* %10, align 4
  store i32 %466, i32* %11, align 4
  %467 = load i32, i32* %12, align 4
  store i32 %467, i32* %13, align 4
  br label %468

468:                                              ; preds = %464, %460
  br label %469

469:                                              ; preds = %468, %46, %37
  %470 = load i32, i32* %7, align 4
  %471 = add i32 %470, 1
  store i32 %471, i32* %7, align 4
  br label %19

472:                                              ; preds = %19
  %473 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  ret %struct.TYPE_5__* %473
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
