; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_try_delta.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_try_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.unpacked = type { i64, i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64, i8*, %struct.TYPE_7__*, i32 }

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"inconsistent target object length\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"inconsistent source object length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.unpacked*, %struct.unpacked*, i64, i64*, i32*)* @try_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_delta(%struct.TYPE_8__* %0, %struct.unpacked* %1, %struct.unpacked* %2, i64 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.unpacked*, align 8
  %10 = alloca %struct.unpacked*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.unpacked* %1, %struct.unpacked** %9, align 8
  store %struct.unpacked* %2, %struct.unpacked** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %27 = load %struct.unpacked*, %struct.unpacked** %9, align 8
  %28 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %27, i32 0, i32 3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %14, align 8
  %30 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %31 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %30, i32 0, i32 3
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %15, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32*, i32** %13, align 8
  store i32 -1, i32* %41, align 4
  store i32 0, i32* %7, align 4
  br label %343

42:                                               ; preds = %6
  %43 = load i32*, i32** %13, align 8
  store i32 0, i32* %43, align 4
  %44 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %45 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp uge i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %343

50:                                               ; preds = %42
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %17, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = load i64, i64* %17, align 8
  %60 = udiv i64 %59, 2
  %61 = sub i64 %60, 20
  store i64 %61, i64* %21, align 8
  store i64 1, i64* %23, align 8
  br label %69

62:                                               ; preds = %50
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %21, align 8
  %66 = load %struct.unpacked*, %struct.unpacked** %9, align 8
  %67 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %23, align 8
  br label %69

69:                                               ; preds = %62, %58
  %70 = load i64, i64* %21, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %73 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %71, %74
  %76 = mul i64 %70, %75
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %23, align 8
  %79 = sub i64 %77, %78
  %80 = add i64 %79, 1
  %81 = udiv i64 %76, %80
  store i64 %81, i64* %21, align 8
  %82 = load i64, i64* %21, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %343

85:                                               ; preds = %69
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %18, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %17, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i64, i64* %17, align 8
  %94 = load i64, i64* %18, align 8
  %95 = sub i64 %93, %94
  br label %97

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %92
  %98 = phi i64 [ %95, %92 ], [ 0, %96 ]
  store i64 %98, i64* %20, align 8
  %99 = load i64, i64* %20, align 8
  %100 = load i64, i64* %21, align 8
  %101 = icmp uge i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %343

103:                                              ; preds = %97
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %18, align 8
  %106 = udiv i64 %105, 32
  %107 = icmp ult i64 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  br label %343

109:                                              ; preds = %103
  %110 = load %struct.unpacked*, %struct.unpacked** %9, align 8
  %111 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %154, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 5
  %120 = call i64 @git_odb_read(i32** %16, i32 %117, i32* %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 -1, i32* %7, align 4
  br label %343

123:                                              ; preds = %114
  %124 = load i32*, i32** %16, align 8
  %125 = call i64 @git_odb_object_size(i32* %124)
  store i64 %125, i64* %22, align 8
  %126 = load i64, i64* %22, align 8
  %127 = call i8* @git__malloc(i64 %126)
  %128 = load %struct.unpacked*, %struct.unpacked** %9, align 8
  %129 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load %struct.unpacked*, %struct.unpacked** %9, align 8
  %131 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %132)
  %134 = load %struct.unpacked*, %struct.unpacked** %9, align 8
  %135 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i32*, i32** %16, align 8
  %138 = call i32 @git_odb_object_data(i32* %137)
  %139 = load i64, i64* %22, align 8
  %140 = call i32 @memcpy(i8* %136, i32 %138, i64 %139)
  %141 = load i32*, i32** %16, align 8
  %142 = call i32 @git_odb_object_free(i32* %141)
  %143 = load i64, i64* %22, align 8
  %144 = load i64, i64* %17, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %123
  %147 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %148 = call i32 @git_error_set(i32 %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %343

149:                                              ; preds = %123
  %150 = load i64, i64* %22, align 8
  %151 = load i64*, i64** %12, align 8
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, %150
  store i64 %153, i64* %151, align 8
  br label %154

154:                                              ; preds = %149, %109
  %155 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %156 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %203, label %159

159:                                              ; preds = %154
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 5
  %165 = call i64 @git_odb_read(i32** %16, i32 %162, i32* %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %159
  %168 = load i32*, i32** %16, align 8
  %169 = call i64 @git_odb_object_size(i32* %168)
  store i64 %169, i64* %25, align 8
  %170 = call i32 @git__is_ulong(i64 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167, %159
  store i32 -1, i32* %7, align 4
  br label %343

173:                                              ; preds = %167
  %174 = load i64, i64* %25, align 8
  store i64 %174, i64* %22, align 8
  %175 = load i64, i64* %22, align 8
  %176 = call i8* @git__malloc(i64 %175)
  %177 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %178 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %180 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %181)
  %183 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %184 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = load i32*, i32** %16, align 8
  %187 = call i32 @git_odb_object_data(i32* %186)
  %188 = load i64, i64* %22, align 8
  %189 = call i32 @memcpy(i8* %185, i32 %187, i64 %188)
  %190 = load i32*, i32** %16, align 8
  %191 = call i32 @git_odb_object_free(i32* %190)
  %192 = load i64, i64* %22, align 8
  %193 = load i64, i64* %18, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %173
  %196 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %197 = call i32 @git_error_set(i32 %196, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %343

198:                                              ; preds = %173
  %199 = load i64, i64* %22, align 8
  %200 = load i64*, i64** %12, align 8
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, %199
  store i64 %202, i64* %200, align 8
  br label %203

203:                                              ; preds = %198, %154
  %204 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %205 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %226, label %208

208:                                              ; preds = %203
  %209 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %210 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %209, i32 0, i32 2
  %211 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %212 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = load i64, i64* %18, align 8
  %215 = call i64 @git_delta_index_init(i32* %210, i8* %213, i64 %214)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  store i32 0, i32* %7, align 4
  br label %343

218:                                              ; preds = %208
  %219 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %220 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @git_delta_index_size(i32 %221)
  %223 = load i64*, i64** %12, align 8
  %224 = load i64, i64* %223, align 8
  %225 = add i64 %224, %222
  store i64 %225, i64* %223, align 8
  br label %226

226:                                              ; preds = %218, %203
  %227 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %228 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.unpacked*, %struct.unpacked** %9, align 8
  %231 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = load i64, i64* %17, align 8
  %234 = load i64, i64* %21, align 8
  %235 = call i64 @git_delta_create_from_index(i8** %24, i64* %19, i32 %229, i8* %232, i64 %233, i64 %234)
  %236 = icmp slt i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %226
  store i32 0, i32* %7, align 4
  br label %343

238:                                              ; preds = %226
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 4
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %240, align 8
  %242 = icmp ne %struct.TYPE_7__* %241, null
  br i1 %242, label %243, label %262

243:                                              ; preds = %238
  %244 = load i64, i64* %19, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = icmp eq i64 %244, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %243
  %250 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %251 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = add i64 %252, 1
  %254 = load %struct.unpacked*, %struct.unpacked** %9, align 8
  %255 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp uge i64 %253, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %249
  %259 = load i8*, i8** %24, align 8
  %260 = call i32 @git__free(i8* %259)
  store i32 0, i32* %7, align 4
  br label %343

261:                                              ; preds = %249, %243
  br label %262

262:                                              ; preds = %261, %238
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %264 = call i32 @git_packbuilder__cache_lock(%struct.TYPE_8__* %263)
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 3
  %267 = load i8*, i8** %266, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %292

269:                                              ; preds = %262
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 3
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @git__free(i8* %272)
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = icmp uge i64 %276, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @assert(i32 %281)
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = sub i64 %288, %285
  store i64 %289, i64* %287, align 8
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 3
  store i8* null, i8** %291, align 8
  br label %292

292:                                              ; preds = %269, %262
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %294 = load i64, i64* %18, align 8
  %295 = load i64, i64* %17, align 8
  %296 = load i64, i64* %19, align 8
  %297 = call i64 @delta_cacheable(%struct.TYPE_8__* %293, i64 %294, i64 %295, i64 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %324

299:                                              ; preds = %292
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* %19, align 8
  %306 = call i32 @git__add_sizet_overflow(i64* %301, i64 %304, i64 %305)
  store i32 %306, i32* %26, align 4
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %308 = call i32 @git_packbuilder__cache_unlock(%struct.TYPE_8__* %307)
  %309 = load i32, i32* %26, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %299
  %312 = load i8*, i8** %24, align 8
  %313 = call i32 @git__free(i8* %312)
  store i32 -1, i32* %7, align 4
  br label %343

314:                                              ; preds = %299
  %315 = load i8*, i8** %24, align 8
  %316 = load i64, i64* %19, align 8
  %317 = call i8* @git__realloc(i8* %315, i64 %316)
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 3
  store i8* %317, i8** %319, align 8
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 3
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %322)
  br label %329

324:                                              ; preds = %292
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %326 = call i32 @git_packbuilder__cache_unlock(%struct.TYPE_8__* %325)
  %327 = load i8*, i8** %24, align 8
  %328 = call i32 @git__free(i8* %327)
  br label %329

329:                                              ; preds = %324, %314
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 4
  store %struct.TYPE_7__* %330, %struct.TYPE_7__** %332, align 8
  %333 = load i64, i64* %19, align 8
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 2
  store i64 %333, i64* %335, align 8
  %336 = load %struct.unpacked*, %struct.unpacked** %10, align 8
  %337 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = add i64 %338, 1
  %340 = load %struct.unpacked*, %struct.unpacked** %9, align 8
  %341 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %340, i32 0, i32 0
  store i64 %339, i64* %341, align 8
  %342 = load i32*, i32** %13, align 8
  store i32 1, i32* %342, align 4
  store i32 0, i32* %7, align 4
  br label %343

343:                                              ; preds = %329, %311, %258, %237, %217, %195, %172, %146, %122, %108, %102, %84, %49, %40
  %344 = load i32, i32* %7, align 4
  ret i32 %344
}

declare dso_local i64 @git_odb_read(i32**, i32, i32*) #1

declare dso_local i64 @git_odb_object_size(i32*) #1

declare dso_local i8* @git__malloc(i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @git_odb_object_data(i32*) #1

declare dso_local i32 @git_odb_object_free(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git__is_ulong(i64) #1

declare dso_local i64 @git_delta_index_init(i32*, i8*, i64) #1

declare dso_local i64 @git_delta_index_size(i32) #1

declare dso_local i64 @git_delta_create_from_index(i8**, i64*, i32, i8*, i64, i64) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @git_packbuilder__cache_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @delta_cacheable(%struct.TYPE_8__*, i64, i64, i64) #1

declare dso_local i32 @git__add_sizet_overflow(i64*, i64, i64) #1

declare dso_local i32 @git_packbuilder__cache_unlock(%struct.TYPE_8__*) #1

declare dso_local i8* @git__realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
