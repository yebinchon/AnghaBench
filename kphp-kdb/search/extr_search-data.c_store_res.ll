; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_store_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_store_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"store_res!!, n_ranges = %d\0A\00", align 1
@n_ranges = common dso_local global i32 0, align 4
@Q_range = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"ranges: r0 = %d, Q_range[i].minr = %d, Q_range[i].maxr = %d\0A\00", align 1
@R_tot = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i64 0, align 8
@Q_hash_group_mode = common dso_local global i64 0, align 8
@R = common dso_local global i32** null, align 8
@R_cnt = common dso_local global i64 0, align 8
@MAX_RES = common dso_local global i64 0, align 8
@hs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@R_tot_undef_hash = common dso_local global i64 0, align 8
@Q_type = common dso_local global i64 0, align 8
@MAX_RATES = common dso_local global i64 0, align 8
@Q_order = common dso_local global i32 0, align 4
@FLAG_ENTRY_SORT_SEARCH = common dso_local global i32 0, align 4
@FLAG_PRIORITY_SORT_SEARCH = common dso_local global i32 0, align 4
@FLAG_REVERSE_SEARCH = common dso_local global i32 0, align 4
@order = common dso_local global i32 0, align 4
@RV = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @store_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_res(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @n_ranges, align 4
  %12 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %59, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @n_ranges, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Q_range, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_rate_item(i32* %18, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Q_range, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Q_range, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %32, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Q_range, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %40, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %17
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Q_range, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %49, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48, %17
  store i32 1, i32* %3, align 4
  br label %307

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %13

62:                                               ; preds = %13
  %63 = load i32, i32* @R_tot, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @R_tot, align 4
  %65 = load i64, i64* @Q_limit, align 8
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %122

67:                                               ; preds = %62
  %68 = load i64, i64* @Q_hash_group_mode, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %307

71:                                               ; preds = %67
  %72 = load i32**, i32*** @R, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = call i64 @extract_hash_item(i32* %76)
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %71
  %81 = load i64, i64* @R_cnt, align 8
  %82 = load i64, i64* @MAX_RES, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32*, i32** %4, align 8
  %86 = load i32**, i32*** @R, align 8
  %87 = load i64, i64* @R_cnt, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* @R_cnt, align 8
  %89 = getelementptr inbounds i32*, i32** %86, i64 %87
  store i32* %85, i32** %89, align 8
  br label %110

90:                                               ; preds = %80
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hs, i32 0, i32 0), align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i64, i64* @MAX_RES, align 8
  %95 = call i32 @hashset_init(i64 %94)
  %96 = call i32 (...) @add_items_into_hashset()
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @hashset_ll_insert(%struct.TYPE_4__* @hs, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hs, i32 0, i32 1), align 8
  %103 = load i64, i64* @R_tot_undef_hash, align 8
  %104 = add nsw i64 %102, %103
  %105 = load i64, i64* @MAX_RES, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %307

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %109, %84
  br label %114

111:                                              ; preds = %71
  %112 = load i64, i64* @R_tot_undef_hash, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* @R_tot_undef_hash, align 8
  br label %114

114:                                              ; preds = %111, %110
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hs, i32 0, i32 1), align 8
  %116 = load i64, i64* @R_tot_undef_hash, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i64, i64* @MAX_RES, align 8
  %119 = icmp sgt i64 %117, %118
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 0, i32 1
  store i32 %121, i32* %3, align 4
  br label %307

122:                                              ; preds = %62
  %123 = load i64, i64* @Q_hash_group_mode, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @store_res_group_mode(i32* %126, i32 %127)
  store i32 1, i32* %3, align 4
  br label %307

129:                                              ; preds = %122
  %130 = load i64, i64* @Q_type, align 8
  %131 = load i64, i64* @MAX_RATES, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %161

133:                                              ; preds = %129
  %134 = load i32, i32* @Q_order, align 4
  %135 = load i32, i32* @FLAG_ENTRY_SORT_SEARCH, align 4
  %136 = load i32, i32* @FLAG_PRIORITY_SORT_SEARCH, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %161, label %140

140:                                              ; preds = %133
  %141 = load i32, i32* @Q_order, align 4
  %142 = load i32, i32* @FLAG_REVERSE_SEARCH, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i64, i64* @R_cnt, align 8
  %147 = load i64, i64* @Q_limit, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i64 0, i64* @R_cnt, align 8
  br label %150

150:                                              ; preds = %149, %145, %140
  %151 = load i64, i64* @R_cnt, align 8
  %152 = load i64, i64* @Q_limit, align 8
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load i32*, i32** %4, align 8
  %156 = load i32**, i32*** @R, align 8
  %157 = load i64, i64* @R_cnt, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* @R_cnt, align 8
  %159 = getelementptr inbounds i32*, i32** %156, i64 %157
  store i32* %155, i32** %159, align 8
  br label %160

160:                                              ; preds = %154, %150
  store i32 1, i32* %3, align 4
  br label %307

161:                                              ; preds = %133, %129
  %162 = load i32*, i32** %4, align 8
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @evaluate_rating(i32* %162, i32 %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* @order, align 4
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %167, %161
  %172 = load i32, i32* @order, align 4
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i64, i64* @R_cnt, align 8
  %177 = load i64, i64* @Q_limit, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %257

179:                                              ; preds = %171
  %180 = load i32*, i32** @RV, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  store i32 1, i32* %3, align 4
  br label %307

186:                                              ; preds = %179
  store i32 1, i32* %6, align 4
  br label %187

187:                                              ; preds = %186, %226
  %188 = load i32, i32* %6, align 4
  %189 = mul nsw i32 %188, 2
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* @R_cnt, align 8
  %193 = icmp sgt i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %246

195:                                              ; preds = %187
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* @R_cnt, align 8
  %199 = icmp slt i64 %197, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %195
  %201 = load i32*, i32** @RV, align 8
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** @RV, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = icmp sgt i32 %206, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %200
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %216

216:                                              ; preds = %213, %200
  br label %217

217:                                              ; preds = %216, %195
  %218 = load i32*, i32** @RV, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp sle i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %217
  br label %246

226:                                              ; preds = %217
  %227 = load i32**, i32*** @R, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = load i32**, i32*** @R, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32*, i32** %232, i64 %234
  store i32* %231, i32** %235, align 8
  %236 = load i32*, i32** @RV, align 8
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** @RV, align 8
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  store i32 %240, i32* %244, align 4
  %245 = load i32, i32* %7, align 4
  store i32 %245, i32* %6, align 4
  br label %187

246:                                              ; preds = %225, %194
  %247 = load i32*, i32** %4, align 8
  %248 = load i32**, i32*** @R, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %248, i64 %250
  store i32* %247, i32** %251, align 8
  %252 = load i32, i32* %8, align 4
  %253 = load i32*, i32** @RV, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 %252, i32* %256, align 4
  br label %306

257:                                              ; preds = %171
  %258 = load i64, i64* @R_cnt, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* @R_cnt, align 8
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %275, %257
  %262 = load i32, i32* %6, align 4
  %263 = icmp sgt i32 %262, 1
  br i1 %263, label %264, label %295

264:                                              ; preds = %261
  %265 = load i32, i32* %6, align 4
  %266 = ashr i32 %265, 1
  store i32 %266, i32* %7, align 4
  %267 = load i32*, i32** @RV, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %8, align 4
  %273 = icmp sge i32 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %264
  br label %295

275:                                              ; preds = %264
  %276 = load i32**, i32*** @R, align 8
  %277 = load i32, i32* %7, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32*, i32** %276, i64 %278
  %280 = load i32*, i32** %279, align 8
  %281 = load i32**, i32*** @R, align 8
  %282 = load i32, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32*, i32** %281, i64 %283
  store i32* %280, i32** %284, align 8
  %285 = load i32*, i32** @RV, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load i32*, i32** @RV, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  store i32 %289, i32* %293, align 4
  %294 = load i32, i32* %7, align 4
  store i32 %294, i32* %6, align 4
  br label %261

295:                                              ; preds = %274, %261
  %296 = load i32*, i32** %4, align 8
  %297 = load i32**, i32*** @R, align 8
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32*, i32** %297, i64 %299
  store i32* %296, i32** %300, align 8
  %301 = load i32, i32* %8, align 4
  %302 = load i32*, i32** @RV, align 8
  %303 = load i32, i32* %6, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32 %301, i32* %305, align 4
  br label %306

306:                                              ; preds = %295, %246
  store i32 1, i32* %3, align 4
  br label %307

307:                                              ; preds = %306, %185, %160, %125, %114, %107, %70, %57
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @get_rate_item(i32*, i32) #1

declare dso_local i64 @extract_hash_item(i32*) #1

declare dso_local i32 @hashset_init(i64) #1

declare dso_local i32 @add_items_into_hashset(...) #1

declare dso_local i64 @hashset_ll_insert(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @store_res_group_mode(i32*, i32) #1

declare dso_local i32 @evaluate_rating(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
