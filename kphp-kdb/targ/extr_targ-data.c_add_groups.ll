; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_add_groups.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_add_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.user_groups* }
%struct.user_groups = type { i32, i32, i32* }

@MAX_USER_GROUPS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"add_groups: user_id=%d, len=%d,\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@MIN_USER_GROUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @add_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_groups(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.user_groups*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.user_groups*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.user_groups*, %struct.user_groups** %18, align 8
  store %struct.user_groups* %19, %struct.user_groups** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAX_USER_GROUPS, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %3
  store i32 -1, i32* %4, align 4
  br label %435

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %32 = icmp ne %struct.user_groups* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %35 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MAX_USER_GROUPS, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27
  store i32 0, i32* %4, align 4
  br label %435

40:                                               ; preds = %33, %30
  store i32 0, i32* %11, align 4
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %98, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %101

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %51, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %45
  %59 = load i32, i32* @stderr, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %77, %58
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32, i32* @stderr, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %45
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %89, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  br label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %41

101:                                              ; preds = %41
  %102 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %103 = icmp ne %struct.user_groups* %102, null
  br i1 %103, label %104, label %383

104:                                              ; preds = %101
  %105 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %106 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %111 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %114 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sle i32 %112, %115
  br label %117

117:                                              ; preds = %109, %104
  %118 = phi i1 [ false, %104 ], [ %116, %109 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %175, %117
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %128 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br label %131

131:                                              ; preds = %125, %121
  %132 = phi i1 [ false, %121 ], [ %130, %125 ]
  br i1 %132, label %133, label %176

133:                                              ; preds = %131
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %140 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %138, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %133
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %175

150:                                              ; preds = %133
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %157 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %155, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %150
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %174

167:                                              ; preds = %150
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %167, %164
  br label %175

175:                                              ; preds = %174, %147
  br label %121

176:                                              ; preds = %131
  %177 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %178 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %11, align 4
  %183 = sub nsw i32 %181, %182
  store i32 %183, i32* %13, align 4
  %184 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %185 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %14, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %230

190:                                              ; preds = %176
  br label %191

191:                                              ; preds = %195, %190
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32, i32* %14, align 4
  %197 = shl i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %191

198:                                              ; preds = %191
  %199 = load i32, i32* %14, align 4
  %200 = mul nsw i32 4, %199
  %201 = sext i32 %200 to i64
  %202 = add i64 16, %201
  %203 = trunc i64 %202 to i32
  %204 = call %struct.user_groups* @zmalloc(i32 %203)
  store %struct.user_groups* %204, %struct.user_groups** %15, align 8
  %205 = load %struct.user_groups*, %struct.user_groups** %15, align 8
  %206 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %207 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %208 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = mul nsw i32 4, %209
  %211 = sext i32 %210 to i64
  %212 = add i64 16, %211
  %213 = trunc i64 %212 to i32
  %214 = call i32 @memcpy(%struct.user_groups* %205, %struct.user_groups* %206, i32 %213)
  %215 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %216 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %217 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 4, %218
  %220 = sext i32 %219 to i64
  %221 = add i64 16, %220
  %222 = trunc i64 %221 to i32
  %223 = call i32 @zfree(%struct.user_groups* %215, i32 %222)
  %224 = load %struct.user_groups*, %struct.user_groups** %15, align 8
  store %struct.user_groups* %224, %struct.user_groups** %8, align 8
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  store %struct.user_groups* %224, %struct.user_groups** %226, align 8
  %227 = load i32, i32* %14, align 4
  %228 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %229 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %198, %176
  %231 = load i32, i32* %7, align 4
  %232 = sub nsw i32 %231, 1
  store i32 %232, i32* %9, align 4
  %233 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %234 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sub nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %239 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  br label %240

240:                                              ; preds = %320, %230
  %241 = load i32, i32* %9, align 4
  %242 = icmp sge i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32, i32* %10, align 4
  %245 = icmp sge i32 %244, 0
  br label %246

246:                                              ; preds = %243, %240
  %247 = phi i1 [ false, %240 ], [ %245, %243 ]
  br i1 %247, label %248, label %321

248:                                              ; preds = %246
  %249 = load i32, i32* %13, align 4
  %250 = icmp sgt i32 %249, 0
  %251 = zext i1 %250 to i32
  %252 = call i32 @assert(i32 %251)
  %253 = load i32*, i32** %6, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %259 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp sgt i32 %257, %264
  br i1 %265, label %266, label %287

266:                                              ; preds = %248
  %267 = load i32*, i32** %6, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %273 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %13, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  store i32 %271, i32* %278, align 4
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %280 = load i32*, i32** %6, align 8
  %281 = load i32, i32* %9, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %9, align 4
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @add_user_group(%struct.TYPE_4__* %279, i32 %285)
  br label %320

287:                                              ; preds = %248
  %288 = load i32*, i32** %6, align 8
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %294 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %292, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %287
  %302 = load i32, i32* %9, align 4
  %303 = add nsw i32 %302, -1
  store i32 %303, i32* %9, align 4
  br label %304

304:                                              ; preds = %301, %287
  %305 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %306 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %10, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %10, align 4
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %314 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %313, i32 0, i32 2
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %13, align 4
  %317 = add nsw i32 %316, -1
  store i32 %317, i32* %13, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  store i32 %312, i32* %319, align 4
  br label %320

320:                                              ; preds = %304, %266
  br label %240

321:                                              ; preds = %246
  br label %322

322:                                              ; preds = %325, %321
  %323 = load i32, i32* %9, align 4
  %324 = icmp sge i32 %323, 0
  br i1 %324, label %325, label %350

325:                                              ; preds = %322
  %326 = load i32, i32* %13, align 4
  %327 = icmp sgt i32 %326, 0
  %328 = zext i1 %327 to i32
  %329 = call i32 @assert(i32 %328)
  %330 = load i32*, i32** %6, align 8
  %331 = load i32, i32* %9, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %336 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %335, i32 0, i32 2
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %13, align 4
  %339 = add nsw i32 %338, -1
  store i32 %339, i32* %13, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %337, i64 %340
  store i32 %334, i32* %341, align 4
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %343 = load i32*, i32** %6, align 8
  %344 = load i32, i32* %9, align 4
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %9, align 4
  %346 = sext i32 %344 to i64
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @add_user_group(%struct.TYPE_4__* %342, i32 %348)
  br label %322

350:                                              ; preds = %322
  br label %351

351:                                              ; preds = %354, %350
  %352 = load i32, i32* %10, align 4
  %353 = icmp sge i32 %352, 0
  br i1 %353, label %354, label %374

354:                                              ; preds = %351
  %355 = load i32, i32* %13, align 4
  %356 = icmp sgt i32 %355, 0
  %357 = zext i1 %356 to i32
  %358 = call i32 @assert(i32 %357)
  %359 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %360 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %359, i32 0, i32 2
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %10, align 4
  %363 = add nsw i32 %362, -1
  store i32 %363, i32* %10, align 4
  %364 = sext i32 %362 to i64
  %365 = getelementptr inbounds i32, i32* %361, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %368 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %367, i32 0, i32 2
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %13, align 4
  %371 = add nsw i32 %370, -1
  store i32 %371, i32* %13, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  store i32 %366, i32* %373, align 4
  br label %351

374:                                              ; preds = %351
  %375 = load i32, i32* %13, align 4
  %376 = icmp ne i32 %375, 0
  %377 = xor i1 %376, true
  %378 = zext i1 %377 to i32
  %379 = call i32 @assert(i32 %378)
  %380 = load i32, i32* %7, align 4
  %381 = load i32, i32* %11, align 4
  %382 = sub nsw i32 %380, %381
  store i32 %382, i32* %4, align 4
  br label %435

383:                                              ; preds = %101
  %384 = load i32, i32* @MIN_USER_GROUPS, align 4
  store i32 %384, i32* %16, align 4
  br label %385

385:                                              ; preds = %389, %383
  %386 = load i32, i32* %16, align 4
  %387 = load i32, i32* %7, align 4
  %388 = icmp slt i32 %386, %387
  br i1 %388, label %389, label %392

389:                                              ; preds = %385
  %390 = load i32, i32* %16, align 4
  %391 = shl i32 %390, 1
  store i32 %391, i32* %16, align 4
  br label %385

392:                                              ; preds = %385
  %393 = load i32, i32* %16, align 4
  %394 = mul nsw i32 4, %393
  %395 = sext i32 %394 to i64
  %396 = add i64 16, %395
  %397 = trunc i64 %396 to i32
  %398 = call %struct.user_groups* @zmalloc(i32 %397)
  store %struct.user_groups* %398, %struct.user_groups** %8, align 8
  %399 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 1
  store %struct.user_groups* %398, %struct.user_groups** %400, align 8
  %401 = load i32, i32* %7, align 4
  %402 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %403 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %402, i32 0, i32 0
  store i32 %401, i32* %403, align 8
  %404 = load i32, i32* %16, align 4
  %405 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %406 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %405, i32 0, i32 1
  store i32 %404, i32* %406, align 4
  store i32 0, i32* %9, align 4
  br label %407

407:                                              ; preds = %430, %392
  %408 = load i32, i32* %9, align 4
  %409 = load i32, i32* %7, align 4
  %410 = icmp slt i32 %408, %409
  br i1 %410, label %411, label %433

411:                                              ; preds = %407
  %412 = load i32*, i32** %6, align 8
  %413 = load i32, i32* %9, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.user_groups*, %struct.user_groups** %8, align 8
  %418 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %417, i32 0, i32 2
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %9, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  store i32 %416, i32* %422, align 4
  %423 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %424 = load i32*, i32** %6, align 8
  %425 = load i32, i32* %9, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @add_user_group(%struct.TYPE_4__* %423, i32 %428)
  br label %430

430:                                              ; preds = %411
  %431 = load i32, i32* %9, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %9, align 4
  br label %407

433:                                              ; preds = %407
  %434 = load i32, i32* %7, align 4
  store i32 %434, i32* %4, align 4
  br label %435

435:                                              ; preds = %433, %374, %39, %26
  %436 = load i32, i32* %4, align 4
  ret i32 %436
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.user_groups* @zmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.user_groups*, %struct.user_groups*, i32) #1

declare dso_local i32 @zfree(%struct.user_groups*, i32) #1

declare dso_local i32 @add_user_group(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
