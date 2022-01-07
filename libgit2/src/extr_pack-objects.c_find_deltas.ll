; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_find_deltas.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_find_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i64, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, %struct.unpacked*, i64 }
%struct.unpacked = type { i64, %struct.unpacked*, %struct.unpacked*, %struct.TYPE_17__* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__**, i64*, i64, i64)* @find_deltas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_deltas(%struct.TYPE_18__* %0, %struct.TYPE_17__** %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca %struct.unpacked*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.unpacked*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.unpacked*, align 8
  %28 = alloca %struct.unpacked, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %32 = bitcast %struct.TYPE_19__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.TYPE_19__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 -1, i32* %18, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call %struct.unpacked* @git__calloc(i64 %33, i32 32)
  store %struct.unpacked* %34, %struct.unpacked** %13, align 8
  %35 = load %struct.unpacked*, %struct.unpacked** %13, align 8
  %36 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.unpacked* %35)
  br label %37

37:                                               ; preds = %304, %244, %5
  %38 = load %struct.unpacked*, %struct.unpacked** %13, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %38, i64 %39
  store %struct.unpacked* %40, %struct.unpacked** %19, align 8
  %41 = load i64, i64* @SIZE_MAX, align 8
  store i64 %41, i64* %22, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = call i32 @git_packbuilder__progress_lock(%struct.TYPE_18__* %42)
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = call i32 @git_packbuilder__progress_unlock(%struct.TYPE_18__* %48)
  br label %305

50:                                               ; preds = %37
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @report_delta_progress(%struct.TYPE_18__* %55, i32 %58, i32 0)
  %60 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %60, i32 1
  store %struct.TYPE_17__** %61, %struct.TYPE_17__*** %7, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %11, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, -1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = call i32 @git_packbuilder__progress_unlock(%struct.TYPE_18__* %66)
  %68 = load %struct.unpacked*, %struct.unpacked** %19, align 8
  %69 = call i64 @free_unpacked(%struct.unpacked* %68)
  %70 = load i64, i64* %16, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %16, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %73 = load %struct.unpacked*, %struct.unpacked** %19, align 8
  %74 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %73, i32 0, i32 3
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %74, align 8
  br label %75

75:                                               ; preds = %91, %50
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i64, i64* %16, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ugt i64 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i64, i64* %15, align 8
  %88 = icmp ugt i64 %87, 1
  br label %89

89:                                               ; preds = %86, %80, %75
  %90 = phi i1 [ false, %80 ], [ false, %75 ], [ %88, %86 ]
  br i1 %90, label %91, label %107

91:                                               ; preds = %89
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %92, %93
  %95 = load i64, i64* %15, align 8
  %96 = sub i64 %94, %95
  %97 = load i64, i64* %9, align 8
  %98 = urem i64 %96, %97
  store i64 %98, i64* %23, align 8
  %99 = load %struct.unpacked*, %struct.unpacked** %13, align 8
  %100 = load i64, i64* %23, align 8
  %101 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %99, i64 %100
  %102 = call i64 @free_unpacked(%struct.unpacked* %101)
  %103 = load i64, i64* %16, align 8
  %104 = sub i64 %103, %102
  store i64 %104, i64* %16, align 8
  %105 = load i64, i64* %15, align 8
  %106 = add i64 %105, -1
  store i64 %106, i64* %15, align 8
  br label %75

107:                                              ; preds = %89
  %108 = load i64, i64* %10, align 8
  store i64 %108, i64* %20, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %115 = call i64 @check_delta_limit(%struct.TYPE_17__* %114, i32 0)
  store i64 %115, i64* %24, align 8
  %116 = load i64, i64* %24, align 8
  %117 = load i64, i64* %20, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %289

120:                                              ; preds = %113
  %121 = load i64, i64* %24, align 8
  %122 = load i64, i64* %20, align 8
  %123 = sub i64 %122, %121
  store i64 %123, i64* %20, align 8
  br label %124

124:                                              ; preds = %120, %107
  %125 = load i64, i64* %9, align 8
  store i64 %125, i64* %21, align 8
  br label %126

126:                                              ; preds = %168, %124
  %127 = load i64, i64* %21, align 8
  %128 = add i64 %127, -1
  store i64 %128, i64* %21, align 8
  %129 = icmp ugt i64 %128, 0
  br i1 %129, label %130, label %169

130:                                              ; preds = %126
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %21, align 8
  %133 = add i64 %131, %132
  store i64 %133, i64* %26, align 8
  %134 = load i64, i64* %26, align 8
  %135 = load i64, i64* %9, align 8
  %136 = icmp uge i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* %26, align 8
  %140 = sub i64 %139, %138
  store i64 %140, i64* %26, align 8
  br label %141

141:                                              ; preds = %137, %130
  %142 = load %struct.unpacked*, %struct.unpacked** %13, align 8
  %143 = load i64, i64* %26, align 8
  %144 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %142, i64 %143
  store %struct.unpacked* %144, %struct.unpacked** %27, align 8
  %145 = load %struct.unpacked*, %struct.unpacked** %27, align 8
  %146 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %145, i32 0, i32 3
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = icmp ne %struct.TYPE_17__* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %141
  br label %169

150:                                              ; preds = %141
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %152 = load %struct.unpacked*, %struct.unpacked** %19, align 8
  %153 = load %struct.unpacked*, %struct.unpacked** %27, align 8
  %154 = load i64, i64* %20, align 8
  %155 = call i64 @try_delta(%struct.TYPE_18__* %151, %struct.unpacked* %152, %struct.unpacked* %153, i64 %154, i64* %16, i32* %25)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %306

158:                                              ; preds = %150
  %159 = load i32, i32* %25, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %169

162:                                              ; preds = %158
  %163 = load i32, i32* %25, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i64, i64* %26, align 8
  store i64 %166, i64* %22, align 8
  br label %167

167:                                              ; preds = %165, %162
  br label %168

168:                                              ; preds = %167
  br label %126

169:                                              ; preds = %161, %149, %126
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 3
  %172 = load %struct.unpacked*, %struct.unpacked** %171, align 8
  %173 = icmp ne %struct.unpacked* %172, null
  br i1 %173, label %174, label %233

174:                                              ; preds = %169
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 3
  %177 = load %struct.unpacked*, %struct.unpacked** %176, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = call i64 @git_zstream_deflatebuf(%struct.TYPE_19__* %12, %struct.unpacked* %177, i64 %180)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  br label %306

184:                                              ; preds = %174
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 3
  %187 = load %struct.unpacked*, %struct.unpacked** %186, align 8
  %188 = call i32 @git__free(%struct.unpacked* %187)
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call %struct.unpacked* @git__malloc(i64 %190)
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 3
  store %struct.unpacked* %191, %struct.unpacked** %193, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 3
  %196 = load %struct.unpacked*, %struct.unpacked** %195, align 8
  %197 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.unpacked* %196)
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 3
  %200 = load %struct.unpacked*, %struct.unpacked** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @memcpy(%struct.unpacked* %200, i32 %202, i64 %204)
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 1
  store i64 %207, i64* %209, align 8
  %210 = call i32 @git_buf_clear(%struct.TYPE_19__* %12)
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %212 = call i32 @git_packbuilder__cache_lock(%struct.TYPE_18__* %211)
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = sub nsw i64 %219, %215
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %217, align 8
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %224
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %226, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %232 = call i32 @git_packbuilder__cache_unlock(%struct.TYPE_18__* %231)
  br label %233

233:                                              ; preds = %184, %169
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %233
  %239 = load i64, i64* %20, align 8
  %240 = load %struct.unpacked*, %struct.unpacked** %19, align 8
  %241 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ule i64 %239, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %238
  br label %37

245:                                              ; preds = %238, %233
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %288

250:                                              ; preds = %245
  %251 = load %struct.unpacked*, %struct.unpacked** %13, align 8
  %252 = load i64, i64* %22, align 8
  %253 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %251, i64 %252
  %254 = bitcast %struct.unpacked* %28 to i8*
  %255 = bitcast %struct.unpacked* %253 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %254, i8* align 8 %255, i64 32, i1 false)
  %256 = load i64, i64* %9, align 8
  %257 = load i64, i64* %14, align 8
  %258 = add i64 %256, %257
  %259 = load i64, i64* %22, align 8
  %260 = sub i64 %258, %259
  %261 = load i64, i64* %9, align 8
  %262 = urem i64 %260, %261
  store i64 %262, i64* %29, align 8
  %263 = load i64, i64* %22, align 8
  store i64 %263, i64* %30, align 8
  br label %264

264:                                              ; preds = %268, %250
  %265 = load i64, i64* %29, align 8
  %266 = add i64 %265, -1
  store i64 %266, i64* %29, align 8
  %267 = icmp ne i64 %265, 0
  br i1 %267, label %268, label %282

268:                                              ; preds = %264
  %269 = load i64, i64* %30, align 8
  %270 = add i64 %269, 1
  %271 = load i64, i64* %9, align 8
  %272 = urem i64 %270, %271
  store i64 %272, i64* %31, align 8
  %273 = load %struct.unpacked*, %struct.unpacked** %13, align 8
  %274 = load i64, i64* %30, align 8
  %275 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %273, i64 %274
  %276 = load %struct.unpacked*, %struct.unpacked** %13, align 8
  %277 = load i64, i64* %31, align 8
  %278 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %276, i64 %277
  %279 = bitcast %struct.unpacked* %275 to i8*
  %280 = bitcast %struct.unpacked* %278 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %279, i8* align 8 %280, i64 32, i1 false)
  %281 = load i64, i64* %31, align 8
  store i64 %281, i64* %30, align 8
  br label %264

282:                                              ; preds = %264
  %283 = load %struct.unpacked*, %struct.unpacked** %13, align 8
  %284 = load i64, i64* %30, align 8
  %285 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %283, i64 %284
  %286 = bitcast %struct.unpacked* %285 to i8*
  %287 = bitcast %struct.unpacked* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %286, i8* align 8 %287, i64 32, i1 false)
  br label %288

288:                                              ; preds = %282, %245
  br label %289

289:                                              ; preds = %288, %119
  %290 = load i64, i64* %14, align 8
  %291 = add i64 %290, 1
  store i64 %291, i64* %14, align 8
  %292 = load i64, i64* %15, align 8
  %293 = add i64 %292, 1
  %294 = load i64, i64* %9, align 8
  %295 = icmp ult i64 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %289
  %297 = load i64, i64* %15, align 8
  %298 = add i64 %297, 1
  store i64 %298, i64* %15, align 8
  br label %299

299:                                              ; preds = %296, %289
  %300 = load i64, i64* %14, align 8
  %301 = load i64, i64* %9, align 8
  %302 = icmp uge i64 %300, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %299
  store i64 0, i64* %14, align 8
  br label %304

304:                                              ; preds = %303, %299
  br label %37

305:                                              ; preds = %47
  store i32 0, i32* %18, align 4
  br label %306

306:                                              ; preds = %305, %183, %157
  store i64 0, i64* %17, align 8
  br label %307

307:                                              ; preds = %324, %306
  %308 = load i64, i64* %17, align 8
  %309 = load i64, i64* %9, align 8
  %310 = icmp ult i64 %308, %309
  br i1 %310, label %311, label %327

311:                                              ; preds = %307
  %312 = load %struct.unpacked*, %struct.unpacked** %13, align 8
  %313 = load i64, i64* %17, align 8
  %314 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %312, i64 %313
  %315 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %314, i32 0, i32 2
  %316 = load %struct.unpacked*, %struct.unpacked** %315, align 8
  %317 = call i32 @git__free(%struct.unpacked* %316)
  %318 = load %struct.unpacked*, %struct.unpacked** %13, align 8
  %319 = load i64, i64* %17, align 8
  %320 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %318, i64 %319
  %321 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %320, i32 0, i32 1
  %322 = load %struct.unpacked*, %struct.unpacked** %321, align 8
  %323 = call i32 @git__free(%struct.unpacked* %322)
  br label %324

324:                                              ; preds = %311
  %325 = load i64, i64* %17, align 8
  %326 = add i64 %325, 1
  store i64 %326, i64* %17, align 8
  br label %307

327:                                              ; preds = %307
  %328 = load %struct.unpacked*, %struct.unpacked** %13, align 8
  %329 = call i32 @git__free(%struct.unpacked* %328)
  %330 = call i32 @git_buf_dispose(%struct.TYPE_19__* %12)
  %331 = load i32, i32* %18, align 4
  ret i32 %331
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.unpacked* @git__calloc(i64, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.unpacked*) #2

declare dso_local i32 @git_packbuilder__progress_lock(%struct.TYPE_18__*) #2

declare dso_local i32 @git_packbuilder__progress_unlock(%struct.TYPE_18__*) #2

declare dso_local i32 @report_delta_progress(%struct.TYPE_18__*, i32, i32) #2

declare dso_local i64 @free_unpacked(%struct.unpacked*) #2

declare dso_local i64 @check_delta_limit(%struct.TYPE_17__*, i32) #2

declare dso_local i64 @try_delta(%struct.TYPE_18__*, %struct.unpacked*, %struct.unpacked*, i64, i64*, i32*) #2

declare dso_local i64 @git_zstream_deflatebuf(%struct.TYPE_19__*, %struct.unpacked*, i64) #2

declare dso_local i32 @git__free(%struct.unpacked*) #2

declare dso_local %struct.unpacked* @git__malloc(i64) #2

declare dso_local i32 @memcpy(%struct.unpacked*, i32, i64) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_19__*) #2

declare dso_local i32 @git_packbuilder__cache_lock(%struct.TYPE_18__*) #2

declare dso_local i32 @git_packbuilder__cache_unlock(%struct.TYPE_18__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
