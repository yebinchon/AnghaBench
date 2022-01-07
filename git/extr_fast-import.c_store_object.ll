; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_store_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_store_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 (i32, i32*)*, i32 (i32*, i8*, i64)*, i32 (i32*)* }
%struct.strbuf = type { i64, i8* }
%struct.last_object = type { i64, i32, %struct.strbuf, i64 }
%struct.object_id = type { i32 }
%struct.object_entry = type { i32, i64, %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i8*, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"%s %lu\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_10__* null, align 8
@duplicate_count_by_type = common dso_local global i32* null, align 8
@the_repository = common dso_local global i32 0, align 4
@MAX_PACK_ID = common dso_local global i8* null, align 8
@max_depth = common dso_local global i64 0, align 8
@delta_count_attempts_by_type = common dso_local global i32* null, align 8
@pack_compression_level = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8
@max_packsize = common dso_local global i64 0, align 8
@pack_size = common dso_local global i64 0, align 8
@PACK_SIZE_THRESHOLD = common dso_local global i64 0, align 8
@pack_id = common dso_local global i8* null, align 8
@object_count = common dso_local global i32 0, align 4
@object_count_by_type = common dso_local global i32* null, align 8
@pack_file = common dso_local global i32 0, align 4
@delta_count_by_type = common dso_local global i32* null, align 8
@OBJ_OFS_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.strbuf*, %struct.last_object*, %struct.object_id*, i64)* @store_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_object(i32 %0, %struct.strbuf* %1, %struct.last_object* %2, %struct.object_id* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca %struct.last_object*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.object_entry*, align 8
  %15 = alloca [96 x i8], align 16
  %16 = alloca %struct.object_id, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.strbuf* %1, %struct.strbuf** %8, align 8
  store %struct.last_object* %2, %struct.last_object** %9, align 8
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store i64 %4, i64* %11, align 8
  %23 = getelementptr inbounds [96 x i8], [96 x i8]* %15, i64 0, i64 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @type_name(i32 %24)
  %26 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @xsnprintf(i8* %23, i32 96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %28)
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %17, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @the_hash_algo, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load i32 (i32*)*, i32 (i32*)** %33, align 8
  %35 = call i32 %34(i32* %19)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @the_hash_algo, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %37, align 8
  %39 = getelementptr inbounds [96 x i8], [96 x i8]* %15, i64 0, i64 0
  %40 = load i64, i64* %17, align 8
  %41 = call i32 %38(i32* %19, i8* %39, i64 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @the_hash_algo, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %43, align 8
  %45 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 %44(i32* %19, i8* %47, i64 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @the_hash_algo, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32 (i32, i32*)*, i32 (i32, i32*)** %53, align 8
  %55 = getelementptr inbounds %struct.object_id, %struct.object_id* %16, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %54(i32 %56, i32* %19)
  %58 = load %struct.object_id*, %struct.object_id** %10, align 8
  %59 = icmp ne %struct.object_id* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %5
  %61 = load %struct.object_id*, %struct.object_id** %10, align 8
  %62 = call i32 @oidcpy(%struct.object_id* %61, %struct.object_id* %16)
  br label %63

63:                                               ; preds = %60, %5
  %64 = call %struct.object_entry* @insert_object(%struct.object_id* %16)
  store %struct.object_entry* %64, %struct.object_entry** %14, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %70 = call i32 @insert_mark(i64 %68, %struct.object_entry* %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %73 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32*, i32** @duplicate_count_by_type, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  store i32 1, i32* %6, align 4
  br label %419

84:                                               ; preds = %71
  %85 = getelementptr inbounds %struct.object_id, %struct.object_id* %16, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @the_repository, align 4
  %88 = call i32 @get_all_packs(i32 %87)
  %89 = call i64 @find_sha1_pack(i32 %86, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %94 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i8*, i8** @MAX_PACK_ID, align 8
  %96 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %97 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %99 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load i32*, i32** @duplicate_count_by_type, align 8
  %102 = load i32, i32* %7, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  store i32 1, i32* %6, align 4
  br label %419

107:                                              ; preds = %84
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.last_object*, %struct.last_object** %9, align 8
  %110 = icmp ne %struct.last_object* %109, null
  br i1 %110, label %111, label %166

111:                                              ; preds = %108
  %112 = load %struct.last_object*, %struct.last_object** %9, align 8
  %113 = getelementptr inbounds %struct.last_object, %struct.last_object* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %166

117:                                              ; preds = %111
  %118 = load %struct.last_object*, %struct.last_object** %9, align 8
  %119 = getelementptr inbounds %struct.last_object, %struct.last_object* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %166

123:                                              ; preds = %117
  %124 = load %struct.last_object*, %struct.last_object** %9, align 8
  %125 = getelementptr inbounds %struct.last_object, %struct.last_object* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @max_depth, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %166

129:                                              ; preds = %123
  %130 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %131 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** @the_hash_algo, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ugt i64 %132, %135
  br i1 %136, label %137, label %166

137:                                              ; preds = %129
  %138 = load i32*, i32** @delta_count_attempts_by_type, align 8
  %139 = load i32, i32* %7, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load %struct.last_object*, %struct.last_object** %9, align 8
  %145 = getelementptr inbounds %struct.last_object, %struct.last_object* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.last_object*, %struct.last_object** %9, align 8
  %149 = getelementptr inbounds %struct.last_object, %struct.last_object* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %153 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %156 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %159 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** @the_hash_algo, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub i64 %160, %163
  %165 = call i8* @diff_delta(i8* %147, i64 %151, i8* %154, i64 %157, i64* %18, i64 %164)
  store i8* %165, i8** %13, align 8
  br label %167

166:                                              ; preds = %129, %123, %117, %111, %108
  store i8* null, i8** %13, align 8
  br label %167

167:                                              ; preds = %166, %137
  %168 = load i32, i32* @pack_compression_level, align 4
  %169 = call i32 @git_deflate_init(%struct.TYPE_9__* %20, i32 %168)
  %170 = load i8*, i8** %13, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i8*, i8** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  store i8* %173, i8** %174, align 8
  %175 = load i64, i64* %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i64 %175, i64* %176, align 8
  br label %186

177:                                              ; preds = %167
  %178 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %179 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  store i8* %180, i8** %181, align 8
  %182 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %183 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i64 %184, i64* %185, align 8
  br label %186

186:                                              ; preds = %177, %172
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i8* @git_deflate_bound(%struct.TYPE_9__* %20, i64 %188)
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store i8* %189, i8** %190, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = call i8* @xmalloc(i8* %192)
  store i8* %193, i8** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  store i8* %193, i8** %194, align 8
  br label %195

195:                                              ; preds = %200, %186
  %196 = load i32, i32* @Z_FINISH, align 4
  %197 = call i64 @git_deflate(%struct.TYPE_9__* %20, i32 %196)
  %198 = load i64, i64* @Z_OK, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %195

201:                                              ; preds = %195
  %202 = call i32 @git_deflate_end(%struct.TYPE_9__* %20)
  %203 = load i64, i64* @max_packsize, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %201
  %206 = load i64, i64* @pack_size, align 8
  %207 = load i64, i64* @PACK_SIZE_THRESHOLD, align 8
  %208 = add nsw i64 %206, %207
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %208, %210
  %212 = load i64, i64* @max_packsize, align 8
  %213 = icmp sgt i64 %211, %212
  br i1 %213, label %223, label %214

214:                                              ; preds = %205, %201
  %215 = load i64, i64* @pack_size, align 8
  %216 = load i64, i64* @PACK_SIZE_THRESHOLD, align 8
  %217 = add nsw i64 %215, %216
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %217, %219
  %221 = load i64, i64* @pack_size, align 8
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %223, label %262

223:                                              ; preds = %214, %205
  %224 = load i8*, i8** @pack_id, align 8
  %225 = getelementptr i8, i8* %224, i64 1
  %226 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %227 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %226, i32 0, i32 3
  store i8* %225, i8** %227, align 8
  %228 = call i32 (...) @cycle_packfile()
  %229 = load i8*, i8** %13, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %261

231:                                              ; preds = %223
  %232 = load i8*, i8** %13, align 8
  %233 = call i32 @FREE_AND_NULL(i8* %232)
  %234 = load i32, i32* @pack_compression_level, align 4
  %235 = call i32 @git_deflate_init(%struct.TYPE_9__* %20, i32 %234)
  %236 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %237 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  store i8* %238, i8** %239, align 8
  %240 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %241 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i64 %242, i64* %243, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = call i8* @git_deflate_bound(%struct.TYPE_9__* %20, i64 %245)
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store i8* %246, i8** %247, align 8
  %248 = load i8*, i8** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %250 = load i8*, i8** %249, align 8
  %251 = call i8* @xrealloc(i8* %248, i8* %250)
  store i8* %251, i8** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  store i8* %251, i8** %252, align 8
  br label %253

253:                                              ; preds = %258, %231
  %254 = load i32, i32* @Z_FINISH, align 4
  %255 = call i64 @git_deflate(%struct.TYPE_9__* %20, i32 %254)
  %256 = load i64, i64* @Z_OK, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  br label %253

259:                                              ; preds = %253
  %260 = call i32 @git_deflate_end(%struct.TYPE_9__* %20)
  br label %261

261:                                              ; preds = %259, %223
  br label %262

262:                                              ; preds = %261, %214
  %263 = load i32, i32* %7, align 4
  %264 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %265 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load i8*, i8** @pack_id, align 8
  %267 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %268 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %267, i32 0, i32 3
  store i8* %266, i8** %268, align 8
  %269 = load i64, i64* @pack_size, align 8
  %270 = trunc i64 %269 to i32
  %271 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %272 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  store i32 %270, i32* %273, align 8
  %274 = load i32, i32* @object_count, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* @object_count, align 4
  %276 = load i32*, i32** @object_count_by_type, align 8
  %277 = load i32, i32* %7, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 4
  %282 = load i32, i32* @pack_file, align 4
  %283 = call i32 @crc32_begin(i32 %282)
  %284 = load i8*, i8** %13, align 8
  %285 = icmp ne i8* %284, null
  br i1 %285, label %286, label %353

286:                                              ; preds = %262
  %287 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %288 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.last_object*, %struct.last_object** %9, align 8
  %292 = getelementptr inbounds %struct.last_object, %struct.last_object* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = sub nsw i32 %290, %293
  store i32 %294, i32* %21, align 4
  store i32 95, i32* %22, align 4
  %295 = load i32*, i32** @delta_count_by_type, align 8
  %296 = load i32, i32* %7, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 4
  %301 = load %struct.last_object*, %struct.last_object** %9, align 8
  %302 = getelementptr inbounds %struct.last_object, %struct.last_object* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %303, 1
  %305 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %306 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %305, i32 0, i32 1
  store i64 %304, i64* %306, align 8
  %307 = getelementptr inbounds [96 x i8], [96 x i8]* %15, i64 0, i64 0
  %308 = load i32, i32* @OBJ_OFS_DELTA, align 4
  %309 = load i64, i64* %18, align 8
  %310 = call i64 @encode_in_pack_object_header(i8* %307, i32 96, i32 %308, i64 %309)
  store i64 %310, i64* %17, align 8
  %311 = load i32, i32* @pack_file, align 4
  %312 = getelementptr inbounds [96 x i8], [96 x i8]* %15, i64 0, i64 0
  %313 = load i64, i64* %17, align 8
  %314 = call i32 @hashwrite(i32 %311, i8* %312, i64 %313)
  %315 = load i64, i64* %17, align 8
  %316 = load i64, i64* @pack_size, align 8
  %317 = add i64 %316, %315
  store i64 %317, i64* @pack_size, align 8
  %318 = load i32, i32* %21, align 4
  %319 = and i32 %318, 127
  %320 = trunc i32 %319 to i8
  %321 = load i32, i32* %22, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds [96 x i8], [96 x i8]* %15, i64 0, i64 %322
  store i8 %320, i8* %323, align 1
  br label %324

324:                                              ; preds = %328, %286
  %325 = load i32, i32* %21, align 4
  %326 = ashr i32 %325, 7
  store i32 %326, i32* %21, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %338

328:                                              ; preds = %324
  %329 = load i32, i32* %21, align 4
  %330 = add nsw i32 %329, -1
  store i32 %330, i32* %21, align 4
  %331 = and i32 %330, 127
  %332 = or i32 128, %331
  %333 = trunc i32 %332 to i8
  %334 = load i32, i32* %22, align 4
  %335 = add i32 %334, -1
  store i32 %335, i32* %22, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds [96 x i8], [96 x i8]* %15, i64 0, i64 %336
  store i8 %333, i8* %337, align 1
  br label %324

338:                                              ; preds = %324
  %339 = load i32, i32* @pack_file, align 4
  %340 = getelementptr inbounds [96 x i8], [96 x i8]* %15, i64 0, i64 0
  %341 = load i32, i32* %22, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds i8, i8* %340, i64 %342
  %344 = load i32, i32* %22, align 4
  %345 = zext i32 %344 to i64
  %346 = sub i64 96, %345
  %347 = call i32 @hashwrite(i32 %339, i8* %343, i64 %346)
  %348 = load i32, i32* %22, align 4
  %349 = zext i32 %348 to i64
  %350 = sub i64 96, %349
  %351 = load i64, i64* @pack_size, align 8
  %352 = add i64 %351, %350
  store i64 %352, i64* @pack_size, align 8
  br label %369

353:                                              ; preds = %262
  %354 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %355 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %354, i32 0, i32 1
  store i64 0, i64* %355, align 8
  %356 = getelementptr inbounds [96 x i8], [96 x i8]* %15, i64 0, i64 0
  %357 = load i32, i32* %7, align 4
  %358 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %359 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = call i64 @encode_in_pack_object_header(i8* %356, i32 96, i32 %357, i64 %360)
  store i64 %361, i64* %17, align 8
  %362 = load i32, i32* @pack_file, align 4
  %363 = getelementptr inbounds [96 x i8], [96 x i8]* %15, i64 0, i64 0
  %364 = load i64, i64* %17, align 8
  %365 = call i32 @hashwrite(i32 %362, i8* %363, i64 %364)
  %366 = load i64, i64* %17, align 8
  %367 = load i64, i64* @pack_size, align 8
  %368 = add i64 %367, %366
  store i64 %368, i64* @pack_size, align 8
  br label %369

369:                                              ; preds = %353, %338
  %370 = load i32, i32* @pack_file, align 4
  %371 = load i8*, i8** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @hashwrite(i32 %370, i8* %371, i64 %373)
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @pack_size, align 8
  %378 = add nsw i64 %377, %376
  store i64 %378, i64* @pack_size, align 8
  %379 = load i32, i32* @pack_file, align 4
  %380 = call i32 @crc32_end(i32 %379)
  %381 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %382 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 1
  store i32 %380, i32* %383, align 4
  %384 = load i8*, i8** %12, align 8
  %385 = call i32 @free(i8* %384)
  %386 = load i8*, i8** %13, align 8
  %387 = call i32 @free(i8* %386)
  %388 = load %struct.last_object*, %struct.last_object** %9, align 8
  %389 = icmp ne %struct.last_object* %388, null
  br i1 %389, label %390, label %418

390:                                              ; preds = %369
  %391 = load %struct.last_object*, %struct.last_object** %9, align 8
  %392 = getelementptr inbounds %struct.last_object, %struct.last_object* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %401

395:                                              ; preds = %390
  %396 = load %struct.last_object*, %struct.last_object** %9, align 8
  %397 = getelementptr inbounds %struct.last_object, %struct.last_object* %396, i32 0, i32 2
  %398 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %399 = bitcast %struct.strbuf* %397 to i8*
  %400 = bitcast %struct.strbuf* %398 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %399, i8* align 8 %400, i64 16, i1 false)
  br label %406

401:                                              ; preds = %390
  %402 = load %struct.last_object*, %struct.last_object** %9, align 8
  %403 = getelementptr inbounds %struct.last_object, %struct.last_object* %402, i32 0, i32 2
  %404 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %405 = call i32 @strbuf_swap(%struct.strbuf* %403, %struct.strbuf* %404)
  br label %406

406:                                              ; preds = %401, %395
  %407 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %408 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.last_object*, %struct.last_object** %9, align 8
  %412 = getelementptr inbounds %struct.last_object, %struct.last_object* %411, i32 0, i32 1
  store i32 %410, i32* %412, align 8
  %413 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  %414 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.last_object*, %struct.last_object** %9, align 8
  %417 = getelementptr inbounds %struct.last_object, %struct.last_object* %416, i32 0, i32 0
  store i64 %415, i64* %417, align 8
  br label %418

418:                                              ; preds = %406, %369
  store i32 0, i32* %6, align 4
  br label %419

419:                                              ; preds = %418, %91, %77
  %420 = load i32, i32* %6, align 4
  ret i32 %420
}

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32, i64) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local %struct.object_entry* @insert_object(%struct.object_id*) #1

declare dso_local i32 @insert_mark(i64, %struct.object_entry*) #1

declare dso_local i64 @find_sha1_pack(i32, i32) #1

declare dso_local i32 @get_all_packs(i32) #1

declare dso_local i8* @diff_delta(i8*, i64, i8*, i64, i64*, i64) #1

declare dso_local i32 @git_deflate_init(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @git_deflate_bound(%struct.TYPE_9__*, i64) #1

declare dso_local i8* @xmalloc(i8*) #1

declare dso_local i64 @git_deflate(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @git_deflate_end(%struct.TYPE_9__*) #1

declare dso_local i32 @cycle_packfile(...) #1

declare dso_local i32 @FREE_AND_NULL(i8*) #1

declare dso_local i8* @xrealloc(i8*, i8*) #1

declare dso_local i32 @crc32_begin(i32) #1

declare dso_local i64 @encode_in_pack_object_header(i8*, i32, i32, i64) #1

declare dso_local i32 @hashwrite(i32, i8*, i64) #1

declare dso_local i32 @crc32_end(i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_swap(%struct.strbuf*, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
