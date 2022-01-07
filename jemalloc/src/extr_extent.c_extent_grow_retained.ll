; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_grow_retained.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_grow_retained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i8* (%struct.TYPE_23__*, i32*, i64, i64, i32*, i32*, i32)* }
%struct.TYPE_24__ = type { i64, i64, i32, i32 }

@PAGE = common dso_local global i64 0, align 8
@SC_LARGE_MAXCLASS = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@SC_NSIZES = common dso_local global i32 0, align 4
@extent_state_active = common dso_local global i32 0, align 4
@EXTENT_IS_HEAD = common dso_local global i32 0, align 4
@extent_split_interior_ok = common dso_local global i64 0, align 8
@extent_split_interior_error = common dso_local global i64 0, align 8
@config_prof = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_24__*, %struct.TYPE_23__**, i64, i64, i64, i32, i32, i32*, i32*)* @extent_grow_retained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_grow_retained(i32* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__** %2, i64 %3, i64 %4, i64 %5, i32 %6, i32 %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_23__**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i64, align 8
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %13, align 8
  store %struct.TYPE_23__** %2, %struct.TYPE_23__*** %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 2
  %44 = call i32 @malloc_mutex_assert_owner(i32* %41, i32* %43)
  %45 = load i64, i64* %16, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %10
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %47, %10
  %52 = phi i1 [ true, %10 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32*, i32** %20, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %58, %51
  %63 = phi i1 [ true, %51 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %16, align 8
  %68 = add i64 %66, %67
  store i64 %68, i64* %22, align 8
  %69 = load i64, i64* %22, align 8
  %70 = load i64, i64* %17, align 8
  %71 = call i64 @PAGE_CEILING(i64 %70)
  %72 = add i64 %69, %71
  %73 = load i64, i64* @PAGE, align 8
  %74 = sub i64 %72, %73
  store i64 %74, i64* %23, align 8
  %75 = load i64, i64* %23, align 8
  %76 = load i64, i64* %22, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %385

79:                                               ; preds = %62
  store i64 0, i64* %24, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %24, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i64 @sz_pind2sz(i64 %84)
  store i64 %85, i64* %25, align 8
  br label %86

86:                                               ; preds = %102, %79
  %87 = load i64, i64* %25, align 8
  %88 = load i64, i64* %23, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %86
  %91 = load i64, i64* %24, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %24, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %24, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i32, i32* @SC_LARGE_MAXCLASS, align 4
  %99 = call i64 @sz_psz2ind(i32 %98)
  %100 = icmp sge i64 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %385

102:                                              ; preds = %90
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %24, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i64 @sz_pind2sz(i64 %107)
  store i64 %108, i64* %25, align 8
  br label %86

109:                                              ; preds = %86
  %110 = load i32*, i32** %12, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %112 = call i32* @extent_alloc(i32* %110, %struct.TYPE_24__* %111)
  store i32* %112, i32** %26, align 8
  %113 = load i32*, i32** %26, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %385

116:                                              ; preds = %109
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %117 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %14, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %117, align 8
  %119 = icmp eq %struct.TYPE_23__* %118, @extent_hooks_default
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i32*, i32** %12, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %123 = load i64, i64* %25, align 8
  %124 = load i64, i64* @PAGE, align 8
  %125 = call i8* @extent_alloc_default_impl(i32* %121, %struct.TYPE_24__* %122, i32* null, i64 %123, i64 %124, i32* %27, i32* %28)
  store i8* %125, i8** %29, align 8
  br label %143

126:                                              ; preds = %116
  %127 = load i32*, i32** %12, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %129 = call i32 @extent_hook_pre_reentrancy(i32* %127, %struct.TYPE_24__* %128)
  %130 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %14, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load i8* (%struct.TYPE_23__*, i32*, i64, i64, i32*, i32*, i32)*, i8* (%struct.TYPE_23__*, i32*, i64, i64, i32*, i32*, i32)** %132, align 8
  %134 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %14, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %134, align 8
  %136 = load i64, i64* %25, align 8
  %137 = load i64, i64* @PAGE, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %139 = call i32 @arena_ind_get(%struct.TYPE_24__* %138)
  %140 = call i8* %133(%struct.TYPE_23__* %135, i32* null, i64 %136, i64 %137, i32* %27, i32* %28, i32 %139)
  store i8* %140, i8** %29, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = call i32 @extent_hook_post_reentrancy(i32* %141)
  br label %143

143:                                              ; preds = %126, %120
  %144 = load i32*, i32** %26, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %146 = call i32 @arena_ind_get(%struct.TYPE_24__* %145)
  %147 = load i8*, i8** %29, align 8
  %148 = load i64, i64* %25, align 8
  %149 = load i32, i32* @SC_NSIZES, align 4
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %151 = call i32 @arena_extent_sn_next(%struct.TYPE_24__* %150)
  %152 = load i32, i32* @extent_state_active, align 4
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %28, align 4
  %155 = load i32, i32* @EXTENT_IS_HEAD, align 4
  %156 = call i32 @extent_init(i32* %144, i32 %146, i8* %147, i64 %148, i32 0, i32 %149, i32 %151, i32 %152, i32 %153, i32 %154, i32 1, i32 %155)
  %157 = load i8*, i8** %29, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %143
  %160 = load i32*, i32** %12, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %162 = load i32*, i32** %26, align 8
  %163 = call i32 @extent_dalloc(i32* %160, %struct.TYPE_24__* %161, i32* %162)
  br label %385

164:                                              ; preds = %143
  %165 = load i32*, i32** %12, align 8
  %166 = load i32*, i32** %26, align 8
  %167 = call i64 @extent_register_no_gdump_add(i32* %165, i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load i32*, i32** %12, align 8
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %172 = load i32*, i32** %26, align 8
  %173 = call i32 @extent_dalloc(i32* %170, %struct.TYPE_24__* %171, i32* %172)
  br label %385

174:                                              ; preds = %164
  %175 = load i32*, i32** %26, align 8
  %176 = call i64 @extent_zeroed_get(i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load i32*, i32** %26, align 8
  %180 = call i64 @extent_committed_get(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32*, i32** %20, align 8
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %182, %178, %174
  %185 = load i32*, i32** %26, align 8
  %186 = call i64 @extent_committed_get(i32* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i32*, i32** %21, align 8
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %188, %184
  %191 = load i32*, i32** %12, align 8
  %192 = call i32* @tsdn_rtree_ctx(i32* %191, i32* %30)
  store i32* %192, i32** %31, align 8
  %193 = load i32*, i32** %12, align 8
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %195 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %14, align 8
  %196 = load i32*, i32** %31, align 8
  %197 = load i64, i64* %15, align 8
  %198 = load i64, i64* %16, align 8
  %199 = load i64, i64* %17, align 8
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %19, align 4
  %202 = call i64 @extent_split_interior(i32* %193, %struct.TYPE_24__* %194, %struct.TYPE_23__** %195, i32* %196, i32** %26, i32** %32, i32** %33, i32** %34, i32** %35, i32* null, i64 %197, i64 %198, i64 %199, i32 %200, i32 %201, i32 1)
  store i64 %202, i64* %36, align 8
  %203 = load i64, i64* %36, align 8
  %204 = load i64, i64* @extent_split_interior_ok, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %229

206:                                              ; preds = %190
  %207 = load i32*, i32** %32, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load i32*, i32** %12, align 8
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %212 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %14, align 8
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 3
  %215 = load i32*, i32** %32, align 8
  %216 = call i32 @extent_record(i32* %210, %struct.TYPE_24__* %211, %struct.TYPE_23__** %212, i32* %214, i32* %215, i32 1)
  br label %217

217:                                              ; preds = %209, %206
  %218 = load i32*, i32** %33, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %228

220:                                              ; preds = %217
  %221 = load i32*, i32** %12, align 8
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %223 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %14, align 8
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 3
  %226 = load i32*, i32** %33, align 8
  %227 = call i32 @extent_record(i32* %221, %struct.TYPE_24__* %222, %struct.TYPE_23__** %223, i32* %225, i32* %226, i32 1)
  br label %228

228:                                              ; preds = %220, %217
  br label %267

229:                                              ; preds = %190
  %230 = load i64, i64* %36, align 8
  %231 = load i64, i64* @extent_split_interior_error, align 8
  %232 = icmp eq i64 %230, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  %235 = load i32*, i32** %35, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %252

237:                                              ; preds = %229
  %238 = load i64, i64* @config_prof, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load i32*, i32** %12, align 8
  %242 = load i32*, i32** %35, align 8
  %243 = call i32 @extent_gdump_add(i32* %241, i32* %242)
  br label %244

244:                                              ; preds = %240, %237
  %245 = load i32*, i32** %12, align 8
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %247 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %14, align 8
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 3
  %250 = load i32*, i32** %35, align 8
  %251 = call i32 @extent_record(i32* %245, %struct.TYPE_24__* %246, %struct.TYPE_23__** %247, i32* %249, i32* %250, i32 1)
  br label %252

252:                                              ; preds = %244, %229
  %253 = load i32*, i32** %34, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = load i32*, i32** %12, align 8
  %257 = load i32*, i32** %34, align 8
  %258 = call i32 @extent_deregister_no_gdump_sub(i32* %256, i32* %257)
  %259 = load i32*, i32** %12, align 8
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %261 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %14, align 8
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 3
  %264 = load i32*, i32** %34, align 8
  %265 = call i32 @extents_abandon_vm(i32* %259, %struct.TYPE_24__* %260, %struct.TYPE_23__** %261, i32* %263, i32* %264, i32 1)
  br label %266

266:                                              ; preds = %255, %252
  br label %385

267:                                              ; preds = %228
  %268 = load i32*, i32** %21, align 8
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %300

271:                                              ; preds = %267
  %272 = load i32*, i32** %26, align 8
  %273 = call i64 @extent_committed_get(i32* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %300, label %275

275:                                              ; preds = %271
  %276 = load i32*, i32** %12, align 8
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %278 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %14, align 8
  %279 = load i32*, i32** %26, align 8
  %280 = load i32*, i32** %26, align 8
  %281 = call i64 @extent_size_get(i32* %280)
  %282 = call i64 @extent_commit_impl(i32* %276, %struct.TYPE_24__* %277, %struct.TYPE_23__** %278, i32* %279, i32 0, i64 %281, i32 1)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %275
  %285 = load i32*, i32** %12, align 8
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %287 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %14, align 8
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i32 0, i32 3
  %290 = load i32*, i32** %26, align 8
  %291 = call i32 @extent_record(i32* %285, %struct.TYPE_24__* %286, %struct.TYPE_23__** %287, i32* %289, i32* %290, i32 1)
  br label %385

292:                                              ; preds = %275
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %294 = call i64 @extent_need_manual_zero(%struct.TYPE_24__* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %292
  %297 = load i32*, i32** %26, align 8
  %298 = call i32 @extent_zeroed_set(i32* %297, i32 1)
  br label %299

299:                                              ; preds = %296, %292
  br label %300

300:                                              ; preds = %299, %271, %267
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* %24, align 8
  %305 = add nsw i64 %303, %304
  %306 = add nsw i64 %305, 1
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = icmp sle i64 %306, %309
  br i1 %310, label %311, label %318

311:                                              ; preds = %300
  %312 = load i64, i64* %24, align 8
  %313 = add nsw i64 %312, 1
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = add nsw i64 %316, %313
  store i64 %317, i64* %315, align 8
  br label %324

318:                                              ; preds = %300
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 0
  store i64 %321, i64* %323, align 8
  br label %324

324:                                              ; preds = %318, %311
  %325 = load i32*, i32** %12, align 8
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 2
  %328 = call i32 @malloc_mutex_unlock(i32* %325, i32* %327)
  %329 = load i64, i64* @config_prof, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %324
  %332 = load i32*, i32** %12, align 8
  %333 = load i32*, i32** %26, align 8
  %334 = call i32 @extent_gdump_add(i32* %332, i32* %333)
  br label %335

335:                                              ; preds = %331, %324
  %336 = load i64, i64* %16, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %335
  %339 = load i32*, i32** %12, align 8
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %341 = load i32*, i32** %26, align 8
  %342 = load i64, i64* %17, align 8
  %343 = call i32 @extent_addr_randomize(i32* %339, %struct.TYPE_24__* %340, i32* %341, i64 %342)
  br label %344

344:                                              ; preds = %338, %335
  %345 = load i32, i32* %18, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %357

347:                                              ; preds = %344
  %348 = load i32*, i32** %12, align 8
  %349 = call i32* @tsdn_rtree_ctx(i32* %348, i32* %37)
  store i32* %349, i32** %38, align 8
  %350 = load i32*, i32** %26, align 8
  %351 = call i32 @extent_slab_set(i32* %350, i32 1)
  %352 = load i32*, i32** %12, align 8
  %353 = load i32*, i32** %38, align 8
  %354 = load i32*, i32** %26, align 8
  %355 = load i32, i32* %19, align 4
  %356 = call i32 @extent_interior_register(i32* %352, i32* %353, i32* %354, i32 %355)
  br label %357

357:                                              ; preds = %347, %344
  %358 = load i32*, i32** %20, align 8
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %383

361:                                              ; preds = %357
  %362 = load i32*, i32** %26, align 8
  %363 = call i64 @extent_zeroed_get(i32* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %383, label %365

365:                                              ; preds = %361
  %366 = load i32*, i32** %26, align 8
  %367 = call i8* @extent_base_get(i32* %366)
  store i8* %367, i8** %39, align 8
  %368 = load i32*, i32** %26, align 8
  %369 = call i64 @extent_size_get(i32* %368)
  store i64 %369, i64* %40, align 8
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %371 = call i64 @extent_need_manual_zero(%struct.TYPE_24__* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %378, label %373

373:                                              ; preds = %365
  %374 = load i8*, i8** %39, align 8
  %375 = load i64, i64* %40, align 8
  %376 = call i64 @pages_purge_forced(i8* %374, i64 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %373, %365
  %379 = load i8*, i8** %39, align 8
  %380 = load i64, i64* %40, align 8
  %381 = call i32 @memset(i8* %379, i32 0, i64 %380)
  br label %382

382:                                              ; preds = %378, %373
  br label %383

383:                                              ; preds = %382, %361, %357
  %384 = load i32*, i32** %26, align 8
  store i32* %384, i32** %11, align 8
  br label %390

385:                                              ; preds = %284, %266, %169, %159, %115, %101, %78
  %386 = load i32*, i32** %12, align 8
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %388 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %387, i32 0, i32 2
  %389 = call i32 @malloc_mutex_unlock(i32* %386, i32* %388)
  store i32* null, i32** %11, align 8
  br label %390

390:                                              ; preds = %385, %383
  %391 = load i32*, i32** %11, align 8
  ret i32* %391
}

declare dso_local i32 @malloc_mutex_assert_owner(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @PAGE_CEILING(i64) #1

declare dso_local i64 @sz_pind2sz(i64) #1

declare dso_local i64 @sz_psz2ind(i32) #1

declare dso_local i32* @extent_alloc(i32*, %struct.TYPE_24__*) #1

declare dso_local i8* @extent_alloc_default_impl(i32*, %struct.TYPE_24__*, i32*, i64, i64, i32*, i32*) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @arena_ind_get(%struct.TYPE_24__*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32 @extent_init(i32*, i32, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @arena_extent_sn_next(%struct.TYPE_24__*) #1

declare dso_local i32 @extent_dalloc(i32*, %struct.TYPE_24__*, i32*) #1

declare dso_local i64 @extent_register_no_gdump_add(i32*, i32*) #1

declare dso_local i64 @extent_zeroed_get(i32*) #1

declare dso_local i64 @extent_committed_get(i32*) #1

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i64 @extent_split_interior(i32*, %struct.TYPE_24__*, %struct.TYPE_23__**, i32*, i32**, i32**, i32**, i32**, i32**, i32*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @extent_record(i32*, %struct.TYPE_24__*, %struct.TYPE_23__**, i32*, i32*, i32) #1

declare dso_local i32 @extent_gdump_add(i32*, i32*) #1

declare dso_local i32 @extent_deregister_no_gdump_sub(i32*, i32*) #1

declare dso_local i32 @extents_abandon_vm(i32*, %struct.TYPE_24__*, %struct.TYPE_23__**, i32*, i32*, i32) #1

declare dso_local i64 @extent_commit_impl(i32*, %struct.TYPE_24__*, %struct.TYPE_23__**, i32*, i32, i64, i32) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i64 @extent_need_manual_zero(%struct.TYPE_24__*) #1

declare dso_local i32 @extent_zeroed_set(i32*, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @extent_addr_randomize(i32*, %struct.TYPE_24__*, i32*, i64) #1

declare dso_local i32 @extent_slab_set(i32*, i32) #1

declare dso_local i32 @extent_interior_register(i32*, i32*, i32*, i32) #1

declare dso_local i8* @extent_base_get(i32*) #1

declare dso_local i64 @pages_purge_forced(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
