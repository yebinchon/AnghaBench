; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_delta.c_git_delta_create_from_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_delta.c_git_delta_create_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_delta_index = type { i64, i8*, i32, %struct.index_entry** }
%struct.index_entry = type { i8*, i32, %struct.index_entry* }

@UINT_MAX = common dso_local global i64 0, align 8
@MAX_OP_SIZE = common dso_local global i64 0, align 8
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"buffer sizes too large for delta processing\00", align 1
@RABIN_WINDOW = common dso_local global i32 0, align 4
@T = common dso_local global i32* null, align 8
@RABIN_SHIFT = common dso_local global i32 0, align 4
@U = common dso_local global i32* null, align 8
@GIT_ERROR_NOMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"delta would be larger than maximum size\00", align 1
@GIT_EBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_delta_create_from_index(i8** %0, i64* %1, %struct.git_delta_index* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.git_delta_index*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.index_entry*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  store i8** %0, i8*** %8, align 8
  store i64* %1, i64** %9, align 8
  store %struct.git_delta_index* %2, %struct.git_delta_index** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %34 = load i8**, i8*** %8, align 8
  store i8* null, i8** %34, align 8
  %35 = load i64*, i64** %9, align 8
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %6
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %6
  store i32 0, i32* %7, align 4
  br label %639

42:                                               ; preds = %38
  %43 = load %struct.git_delta_index*, %struct.git_delta_index** %10, align 8
  %44 = getelementptr inbounds %struct.git_delta_index, %struct.git_delta_index* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UINT_MAX, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @UINT_MAX, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @UINT_MAX, align 8
  %55 = load i64, i64* @MAX_OP_SIZE, align 8
  %56 = sub i64 %54, %55
  %57 = sub i64 %56, 1
  %58 = icmp ugt i64 %53, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52, %48, %42
  %60 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %61 = call i32 @git_error_set(i32 %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %639

62:                                               ; preds = %52
  store i32 0, i32* %15, align 4
  store i32 8192, i32* %16, align 4
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %13, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* @MAX_OP_SIZE, align 8
  %73 = add i64 %71, %72
  %74 = add i64 %73, 1
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %70, %65, %62
  %77 = load i32, i32* %16, align 4
  %78 = call i8* @git__malloc(i32 %77)
  store i8* %78, i8** %25, align 8
  %79 = load i8*, i8** %25, align 8
  %80 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %79)
  %81 = load %struct.git_delta_index*, %struct.git_delta_index** %10, align 8
  %82 = getelementptr inbounds %struct.git_delta_index, %struct.git_delta_index* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %88, %76
  %86 = load i32, i32* %14, align 4
  %87 = icmp uge i32 %86, 128
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %89, 128
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %25, align 8
  %93 = load i32, i32* %15, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %15, align 4
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 %91, i8* %96, align 1
  %97 = load i32, i32* %14, align 4
  %98 = lshr i32 %97, 7
  store i32 %98, i32* %14, align 4
  br label %85

99:                                               ; preds = %85
  %100 = load i32, i32* %14, align 4
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %25, align 8
  %103 = load i32, i32* %15, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %15, align 4
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8 %101, i8* %106, align 1
  %107 = load i64, i64* %12, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %112, %99
  %110 = load i32, i32* %14, align 4
  %111 = icmp uge i32 %110, 128
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load i32, i32* %14, align 4
  %114 = or i32 %113, 128
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %25, align 8
  %117 = load i32, i32* %15, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %15, align 4
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8 %115, i8* %120, align 1
  %121 = load i32, i32* %14, align 4
  %122 = lshr i32 %121, 7
  store i32 %122, i32* %14, align 4
  br label %109

123:                                              ; preds = %109
  %124 = load i32, i32* %14, align 4
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %25, align 8
  %127 = load i32, i32* %15, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %15, align 4
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  store i8 %125, i8* %130, align 1
  %131 = load %struct.git_delta_index*, %struct.git_delta_index** %10, align 8
  %132 = getelementptr inbounds %struct.git_delta_index, %struct.git_delta_index* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %21, align 8
  %134 = load i8*, i8** %21, align 8
  %135 = load %struct.git_delta_index*, %struct.git_delta_index** %10, align 8
  %136 = getelementptr inbounds %struct.git_delta_index, %struct.git_delta_index* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8* %138, i8** %22, align 8
  %139 = load i8*, i8** %11, align 8
  store i8* %139, i8** %23, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = load i64, i64* %12, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %24, align 8
  %143 = load i32, i32* %15, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %15, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %14, align 4
  br label %145

145:                                              ; preds = %177, %123
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @RABIN_WINDOW, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i8*, i8** %23, align 8
  %151 = load i8*, i8** %24, align 8
  %152 = icmp ult i8* %150, %151
  br label %153

153:                                              ; preds = %149, %145
  %154 = phi i1 [ false, %145 ], [ %152, %149 ]
  br i1 %154, label %155, label %182

155:                                              ; preds = %153
  %156 = load i8*, i8** %23, align 8
  %157 = load i8, i8* %156, align 1
  %158 = load i8*, i8** %25, align 8
  %159 = load i32, i32* %15, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %15, align 4
  %161 = zext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  store i8 %157, i8* %162, align 1
  %163 = load i32, i32* %19, align 4
  %164 = shl i32 %163, 8
  %165 = load i8*, i8** %23, align 8
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = or i32 %164, %167
  %169 = load i32*, i32** @T, align 8
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* @RABIN_SHIFT, align 4
  %172 = lshr i32 %170, %171
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %169, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = xor i32 %168, %175
  store i32 %176, i32* %19, align 4
  br label %177

177:                                              ; preds = %155
  %178 = load i32, i32* %14, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %14, align 4
  %180 = load i8*, i8** %23, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %23, align 8
  br label %145

182:                                              ; preds = %153
  %183 = load i32, i32* %14, align 4
  store i32 %183, i32* %20, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %184

184:                                              ; preds = %605, %182
  %185 = load i8*, i8** %23, align 8
  %186 = load i8*, i8** %24, align 8
  %187 = icmp ult i8* %185, %186
  br i1 %187, label %188, label %606

188:                                              ; preds = %184
  %189 = load i32, i32* %18, align 4
  %190 = icmp ult i32 %189, 4096
  br i1 %190, label %191, label %328

191:                                              ; preds = %188
  %192 = load i32*, i32** @U, align 8
  %193 = load i8*, i8** %23, align 8
  %194 = load i32, i32* @RABIN_WINDOW, align 4
  %195 = sub i32 0, %194
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i64
  %200 = getelementptr inbounds i32, i32* %192, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %19, align 4
  %203 = xor i32 %202, %201
  store i32 %203, i32* %19, align 4
  %204 = load i32, i32* %19, align 4
  %205 = shl i32 %204, 8
  %206 = load i8*, i8** %23, align 8
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = or i32 %205, %208
  %210 = load i32*, i32** @T, align 8
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* @RABIN_SHIFT, align 4
  %213 = lshr i32 %211, %212
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = xor i32 %209, %216
  store i32 %217, i32* %19, align 4
  %218 = load i32, i32* %19, align 4
  %219 = load %struct.git_delta_index*, %struct.git_delta_index** %10, align 8
  %220 = getelementptr inbounds %struct.git_delta_index, %struct.git_delta_index* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %218, %221
  store i32 %222, i32* %14, align 4
  %223 = load %struct.git_delta_index*, %struct.git_delta_index** %10, align 8
  %224 = getelementptr inbounds %struct.git_delta_index, %struct.git_delta_index* %223, i32 0, i32 3
  %225 = load %struct.index_entry**, %struct.index_entry*** %224, align 8
  %226 = load i32, i32* %14, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.index_entry*, %struct.index_entry** %225, i64 %227
  %229 = load %struct.index_entry*, %struct.index_entry** %228, align 8
  store %struct.index_entry* %229, %struct.index_entry** %26, align 8
  br label %230

230:                                              ; preds = %323, %191
  %231 = load %struct.index_entry*, %struct.index_entry** %26, align 8
  %232 = icmp ne %struct.index_entry* %231, null
  br i1 %232, label %233, label %327

233:                                              ; preds = %230
  %234 = load %struct.index_entry*, %struct.index_entry** %26, align 8
  %235 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  store i8* %236, i8** %27, align 8
  %237 = load i8*, i8** %23, align 8
  store i8* %237, i8** %28, align 8
  %238 = load i8*, i8** %22, align 8
  %239 = load i8*, i8** %27, align 8
  %240 = ptrtoint i8* %238 to i64
  %241 = ptrtoint i8* %239 to i64
  %242 = sub i64 %240, %241
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %29, align 4
  %244 = load %struct.index_entry*, %struct.index_entry** %26, align 8
  %245 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %19, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %233
  br label %323

250:                                              ; preds = %233
  %251 = load i32, i32* %29, align 4
  %252 = load i8*, i8** %24, align 8
  %253 = load i8*, i8** %28, align 8
  %254 = ptrtoint i8* %252 to i64
  %255 = ptrtoint i8* %253 to i64
  %256 = sub i64 %254, %255
  %257 = trunc i64 %256 to i32
  %258 = icmp ugt i32 %251, %257
  br i1 %258, label %259, label %266

259:                                              ; preds = %250
  %260 = load i8*, i8** %24, align 8
  %261 = load i8*, i8** %28, align 8
  %262 = ptrtoint i8* %260 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %29, align 4
  br label %266

266:                                              ; preds = %259, %250
  %267 = load i32, i32* %29, align 4
  %268 = load i32, i32* %18, align 4
  %269 = icmp ule i32 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  br label %327

271:                                              ; preds = %266
  br label %272

272:                                              ; preds = %287, %271
  %273 = load i32, i32* %29, align 4
  %274 = add i32 %273, -1
  store i32 %274, i32* %29, align 4
  %275 = icmp ne i32 %273, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %272
  %277 = load i8*, i8** %28, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %28, align 8
  %279 = load i8, i8* %277, align 1
  %280 = zext i8 %279 to i32
  %281 = load i8*, i8** %27, align 8
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = icmp eq i32 %280, %283
  br label %285

285:                                              ; preds = %276, %272
  %286 = phi i1 [ false, %272 ], [ %284, %276 ]
  br i1 %286, label %287, label %290

287:                                              ; preds = %285
  %288 = load i8*, i8** %27, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %27, align 8
  br label %272

290:                                              ; preds = %285
  %291 = load i32, i32* %18, align 4
  %292 = load i8*, i8** %27, align 8
  %293 = load %struct.index_entry*, %struct.index_entry** %26, align 8
  %294 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = ptrtoint i8* %292 to i64
  %297 = ptrtoint i8* %295 to i64
  %298 = sub i64 %296, %297
  %299 = trunc i64 %298 to i32
  %300 = icmp ult i32 %291, %299
  br i1 %300, label %301, label %322

301:                                              ; preds = %290
  %302 = load i8*, i8** %27, align 8
  %303 = load %struct.index_entry*, %struct.index_entry** %26, align 8
  %304 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %303, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = ptrtoint i8* %302 to i64
  %307 = ptrtoint i8* %305 to i64
  %308 = sub i64 %306, %307
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %18, align 4
  %310 = load %struct.index_entry*, %struct.index_entry** %26, align 8
  %311 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %310, i32 0, i32 0
  %312 = load i8*, i8** %311, align 8
  %313 = load i8*, i8** %21, align 8
  %314 = ptrtoint i8* %312 to i64
  %315 = ptrtoint i8* %313 to i64
  %316 = sub i64 %314, %315
  %317 = trunc i64 %316 to i32
  store i32 %317, i32* %17, align 4
  %318 = load i32, i32* %18, align 4
  %319 = icmp uge i32 %318, 4096
  br i1 %319, label %320, label %321

320:                                              ; preds = %301
  br label %327

321:                                              ; preds = %301
  br label %322

322:                                              ; preds = %321, %290
  br label %323

323:                                              ; preds = %322, %249
  %324 = load %struct.index_entry*, %struct.index_entry** %26, align 8
  %325 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %324, i32 0, i32 2
  %326 = load %struct.index_entry*, %struct.index_entry** %325, align 8
  store %struct.index_entry* %326, %struct.index_entry** %26, align 8
  br label %230

327:                                              ; preds = %320, %270, %230
  br label %328

328:                                              ; preds = %327, %188
  %329 = load i32, i32* %18, align 4
  %330 = icmp ult i32 %329, 4
  br i1 %330, label %331, label %361

331:                                              ; preds = %328
  %332 = load i32, i32* %20, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %331
  %335 = load i32, i32* %15, align 4
  %336 = add i32 %335, 1
  store i32 %336, i32* %15, align 4
  br label %337

337:                                              ; preds = %334, %331
  %338 = load i8*, i8** %23, align 8
  %339 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %339, i8** %23, align 8
  %340 = load i8, i8* %338, align 1
  %341 = load i8*, i8** %25, align 8
  %342 = load i32, i32* %15, align 4
  %343 = add i32 %342, 1
  store i32 %343, i32* %15, align 4
  %344 = zext i32 %342 to i64
  %345 = getelementptr inbounds i8, i8* %341, i64 %344
  store i8 %340, i8* %345, align 1
  %346 = load i32, i32* %20, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %20, align 4
  %348 = load i32, i32* %20, align 4
  %349 = icmp eq i32 %348, 127
  br i1 %349, label %350, label %360

350:                                              ; preds = %337
  %351 = load i32, i32* %20, align 4
  %352 = trunc i32 %351 to i8
  %353 = load i8*, i8** %25, align 8
  %354 = load i32, i32* %15, align 4
  %355 = load i32, i32* %20, align 4
  %356 = sub i32 %354, %355
  %357 = sub i32 %356, 1
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds i8, i8* %353, i64 %358
  store i8 %352, i8* %359, align 1
  store i32 0, i32* %20, align 4
  br label %360

360:                                              ; preds = %350, %337
  store i32 0, i32* %18, align 4
  br label %560

361:                                              ; preds = %328
  %362 = load i32, i32* %20, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %411

364:                                              ; preds = %361
  br label %365

365:                                              ; preds = %395, %364
  %366 = load i32, i32* %17, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %381

368:                                              ; preds = %365
  %369 = load i8*, i8** %21, align 8
  %370 = load i32, i32* %17, align 4
  %371 = sub i32 %370, 1
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %369, i64 %372
  %374 = load i8, i8* %373, align 1
  %375 = zext i8 %374 to i32
  %376 = load i8*, i8** %23, align 8
  %377 = getelementptr inbounds i8, i8* %376, i64 -1
  %378 = load i8, i8* %377, align 1
  %379 = zext i8 %378 to i32
  %380 = icmp eq i32 %375, %379
  br label %381

381:                                              ; preds = %368, %365
  %382 = phi i1 [ false, %365 ], [ %380, %368 ]
  br i1 %382, label %383, label %401

383:                                              ; preds = %381
  %384 = load i32, i32* %18, align 4
  %385 = add i32 %384, 1
  store i32 %385, i32* %18, align 4
  %386 = load i32, i32* %17, align 4
  %387 = add i32 %386, -1
  store i32 %387, i32* %17, align 4
  %388 = load i8*, i8** %23, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 -1
  store i8* %389, i8** %23, align 8
  %390 = load i32, i32* %15, align 4
  %391 = add i32 %390, -1
  store i32 %391, i32* %15, align 4
  %392 = load i32, i32* %20, align 4
  %393 = add nsw i32 %392, -1
  store i32 %393, i32* %20, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %383
  br label %365

396:                                              ; preds = %383
  %397 = load i32, i32* %15, align 4
  %398 = add i32 %397, -1
  store i32 %398, i32* %15, align 4
  %399 = load i32, i32* %20, align 4
  %400 = add nsw i32 %399, -1
  store i32 %400, i32* %20, align 4
  br label %401

401:                                              ; preds = %396, %381
  %402 = load i32, i32* %20, align 4
  %403 = trunc i32 %402 to i8
  %404 = load i8*, i8** %25, align 8
  %405 = load i32, i32* %15, align 4
  %406 = load i32, i32* %20, align 4
  %407 = sub i32 %405, %406
  %408 = sub i32 %407, 1
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds i8, i8* %404, i64 %409
  store i8 %403, i8* %410, align 1
  store i32 0, i32* %20, align 4
  br label %411

411:                                              ; preds = %401, %361
  %412 = load i32, i32* %18, align 4
  %413 = icmp ult i32 %412, 65536
  br i1 %413, label %414, label %415

414:                                              ; preds = %411
  br label %418

415:                                              ; preds = %411
  %416 = load i32, i32* %18, align 4
  %417 = sub i32 %416, 65536
  br label %418

418:                                              ; preds = %415, %414
  %419 = phi i32 [ 0, %414 ], [ %417, %415 ]
  store i32 %419, i32* %30, align 4
  %420 = load i32, i32* %30, align 4
  %421 = load i32, i32* %18, align 4
  %422 = sub i32 %421, %420
  store i32 %422, i32* %18, align 4
  %423 = load i8*, i8** %25, align 8
  %424 = load i32, i32* %15, align 4
  %425 = add i32 %424, 1
  store i32 %425, i32* %15, align 4
  %426 = zext i32 %424 to i64
  %427 = getelementptr inbounds i8, i8* %423, i64 %426
  store i8* %427, i8** %31, align 8
  store i32 128, i32* %14, align 4
  %428 = load i32, i32* %17, align 4
  %429 = and i32 %428, 255
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %442

431:                                              ; preds = %418
  %432 = load i32, i32* %17, align 4
  %433 = lshr i32 %432, 0
  %434 = trunc i32 %433 to i8
  %435 = load i8*, i8** %25, align 8
  %436 = load i32, i32* %15, align 4
  %437 = add i32 %436, 1
  store i32 %437, i32* %15, align 4
  %438 = zext i32 %436 to i64
  %439 = getelementptr inbounds i8, i8* %435, i64 %438
  store i8 %434, i8* %439, align 1
  %440 = load i32, i32* %14, align 4
  %441 = or i32 %440, 1
  store i32 %441, i32* %14, align 4
  br label %442

442:                                              ; preds = %431, %418
  %443 = load i32, i32* %17, align 4
  %444 = and i32 %443, 65280
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %457

446:                                              ; preds = %442
  %447 = load i32, i32* %17, align 4
  %448 = lshr i32 %447, 8
  %449 = trunc i32 %448 to i8
  %450 = load i8*, i8** %25, align 8
  %451 = load i32, i32* %15, align 4
  %452 = add i32 %451, 1
  store i32 %452, i32* %15, align 4
  %453 = zext i32 %451 to i64
  %454 = getelementptr inbounds i8, i8* %450, i64 %453
  store i8 %449, i8* %454, align 1
  %455 = load i32, i32* %14, align 4
  %456 = or i32 %455, 2
  store i32 %456, i32* %14, align 4
  br label %457

457:                                              ; preds = %446, %442
  %458 = load i32, i32* %17, align 4
  %459 = and i32 %458, 16711680
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %472

461:                                              ; preds = %457
  %462 = load i32, i32* %17, align 4
  %463 = lshr i32 %462, 16
  %464 = trunc i32 %463 to i8
  %465 = load i8*, i8** %25, align 8
  %466 = load i32, i32* %15, align 4
  %467 = add i32 %466, 1
  store i32 %467, i32* %15, align 4
  %468 = zext i32 %466 to i64
  %469 = getelementptr inbounds i8, i8* %465, i64 %468
  store i8 %464, i8* %469, align 1
  %470 = load i32, i32* %14, align 4
  %471 = or i32 %470, 4
  store i32 %471, i32* %14, align 4
  br label %472

472:                                              ; preds = %461, %457
  %473 = load i32, i32* %17, align 4
  %474 = and i32 %473, -16777216
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %487

476:                                              ; preds = %472
  %477 = load i32, i32* %17, align 4
  %478 = lshr i32 %477, 24
  %479 = trunc i32 %478 to i8
  %480 = load i8*, i8** %25, align 8
  %481 = load i32, i32* %15, align 4
  %482 = add i32 %481, 1
  store i32 %482, i32* %15, align 4
  %483 = zext i32 %481 to i64
  %484 = getelementptr inbounds i8, i8* %480, i64 %483
  store i8 %479, i8* %484, align 1
  %485 = load i32, i32* %14, align 4
  %486 = or i32 %485, 8
  store i32 %486, i32* %14, align 4
  br label %487

487:                                              ; preds = %476, %472
  %488 = load i32, i32* %18, align 4
  %489 = and i32 %488, 255
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %502

491:                                              ; preds = %487
  %492 = load i32, i32* %18, align 4
  %493 = lshr i32 %492, 0
  %494 = trunc i32 %493 to i8
  %495 = load i8*, i8** %25, align 8
  %496 = load i32, i32* %15, align 4
  %497 = add i32 %496, 1
  store i32 %497, i32* %15, align 4
  %498 = zext i32 %496 to i64
  %499 = getelementptr inbounds i8, i8* %495, i64 %498
  store i8 %494, i8* %499, align 1
  %500 = load i32, i32* %14, align 4
  %501 = or i32 %500, 16
  store i32 %501, i32* %14, align 4
  br label %502

502:                                              ; preds = %491, %487
  %503 = load i32, i32* %18, align 4
  %504 = and i32 %503, 65280
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %517

506:                                              ; preds = %502
  %507 = load i32, i32* %18, align 4
  %508 = lshr i32 %507, 8
  %509 = trunc i32 %508 to i8
  %510 = load i8*, i8** %25, align 8
  %511 = load i32, i32* %15, align 4
  %512 = add i32 %511, 1
  store i32 %512, i32* %15, align 4
  %513 = zext i32 %511 to i64
  %514 = getelementptr inbounds i8, i8* %510, i64 %513
  store i8 %509, i8* %514, align 1
  %515 = load i32, i32* %14, align 4
  %516 = or i32 %515, 32
  store i32 %516, i32* %14, align 4
  br label %517

517:                                              ; preds = %506, %502
  %518 = load i32, i32* %14, align 4
  %519 = trunc i32 %518 to i8
  %520 = load i8*, i8** %31, align 8
  store i8 %519, i8* %520, align 1
  %521 = load i32, i32* %18, align 4
  %522 = load i8*, i8** %23, align 8
  %523 = zext i32 %521 to i64
  %524 = getelementptr inbounds i8, i8* %522, i64 %523
  store i8* %524, i8** %23, align 8
  %525 = load i32, i32* %18, align 4
  %526 = load i32, i32* %17, align 4
  %527 = add i32 %526, %525
  store i32 %527, i32* %17, align 4
  %528 = load i32, i32* %30, align 4
  store i32 %528, i32* %18, align 4
  %529 = load i32, i32* %18, align 4
  %530 = icmp ult i32 %529, 4096
  br i1 %530, label %531, label %559

531:                                              ; preds = %517
  store i32 0, i32* %19, align 4
  %532 = load i32, i32* @RABIN_WINDOW, align 4
  %533 = sub i32 0, %532
  store i32 %533, i32* %32, align 4
  br label %534

534:                                              ; preds = %555, %531
  %535 = load i32, i32* %32, align 4
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %537, label %558

537:                                              ; preds = %534
  %538 = load i32, i32* %19, align 4
  %539 = shl i32 %538, 8
  %540 = load i8*, i8** %23, align 8
  %541 = load i32, i32* %32, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i8, i8* %540, i64 %542
  %544 = load i8, i8* %543, align 1
  %545 = zext i8 %544 to i32
  %546 = or i32 %539, %545
  %547 = load i32*, i32** @T, align 8
  %548 = load i32, i32* %19, align 4
  %549 = load i32, i32* @RABIN_SHIFT, align 4
  %550 = lshr i32 %548, %549
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %547, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = xor i32 %546, %553
  store i32 %554, i32* %19, align 4
  br label %555

555:                                              ; preds = %537
  %556 = load i32, i32* %32, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %32, align 4
  br label %534

558:                                              ; preds = %534
  br label %559

559:                                              ; preds = %558, %517
  br label %560

560:                                              ; preds = %559, %360
  %561 = load i32, i32* %15, align 4
  %562 = zext i32 %561 to i64
  %563 = load i32, i32* %16, align 4
  %564 = zext i32 %563 to i64
  %565 = load i64, i64* @MAX_OP_SIZE, align 8
  %566 = sub i64 %564, %565
  %567 = icmp uge i64 %562, %566
  br i1 %567, label %568, label %605

568:                                              ; preds = %560
  %569 = load i8*, i8** %25, align 8
  store i8* %569, i8** %33, align 8
  %570 = load i32, i32* %16, align 4
  %571 = mul i32 %570, 3
  %572 = udiv i32 %571, 2
  store i32 %572, i32* %16, align 4
  %573 = load i64, i64* %13, align 8
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %575, label %586

575:                                              ; preds = %568
  %576 = load i32, i32* %16, align 4
  %577 = zext i32 %576 to i64
  %578 = load i64, i64* %13, align 8
  %579 = icmp uge i64 %577, %578
  br i1 %579, label %580, label %586

580:                                              ; preds = %575
  %581 = load i64, i64* %13, align 8
  %582 = load i64, i64* @MAX_OP_SIZE, align 8
  %583 = add i64 %581, %582
  %584 = add i64 %583, 1
  %585 = trunc i64 %584 to i32
  store i32 %585, i32* %16, align 4
  br label %586

586:                                              ; preds = %580, %575, %568
  %587 = load i64, i64* %13, align 8
  %588 = icmp ne i64 %587, 0
  br i1 %588, label %589, label %595

589:                                              ; preds = %586
  %590 = load i32, i32* %15, align 4
  %591 = zext i32 %590 to i64
  %592 = load i64, i64* %13, align 8
  %593 = icmp ugt i64 %591, %592
  br i1 %593, label %594, label %595

594:                                              ; preds = %589
  br label %606

595:                                              ; preds = %589, %586
  %596 = load i8*, i8** %25, align 8
  %597 = load i32, i32* %16, align 4
  %598 = call i8* @git__realloc(i8* %596, i32 %597)
  store i8* %598, i8** %25, align 8
  %599 = load i8*, i8** %25, align 8
  %600 = icmp ne i8* %599, null
  br i1 %600, label %604, label %601

601:                                              ; preds = %595
  %602 = load i8*, i8** %33, align 8
  %603 = call i32 @git__free(i8* %602)
  store i32 -1, i32* %7, align 4
  br label %639

604:                                              ; preds = %595
  br label %605

605:                                              ; preds = %604, %560
  br label %184

606:                                              ; preds = %594, %184
  %607 = load i32, i32* %20, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %619

609:                                              ; preds = %606
  %610 = load i32, i32* %20, align 4
  %611 = trunc i32 %610 to i8
  %612 = load i8*, i8** %25, align 8
  %613 = load i32, i32* %15, align 4
  %614 = load i32, i32* %20, align 4
  %615 = sub i32 %613, %614
  %616 = sub i32 %615, 1
  %617 = zext i32 %616 to i64
  %618 = getelementptr inbounds i8, i8* %612, i64 %617
  store i8 %611, i8* %618, align 1
  br label %619

619:                                              ; preds = %609, %606
  %620 = load i64, i64* %13, align 8
  %621 = icmp ne i64 %620, 0
  br i1 %621, label %622, label %633

622:                                              ; preds = %619
  %623 = load i32, i32* %15, align 4
  %624 = zext i32 %623 to i64
  %625 = load i64, i64* %13, align 8
  %626 = icmp ugt i64 %624, %625
  br i1 %626, label %627, label %633

627:                                              ; preds = %622
  %628 = load i32, i32* @GIT_ERROR_NOMEMORY, align 4
  %629 = call i32 @git_error_set(i32 %628, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %630 = load i8*, i8** %25, align 8
  %631 = call i32 @git__free(i8* %630)
  %632 = load i32, i32* @GIT_EBUFS, align 4
  store i32 %632, i32* %7, align 4
  br label %639

633:                                              ; preds = %622, %619
  %634 = load i32, i32* %15, align 4
  %635 = zext i32 %634 to i64
  %636 = load i64*, i64** %9, align 8
  store i64 %635, i64* %636, align 8
  %637 = load i8*, i8** %25, align 8
  %638 = load i8**, i8*** %8, align 8
  store i8* %637, i8** %638, align 8
  store i32 0, i32* %7, align 4
  br label %639

639:                                              ; preds = %633, %627, %601, %59, %41
  %640 = load i32, i32* %7, align 4
  ret i32 %640
}

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i8* @git__malloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i8* @git__realloc(i8*, i32) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
