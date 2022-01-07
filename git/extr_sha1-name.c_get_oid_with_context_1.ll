; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_get_oid_with_context_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_get_oid_with_context_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i32 }
%struct.object_id = type { i32 }
%struct.object_context = type { i8*, i32, i32 }
%struct.handle_one_ref_cb = type { %struct.commit_list**, %struct.repository* }
%struct.commit_list = type { i32 }

@GET_OID_ONLY_TO_DIE = common dso_local global i32 0, align 4
@GET_OID_QUIETLY = common dso_local global i32 0, align 4
@S_IFINVALID = common dso_local global i32 0, align 4
@handle_one_ref = common dso_local global i32 0, align 4
@GET_OID_RECORD_PATH = common dso_local global i32 0, align 4
@GET_OID_DISAMBIGUATORS = common dso_local global i32 0, align 4
@GET_OID_TREEISH = common dso_local global i32 0, align 4
@GET_OID_FOLLOW_SYMLINKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid object name '%.*s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32, i8*, %struct.object_id*, %struct.object_context*)* @get_oid_with_context_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_oid_with_context_1(%struct.repository* %0, i8* %1, i32 %2, i8* %3, %struct.object_id* %4, %struct.object_context* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.repository*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca %struct.object_context*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.cache_entry*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.handle_one_ref_cb, align 8
  %24 = alloca %struct.commit_list*, align 8
  %25 = alloca %struct.object_id, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.object_id* %4, %struct.object_id** %12, align 8
  store %struct.object_context* %5, %struct.object_context** %13, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @GET_OID_ONLY_TO_DIE, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %6
  %38 = load i32, i32* @GET_OID_QUIETLY, align 4
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %37, %6
  %42 = load %struct.object_context*, %struct.object_context** %13, align 8
  %43 = call i32 @memset(%struct.object_context* %42, i32 0, i32 16)
  %44 = load i32, i32* @S_IFINVALID, align 4
  %45 = load %struct.object_context*, %struct.object_context** %13, align 8
  %46 = getelementptr inbounds %struct.object_context, %struct.object_context* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.object_context*, %struct.object_context** %13, align 8
  %48 = getelementptr inbounds %struct.object_context, %struct.object_context* %47, i32 0, i32 2
  %49 = call i32 @strbuf_init(i32* %48, i32 0)
  %50 = load %struct.repository*, %struct.repository** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load %struct.object_id*, %struct.object_id** %12, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @get_oid_1(%struct.repository* %50, i8* %51, i32 %52, %struct.object_id* %53, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %7, align 4
  br label %400

60:                                               ; preds = %41
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 58
  br i1 %65, label %66, label %265

66:                                               ; preds = %60
  store i32 0, i32* %19, align 4
  store i8* null, i8** %21, align 8
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %99, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %16, align 4
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %99

72:                                               ; preds = %69
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 47
  br i1 %77, label %78, label %99

78:                                               ; preds = %72
  store %struct.commit_list* null, %struct.commit_list** %24, align 8
  %79 = load %struct.repository*, %struct.repository** %8, align 8
  %80 = getelementptr inbounds %struct.handle_one_ref_cb, %struct.handle_one_ref_cb* %23, i32 0, i32 1
  store %struct.repository* %79, %struct.repository** %80, align 8
  %81 = getelementptr inbounds %struct.handle_one_ref_cb, %struct.handle_one_ref_cb* %23, i32 0, i32 0
  store %struct.commit_list** %24, %struct.commit_list*** %81, align 8
  %82 = load %struct.repository*, %struct.repository** %8, align 8
  %83 = getelementptr inbounds %struct.repository, %struct.repository* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @handle_one_ref, align 4
  %86 = call i32 @refs_for_each_ref(i32 %84, i32 %85, %struct.handle_one_ref_cb* %23)
  %87 = load %struct.repository*, %struct.repository** %8, align 8
  %88 = getelementptr inbounds %struct.repository, %struct.repository* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @handle_one_ref, align 4
  %91 = call i32 @refs_head_ref(i32 %89, i32 %90, %struct.handle_one_ref_cb* %23)
  %92 = call i32 @commit_list_sort_by_date(%struct.commit_list** %24)
  %93 = load %struct.repository*, %struct.repository** %8, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = load %struct.object_id*, %struct.object_id** %12, align 8
  %97 = load %struct.commit_list*, %struct.commit_list** %24, align 8
  %98 = call i32 @get_oid_oneline(%struct.repository* %93, i8* %95, %struct.object_id* %96, %struct.commit_list* %97)
  store i32 %98, i32* %7, align 4
  br label %400

99:                                               ; preds = %72, %69, %66
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %100, 3
  br i1 %101, label %120, label %102

102:                                              ; preds = %99
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 58
  br i1 %107, label %120, label %108

108:                                              ; preds = %102
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp slt i32 %112, 48
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp slt i32 51, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114, %108, %102, %99
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  store i8* %122, i8** %17, align 8
  br label %131

123:                                              ; preds = %114
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = sub nsw i32 %127, 48
  store i32 %128, i32* %19, align 4
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 3
  store i8* %130, i8** %17, align 8
  br label %131

131:                                              ; preds = %123, %120
  %132 = load %struct.repository*, %struct.repository** %8, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = call i8* @resolve_relative_path(%struct.repository* %132, i8* %133)
  store i8* %134, i8** %21, align 8
  %135 = load i8*, i8** %21, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %147, label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = load i8*, i8** %17, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sub nsw i64 %139, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %16, align 4
  br label %151

147:                                              ; preds = %131
  %148 = load i8*, i8** %21, align 8
  store i8* %148, i8** %17, align 8
  %149 = load i8*, i8** %17, align 8
  %150 = call i32 @strlen(i8* %149)
  store i32 %150, i32* %16, align 4
  br label %151

151:                                              ; preds = %147, %137
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @GET_OID_RECORD_PATH, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i8*, i8** %17, align 8
  %158 = call i8* @xstrdup(i8* %157)
  %159 = load %struct.object_context*, %struct.object_context** %13, align 8
  %160 = getelementptr inbounds %struct.object_context, %struct.object_context* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.repository*, %struct.repository** %8, align 8
  %163 = getelementptr inbounds %struct.repository, %struct.repository* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = icmp ne %struct.TYPE_2__* %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load %struct.repository*, %struct.repository** %8, align 8
  %168 = getelementptr inbounds %struct.repository, %struct.repository* %167, i32 0, i32 0
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load %struct.cache_entry**, %struct.cache_entry*** %170, align 8
  %172 = icmp ne %struct.cache_entry** %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %166, %161
  %174 = load %struct.repository*, %struct.repository** %8, align 8
  %175 = call i32 @repo_read_index(%struct.repository* %174)
  br label %176

176:                                              ; preds = %173, %166
  %177 = load %struct.repository*, %struct.repository** %8, align 8
  %178 = getelementptr inbounds %struct.repository, %struct.repository* %177, i32 0, i32 0
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i8*, i8** %17, align 8
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @index_name_pos(%struct.TYPE_2__* %179, i8* %180, i32 %181)
  store i32 %182, i32* %22, align 4
  %183 = load i32, i32* %22, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %176
  %186 = load i32, i32* %22, align 4
  %187 = sub nsw i32 0, %186
  %188 = sub nsw i32 %187, 1
  store i32 %188, i32* %22, align 4
  br label %189

189:                                              ; preds = %185, %176
  br label %190

190:                                              ; preds = %238, %189
  %191 = load i32, i32* %22, align 4
  %192 = load %struct.repository*, %struct.repository** %8, align 8
  %193 = getelementptr inbounds %struct.repository, %struct.repository* %192, i32 0, i32 0
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %191, %196
  br i1 %197, label %198, label %241

198:                                              ; preds = %190
  %199 = load %struct.repository*, %struct.repository** %8, align 8
  %200 = getelementptr inbounds %struct.repository, %struct.repository* %199, i32 0, i32 0
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  %203 = load %struct.cache_entry**, %struct.cache_entry*** %202, align 8
  %204 = load i32, i32* %22, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %203, i64 %205
  %207 = load %struct.cache_entry*, %struct.cache_entry** %206, align 8
  store %struct.cache_entry* %207, %struct.cache_entry** %20, align 8
  %208 = load %struct.cache_entry*, %struct.cache_entry** %20, align 8
  %209 = call i32 @ce_namelen(%struct.cache_entry* %208)
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %220, label %212

212:                                              ; preds = %198
  %213 = load %struct.cache_entry*, %struct.cache_entry** %20, align 8
  %214 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load i8*, i8** %17, align 8
  %217 = load i32, i32* %16, align 4
  %218 = call i64 @memcmp(i32 %215, i8* %216, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %212, %198
  br label %241

221:                                              ; preds = %212
  %222 = load %struct.cache_entry*, %struct.cache_entry** %20, align 8
  %223 = call i32 @ce_stage(%struct.cache_entry* %222)
  %224 = load i32, i32* %19, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %238

226:                                              ; preds = %221
  %227 = load %struct.object_id*, %struct.object_id** %12, align 8
  %228 = load %struct.cache_entry*, %struct.cache_entry** %20, align 8
  %229 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %228, i32 0, i32 1
  %230 = call i32 @oidcpy(%struct.object_id* %227, i32* %229)
  %231 = load %struct.cache_entry*, %struct.cache_entry** %20, align 8
  %232 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.object_context*, %struct.object_context** %13, align 8
  %235 = getelementptr inbounds %struct.object_context, %struct.object_context* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 8
  %236 = load i8*, i8** %21, align 8
  %237 = call i32 @free(i8* %236)
  store i32 0, i32* %7, align 4
  br label %400

238:                                              ; preds = %221
  %239 = load i32, i32* %22, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %22, align 4
  br label %190

241:                                              ; preds = %220, %190
  %242 = load i32, i32* %18, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %262

244:                                              ; preds = %241
  %245 = load i8*, i8** %9, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %244
  %251 = load i8*, i8** %9, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 47
  br i1 %255, label %256, label %262

256:                                              ; preds = %250
  %257 = load %struct.repository*, %struct.repository** %8, align 8
  %258 = load i32, i32* %19, align 4
  %259 = load i8*, i8** %11, align 8
  %260 = load i8*, i8** %17, align 8
  %261 = call i32 @diagnose_invalid_index_path(%struct.repository* %257, i32 %258, i8* %259, i8* %260)
  br label %262

262:                                              ; preds = %256, %250, %244, %241
  %263 = load i8*, i8** %21, align 8
  %264 = call i32 @free(i8* %263)
  store i32 -1, i32* %7, align 4
  br label %400

265:                                              ; preds = %60
  %266 = load i8*, i8** %9, align 8
  store i8* %266, i8** %17, align 8
  store i32 0, i32* %15, align 4
  br label %267

267:                                              ; preds = %302, %265
  %268 = load i8*, i8** %17, align 8
  %269 = load i8, i8* %268, align 1
  %270 = icmp ne i8 %269, 0
  br i1 %270, label %271, label %305

271:                                              ; preds = %267
  %272 = load i8*, i8** %17, align 8
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 123
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load i32, i32* %15, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %15, align 4
  br label %301

279:                                              ; preds = %271
  %280 = load i32, i32* %15, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %279
  %283 = load i8*, i8** %17, align 8
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 125
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i32, i32* %15, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %15, align 4
  br label %300

290:                                              ; preds = %282, %279
  %291 = load i32, i32* %15, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %299, label %293

293:                                              ; preds = %290
  %294 = load i8*, i8** %17, align 8
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp eq i32 %296, 58
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  br label %305

299:                                              ; preds = %293, %290
  br label %300

300:                                              ; preds = %299, %287
  br label %301

301:                                              ; preds = %300, %276
  br label %302

302:                                              ; preds = %301
  %303 = load i8*, i8** %17, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %17, align 8
  br label %267

305:                                              ; preds = %298, %267
  %306 = load i8*, i8** %17, align 8
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 58
  br i1 %309, label %310, label %398

310:                                              ; preds = %305
  %311 = load i8*, i8** %17, align 8
  %312 = load i8*, i8** %9, align 8
  %313 = ptrtoint i8* %311 to i64
  %314 = ptrtoint i8* %312 to i64
  %315 = sub i64 %313, %314
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %26, align 4
  %317 = load i32, i32* %10, align 4
  store i32 %317, i32* %27, align 4
  %318 = load i32, i32* @GET_OID_DISAMBIGUATORS, align 4
  %319 = xor i32 %318, -1
  %320 = load i32, i32* %27, align 4
  %321 = and i32 %320, %319
  store i32 %321, i32* %27, align 4
  %322 = load i32, i32* @GET_OID_TREEISH, align 4
  %323 = load i32, i32* %27, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %27, align 4
  %325 = load %struct.repository*, %struct.repository** %8, align 8
  %326 = load i8*, i8** %9, align 8
  %327 = load i32, i32* %26, align 4
  %328 = load i32, i32* %27, align 4
  %329 = call i32 @get_oid_1(%struct.repository* %325, i8* %326, i32 %327, %struct.object_id* %25, i32 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %389, label %331

331:                                              ; preds = %310
  %332 = load i8*, i8** %17, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 1
  store i8* %333, i8** %28, align 8
  store i8* null, i8** %29, align 8
  %334 = load %struct.repository*, %struct.repository** %8, align 8
  %335 = load i8*, i8** %28, align 8
  %336 = call i8* @resolve_relative_path(%struct.repository* %334, i8* %335)
  store i8* %336, i8** %29, align 8
  %337 = load i8*, i8** %29, align 8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %339, label %341

339:                                              ; preds = %331
  %340 = load i8*, i8** %29, align 8
  store i8* %340, i8** %28, align 8
  br label %341

341:                                              ; preds = %339, %331
  %342 = load i32, i32* %10, align 4
  %343 = load i32, i32* @GET_OID_FOLLOW_SYMLINKS, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %355

346:                                              ; preds = %341
  %347 = load %struct.repository*, %struct.repository** %8, align 8
  %348 = load i8*, i8** %28, align 8
  %349 = load %struct.object_id*, %struct.object_id** %12, align 8
  %350 = load %struct.object_context*, %struct.object_context** %13, align 8
  %351 = getelementptr inbounds %struct.object_context, %struct.object_context* %350, i32 0, i32 2
  %352 = load %struct.object_context*, %struct.object_context** %13, align 8
  %353 = getelementptr inbounds %struct.object_context, %struct.object_context* %352, i32 0, i32 1
  %354 = call i32 @get_tree_entry_follow_symlinks(%struct.repository* %347, %struct.object_id* %25, i8* %348, %struct.object_id* %349, i32* %351, i32* %353)
  store i32 %354, i32* %14, align 4
  br label %375

355:                                              ; preds = %341
  %356 = load %struct.repository*, %struct.repository** %8, align 8
  %357 = load i8*, i8** %28, align 8
  %358 = load %struct.object_id*, %struct.object_id** %12, align 8
  %359 = load %struct.object_context*, %struct.object_context** %13, align 8
  %360 = getelementptr inbounds %struct.object_context, %struct.object_context* %359, i32 0, i32 1
  %361 = call i32 @get_tree_entry(%struct.repository* %356, %struct.object_id* %25, i8* %357, %struct.object_id* %358, i32* %360)
  store i32 %361, i32* %14, align 4
  %362 = load i32, i32* %14, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %374

364:                                              ; preds = %355
  %365 = load i32, i32* %18, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %364
  %368 = load %struct.repository*, %struct.repository** %8, align 8
  %369 = load i8*, i8** %11, align 8
  %370 = load i8*, i8** %28, align 8
  %371 = load i8*, i8** %9, align 8
  %372 = load i32, i32* %26, align 4
  %373 = call i32 @diagnose_invalid_oid_path(%struct.repository* %368, i8* %369, i8* %370, %struct.object_id* %25, i8* %371, i32 %372)
  br label %374

374:                                              ; preds = %367, %364, %355
  br label %375

375:                                              ; preds = %374, %346
  %376 = load i32, i32* %10, align 4
  %377 = load i32, i32* @GET_OID_RECORD_PATH, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %375
  %381 = load i8*, i8** %28, align 8
  %382 = call i8* @xstrdup(i8* %381)
  %383 = load %struct.object_context*, %struct.object_context** %13, align 8
  %384 = getelementptr inbounds %struct.object_context, %struct.object_context* %383, i32 0, i32 0
  store i8* %382, i8** %384, align 8
  br label %385

385:                                              ; preds = %380, %375
  %386 = load i8*, i8** %29, align 8
  %387 = call i32 @free(i8* %386)
  %388 = load i32, i32* %14, align 4
  store i32 %388, i32* %7, align 4
  br label %400

389:                                              ; preds = %310
  %390 = load i32, i32* %18, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %389
  %393 = load i32, i32* %26, align 4
  %394 = load i8*, i8** %9, align 8
  %395 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %393, i8* %394)
  br label %396

396:                                              ; preds = %392, %389
  br label %397

397:                                              ; preds = %396
  br label %398

398:                                              ; preds = %397, %305
  %399 = load i32, i32* %14, align 4
  store i32 %399, i32* %7, align 4
  br label %400

400:                                              ; preds = %398, %385, %262, %226, %78, %58
  %401 = load i32, i32* %7, align 4
  ret i32 %401
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.object_context*, i32, i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @get_oid_1(%struct.repository*, i8*, i32, %struct.object_id*, i32) #1

declare dso_local i32 @refs_for_each_ref(i32, i32, %struct.handle_one_ref_cb*) #1

declare dso_local i32 @refs_head_ref(i32, i32, %struct.handle_one_ref_cb*) #1

declare dso_local i32 @commit_list_sort_by_date(%struct.commit_list**) #1

declare dso_local i32 @get_oid_oneline(%struct.repository*, i8*, %struct.object_id*, %struct.commit_list*) #1

declare dso_local i8* @resolve_relative_path(%struct.repository*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @repo_read_index(%struct.repository*) #1

declare dso_local i32 @index_name_pos(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @diagnose_invalid_index_path(%struct.repository*, i32, i8*, i8*) #1

declare dso_local i32 @get_tree_entry_follow_symlinks(%struct.repository*, %struct.object_id*, i8*, %struct.object_id*, i32*, i32*) #1

declare dso_local i32 @get_tree_entry(%struct.repository*, %struct.object_id*, i8*, %struct.object_id*, i32*) #1

declare dso_local i32 @diagnose_invalid_oid_path(%struct.repository*, i8*, i8*, %struct.object_id*, i8*, i32) #1

declare dso_local i32 @die(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
