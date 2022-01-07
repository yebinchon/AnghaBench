; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_groups_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_groups_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_text_short_entry = type { i8*, i64, i64, i64, i64 }
%struct.lev_search_text_long_entry = type { i32, i8*, i64, i64, i64, i32 }

@process_groups_row.tags = internal global [256 x i8] zeroinitializer, align 16
@I = common dso_local global i64* null, align 8
@gr_id = common dso_local global i64 0, align 8
@gr_access = common dso_local global i64 0, align 8
@gr_is_event = common dso_local global i64 0, align 8
@gr_type = common dso_local global i64 0, align 8
@gr_subtype = common dso_local global i64 0, align 8
@gr_country_id = common dso_local global i64 0, align 8
@gr_city_id = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@gr_name = common dso_local global i64 0, align 8
@gr_description = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_SHORT = common dso_local global i64 0, align 8
@gr_num = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_LONG = common dso_local global i32 0, align 4
@S = common dso_local global i8** null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_groups_row() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_search_text_short_entry*, align 8
  %8 = alloca %struct.lev_search_text_long_entry*, align 8
  %9 = load i64*, i64** @I, align 8
  %10 = load i64, i64* @gr_id, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %0
  %15 = load i64*, i64** @I, align 8
  %16 = load i64, i64* @gr_id, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** @I, align 8
  %20 = load i64, i64* @gr_access, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @store_map(i64 %18, i64 %22)
  br label %24

24:                                               ; preds = %14, %0
  %25 = load i64*, i64** @I, align 8
  %26 = load i64, i64* @gr_id, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load i64*, i64** @I, align 8
  %32 = load i64, i64* @gr_id, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @fits(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i64*, i64** @I, align 8
  %39 = load i64, i64* @gr_is_event, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %30, %24
  br label %268

44:                                               ; preds = %37
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @process_groups_row.tags, i64 0, i64 0), i8** %1, align 8
  %45 = load i64*, i64** @I, align 8
  %46 = load i64, i64* @gr_type, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load i8*, i8** %1, align 8
  %52 = load i64*, i64** @I, align 8
  %53 = load i64, i64* @gr_type, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @make_tag(i8* %51, i8 signext 84, i64 %55)
  %57 = load i8*, i8** %1, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %1, align 8
  br label %60

60:                                               ; preds = %50, %44
  %61 = load i64*, i64** @I, align 8
  %62 = load i64, i64* @gr_subtype, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i8*, i8** %1, align 8
  %68 = load i64*, i64** @I, align 8
  %69 = load i64, i64* @gr_subtype, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @make_tag(i8* %67, i8 signext 83, i64 %71)
  %73 = load i8*, i8** %1, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %1, align 8
  br label %76

76:                                               ; preds = %66, %60
  %77 = load i64*, i64** @I, align 8
  %78 = load i64, i64* @gr_country_id, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load i8*, i8** %1, align 8
  %84 = load i64*, i64** @I, align 8
  %85 = load i64, i64* @gr_country_id, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @make_tag(i8* %83, i8 signext 67, i64 %87)
  %89 = load i8*, i8** %1, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %1, align 8
  br label %92

92:                                               ; preds = %82, %76
  %93 = load i64*, i64** @I, align 8
  %94 = load i64, i64* @gr_city_id, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load i8*, i8** %1, align 8
  %100 = load i64*, i64** @I, align 8
  %101 = load i64, i64* @gr_city_id, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @make_tag(i8* %99, i8 signext 99, i64 %103)
  %105 = load i8*, i8** %1, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %1, align 8
  br label %108

108:                                              ; preds = %98, %92
  %109 = load i8*, i8** %1, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = sub i64 %110, ptrtoint ([256 x i8]* @process_groups_row.tags to i64)
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i8*, i8** %1, align 8
  store i8 32, i8* %116, align 1
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %115, %108
  %120 = load i32, i32* %6, align 4
  %121 = load i32*, i32** @L, align 8
  %122 = load i64, i64* @gr_name, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %120, %124
  %126 = load i32*, i32** @L, align 8
  %127 = load i64, i64* @gr_description, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %125, %129
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %3, align 4
  %133 = icmp sgt i32 %132, 8192
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  br label %268

135:                                              ; preds = %119
  %136 = load i32, i32* %3, align 4
  %137 = icmp slt i32 %136, 256
  br i1 %137, label %138, label %166

138:                                              ; preds = %135
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 21, %139
  %141 = call i8* @write_alloc(i32 %140)
  %142 = bitcast i8* %141 to %struct.lev_search_text_short_entry*
  store %struct.lev_search_text_short_entry* %142, %struct.lev_search_text_short_entry** %7, align 8
  %143 = load i64, i64* @LEV_SEARCH_TEXT_SHORT, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %148 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %147, i32 0, i32 4
  store i64 %146, i64* %148, align 8
  %149 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %150 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %149, i32 0, i32 3
  store i64 0, i64* %150, align 8
  %151 = load i64*, i64** @I, align 8
  %152 = load i64, i64* @gr_num, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %156 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  %157 = load i64*, i64** @I, align 8
  %158 = load i64, i64* @gr_id, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %162 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  %163 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %164 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %2, align 8
  br label %194

166:                                              ; preds = %135
  %167 = load i32, i32* %3, align 4
  %168 = add nsw i32 23, %167
  %169 = call i8* @write_alloc(i32 %168)
  %170 = bitcast i8* %169 to %struct.lev_search_text_long_entry*
  store %struct.lev_search_text_long_entry* %170, %struct.lev_search_text_long_entry** %8, align 8
  %171 = load i32, i32* @LEV_SEARCH_TEXT_LONG, align 4
  %172 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %173 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 8
  %174 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %175 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %174, i32 0, i32 4
  store i64 0, i64* %175, align 8
  %176 = load i64*, i64** @I, align 8
  %177 = load i64, i64* @gr_num, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %181 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %180, i32 0, i32 3
  store i64 %179, i64* %181, align 8
  %182 = load i64*, i64** @I, align 8
  %183 = load i64, i64* @gr_id, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %187 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %186, i32 0, i32 2
  store i64 %185, i64* %187, align 8
  %188 = load i32, i32* %3, align 4
  %189 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %190 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %192 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** %2, align 8
  br label %194

194:                                              ; preds = %166, %138
  %195 = load i32, i32* %6, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %194
  %198 = load i8*, i8** %2, align 8
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @memcpy(i8* %198, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @process_groups_row.tags, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %6, align 4
  %202 = load i8*, i8** %2, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %2, align 8
  br label %205

205:                                              ; preds = %197, %194
  %206 = load i8**, i8*** @S, align 8
  %207 = load i64, i64* @gr_name, align 8
  %208 = getelementptr inbounds i8*, i8** %206, i64 %207
  %209 = load i8*, i8** %208, align 8
  store i8* %209, i8** %1, align 8
  %210 = load i32*, i32** @L, align 8
  %211 = load i64, i64* @gr_name, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %230, %205
  %215 = load i32, i32* %4, align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %233

217:                                              ; preds = %214
  %218 = load i8*, i8** %1, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %1, align 8
  %220 = load i8, i8* %218, align 1
  %221 = zext i8 %220 to i32
  store i32 %221, i32* %5, align 4
  %222 = load i32, i32* %5, align 4
  %223 = icmp slt i32 %222, 32
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  store i32 32, i32* %5, align 4
  br label %225

225:                                              ; preds = %224, %217
  %226 = load i32, i32* %5, align 4
  %227 = trunc i32 %226 to i8
  %228 = load i8*, i8** %2, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %2, align 8
  store i8 %227, i8* %228, align 1
  br label %230

230:                                              ; preds = %225
  %231 = load i32, i32* %4, align 4
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %4, align 4
  br label %214

233:                                              ; preds = %214
  %234 = load i8*, i8** %2, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %2, align 8
  store i8 9, i8* %234, align 1
  %236 = load i8**, i8*** @S, align 8
  %237 = load i64, i64* @gr_description, align 8
  %238 = getelementptr inbounds i8*, i8** %236, i64 %237
  %239 = load i8*, i8** %238, align 8
  store i8* %239, i8** %1, align 8
  %240 = load i32*, i32** @L, align 8
  %241 = load i64, i64* @gr_description, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %4, align 4
  br label %244

244:                                              ; preds = %260, %233
  %245 = load i32, i32* %4, align 4
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %263

247:                                              ; preds = %244
  %248 = load i8*, i8** %1, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %1, align 8
  %250 = load i8, i8* %248, align 1
  %251 = zext i8 %250 to i32
  store i32 %251, i32* %5, align 4
  %252 = load i32, i32* %5, align 4
  %253 = icmp slt i32 %252, 32
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  store i32 32, i32* %5, align 4
  br label %255

255:                                              ; preds = %254, %247
  %256 = load i32, i32* %5, align 4
  %257 = trunc i32 %256 to i8
  %258 = load i8*, i8** %2, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %2, align 8
  store i8 %257, i8* %258, align 1
  br label %260

260:                                              ; preds = %255
  %261 = load i32, i32* %4, align 4
  %262 = add nsw i32 %261, -1
  store i32 %262, i32* %4, align 4
  br label %244

263:                                              ; preds = %244
  %264 = load i8*, i8** %2, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %2, align 8
  store i8 0, i8* %264, align 1
  %266 = load i32, i32* @adj_rec, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* @adj_rec, align 4
  br label %268

268:                                              ; preds = %263, %134, %43
  ret void
}

declare dso_local i32 @store_map(i64, i64) #1

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
