; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_market_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_market_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_text_short_entry = type { i8*, i64, i64, i64, i64 }
%struct.lev_search_text_long_entry = type { i32, i8*, i64, i64, i64, i32 }

@process_market_row.tags = internal global [256 x i8] zeroinitializer, align 16
@I = common dso_local global i64* null, align 8
@mi_id = common dso_local global i64 0, align 8
@mi_privacy = common dso_local global i64 0, align 8
@mi_category = common dso_local global i64 0, align 8
@mi_section = common dso_local global i64 0, align 8
@mi_country = common dso_local global i64 0, align 8
@mi_city = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@mi_name = common dso_local global i64 0, align 8
@mi_description = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_SHORT = common dso_local global i64 0, align 8
@mi_cost = common dso_local global i64 0, align 8
@mi_votes = common dso_local global i64 0, align 8
@mi_price = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_LONG = common dso_local global i32 0, align 4
@S = common dso_local global i8** null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_market_row() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_search_text_short_entry*, align 8
  %8 = alloca %struct.lev_search_text_long_entry*, align 8
  %9 = load i64*, i64** @I, align 8
  %10 = load i64, i64* @mi_id, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %0
  %15 = load i64*, i64** @I, align 8
  %16 = load i64, i64* @mi_id, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @fits(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i64*, i64** @I, align 8
  %23 = load i64, i64* @mi_privacy, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %14, %0
  br label %304

28:                                               ; preds = %21
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @process_market_row.tags, i64 0, i64 0), i8** %1, align 8
  %29 = load i64*, i64** @I, align 8
  %30 = load i64, i64* @mi_category, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i8*, i8** %1, align 8
  %36 = load i64*, i64** @I, align 8
  %37 = load i64, i64* @mi_category, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @make_tag(i8* %35, i8 signext 84, i64 %39)
  %41 = load i8*, i8** %1, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %1, align 8
  br label %44

44:                                               ; preds = %34, %28
  %45 = load i64*, i64** @I, align 8
  %46 = load i64, i64* @mi_section, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load i8*, i8** %1, align 8
  %52 = load i64*, i64** @I, align 8
  %53 = load i64, i64* @mi_section, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @make_tag(i8* %51, i8 signext 83, i64 %55)
  %57 = load i8*, i8** %1, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %1, align 8
  br label %60

60:                                               ; preds = %50, %44
  %61 = load i64*, i64** @I, align 8
  %62 = load i64, i64* @mi_country, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i8*, i8** %1, align 8
  %68 = load i64*, i64** @I, align 8
  %69 = load i64, i64* @mi_country, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @make_tag(i8* %67, i8 signext 67, i64 %71)
  %73 = load i8*, i8** %1, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %1, align 8
  br label %76

76:                                               ; preds = %66, %60
  %77 = load i64*, i64** @I, align 8
  %78 = load i64, i64* @mi_city, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load i8*, i8** %1, align 8
  %84 = load i64*, i64** @I, align 8
  %85 = load i64, i64* @mi_city, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @make_tag(i8* %83, i8 signext 99, i64 %87)
  %89 = load i8*, i8** %1, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %1, align 8
  br label %92

92:                                               ; preds = %82, %76
  %93 = load i8*, i8** %1, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = sub i64 %94, ptrtoint ([256 x i8]* @process_market_row.tags to i64)
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i8*, i8** %1, align 8
  store i8 32, i8* %100, align 1
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %99, %92
  %104 = load i32, i32* %6, align 4
  %105 = load i32*, i32** @L, align 8
  %106 = load i64, i64* @mi_name, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %104, %108
  %110 = load i32*, i32** @L, align 8
  %111 = load i64, i64* @mi_description, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %109, %113
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %3, align 4
  %117 = icmp sgt i32 %116, 8192
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  br label %304

119:                                              ; preds = %103
  %120 = load i32, i32* %3, align 4
  %121 = icmp slt i32 %120, 256
  br i1 %121, label %122, label %176

122:                                              ; preds = %119
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 21, %123
  %125 = call i8* @write_alloc(i32 %124)
  %126 = bitcast i8* %125 to %struct.lev_search_text_short_entry*
  store %struct.lev_search_text_short_entry* %126, %struct.lev_search_text_short_entry** %7, align 8
  %127 = load i64, i64* @LEV_SEARCH_TEXT_SHORT, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %132 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %131, i32 0, i32 4
  store i64 %130, i64* %132, align 8
  %133 = load i64*, i64** @I, align 8
  %134 = load i64, i64* @mi_cost, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** @I, align 8
  %138 = load i64, i64* @mi_votes, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp sle i64 %136, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %122
  %143 = load i64*, i64** @I, align 8
  %144 = load i64, i64* @mi_cost, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  br label %148

147:                                              ; preds = %122
  br label %148

148:                                              ; preds = %147, %142
  %149 = phi i64 [ %146, %142 ], [ 0, %147 ]
  %150 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %151 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %150, i32 0, i32 3
  store i64 %149, i64* %151, align 8
  %152 = load i64*, i64** @I, align 8
  %153 = load i64, i64* @mi_price, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = load i64*, i64** @I, align 8
  %159 = load i64, i64* @mi_price, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  br label %163

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %157
  %164 = phi i64 [ %161, %157 ], [ 1000000000, %162 ]
  %165 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %166 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %165, i32 0, i32 2
  store i64 %164, i64* %166, align 8
  %167 = load i64*, i64** @I, align 8
  %168 = load i64, i64* @mi_id, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %172 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %174 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  store i8* %175, i8** %2, align 8
  br label %230

176:                                              ; preds = %119
  %177 = load i32, i32* %3, align 4
  %178 = add nsw i32 23, %177
  %179 = call i8* @write_alloc(i32 %178)
  %180 = bitcast i8* %179 to %struct.lev_search_text_long_entry*
  store %struct.lev_search_text_long_entry* %180, %struct.lev_search_text_long_entry** %8, align 8
  %181 = load i32, i32* @LEV_SEARCH_TEXT_LONG, align 4
  %182 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %183 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 8
  %184 = load i64*, i64** @I, align 8
  %185 = load i64, i64* @mi_cost, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i64*, i64** @I, align 8
  %189 = load i64, i64* @mi_votes, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = icmp sle i64 %187, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %176
  %194 = load i64*, i64** @I, align 8
  %195 = load i64, i64* @mi_cost, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %196, align 8
  br label %199

198:                                              ; preds = %176
  br label %199

199:                                              ; preds = %198, %193
  %200 = phi i64 [ %197, %193 ], [ 0, %198 ]
  %201 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %202 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %201, i32 0, i32 4
  store i64 %200, i64* %202, align 8
  %203 = load i64*, i64** @I, align 8
  %204 = load i64, i64* @mi_price, align 8
  %205 = getelementptr inbounds i64, i64* %203, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %199
  %209 = load i64*, i64** @I, align 8
  %210 = load i64, i64* @mi_price, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  %212 = load i64, i64* %211, align 8
  br label %214

213:                                              ; preds = %199
  br label %214

214:                                              ; preds = %213, %208
  %215 = phi i64 [ %212, %208 ], [ 1000000000, %213 ]
  %216 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %217 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %216, i32 0, i32 3
  store i64 %215, i64* %217, align 8
  %218 = load i64*, i64** @I, align 8
  %219 = load i64, i64* @mi_id, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %223 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %222, i32 0, i32 2
  store i64 %221, i64* %223, align 8
  %224 = load i32, i32* %3, align 4
  %225 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %226 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %228 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  store i8* %229, i8** %2, align 8
  br label %230

230:                                              ; preds = %214, %163
  %231 = load i32, i32* %6, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %230
  %234 = load i8*, i8** %2, align 8
  %235 = load i32, i32* %6, align 4
  %236 = call i32 @memcpy(i8* %234, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @process_market_row.tags, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %6, align 4
  %238 = load i8*, i8** %2, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %2, align 8
  br label %241

241:                                              ; preds = %233, %230
  %242 = load i8**, i8*** @S, align 8
  %243 = load i64, i64* @mi_name, align 8
  %244 = getelementptr inbounds i8*, i8** %242, i64 %243
  %245 = load i8*, i8** %244, align 8
  store i8* %245, i8** %1, align 8
  %246 = load i32*, i32** @L, align 8
  %247 = load i64, i64* @mi_name, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %4, align 4
  br label %250

250:                                              ; preds = %266, %241
  %251 = load i32, i32* %4, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %269

253:                                              ; preds = %250
  %254 = load i8*, i8** %1, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %1, align 8
  %256 = load i8, i8* %254, align 1
  %257 = zext i8 %256 to i32
  store i32 %257, i32* %5, align 4
  %258 = load i32, i32* %5, align 4
  %259 = icmp slt i32 %258, 32
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  store i32 32, i32* %5, align 4
  br label %261

261:                                              ; preds = %260, %253
  %262 = load i32, i32* %5, align 4
  %263 = trunc i32 %262 to i8
  %264 = load i8*, i8** %2, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %2, align 8
  store i8 %263, i8* %264, align 1
  br label %266

266:                                              ; preds = %261
  %267 = load i32, i32* %4, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %4, align 4
  br label %250

269:                                              ; preds = %250
  %270 = load i8*, i8** %2, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %2, align 8
  store i8 9, i8* %270, align 1
  %272 = load i8**, i8*** @S, align 8
  %273 = load i64, i64* @mi_description, align 8
  %274 = getelementptr inbounds i8*, i8** %272, i64 %273
  %275 = load i8*, i8** %274, align 8
  store i8* %275, i8** %1, align 8
  %276 = load i32*, i32** @L, align 8
  %277 = load i64, i64* @mi_description, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %4, align 4
  br label %280

280:                                              ; preds = %296, %269
  %281 = load i32, i32* %4, align 4
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %299

283:                                              ; preds = %280
  %284 = load i8*, i8** %1, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %1, align 8
  %286 = load i8, i8* %284, align 1
  %287 = zext i8 %286 to i32
  store i32 %287, i32* %5, align 4
  %288 = load i32, i32* %5, align 4
  %289 = icmp slt i32 %288, 32
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  store i32 32, i32* %5, align 4
  br label %291

291:                                              ; preds = %290, %283
  %292 = load i32, i32* %5, align 4
  %293 = trunc i32 %292 to i8
  %294 = load i8*, i8** %2, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %2, align 8
  store i8 %293, i8* %294, align 1
  br label %296

296:                                              ; preds = %291
  %297 = load i32, i32* %4, align 4
  %298 = add nsw i32 %297, -1
  store i32 %298, i32* %4, align 4
  br label %280

299:                                              ; preds = %280
  %300 = load i8*, i8** %2, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %2, align 8
  store i8 0, i8* %300, align 1
  %302 = load i32, i32* @adj_rec, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* @adj_rec, align 4
  br label %304

304:                                              ; preds = %299, %118, %27
  ret void
}

declare dso_local i32 @fits(i64) #1

declare dso_local i32 @make_tag(i8*, i8 signext, i64) #1

declare dso_local i8* @write_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
