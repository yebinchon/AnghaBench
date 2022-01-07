; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_events_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_events_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_text_short_entry = type { i32, i32, i32, i8*, i64 }
%struct.lev_search_text_long_entry = type { i32, i32, i32, i32, i8*, i32 }

@process_events_row.tags = internal global [256 x i8] zeroinitializer, align 16
@I = common dso_local global i32* null, align 8
@gr_id = common dso_local global i64 0, align 8
@gr_is_event = common dso_local global i64 0, align 8
@gr_group_type = common dso_local global i64 0, align 8
@gr_country_id = common dso_local global i64 0, align 8
@gr_city_id = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@gr_name = common dso_local global i64 0, align 8
@gr_description = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_SHORT = common dso_local global i64 0, align 8
@gr_start_date = common dso_local global i64 0, align 8
@gr_num = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_LONG = common dso_local global i32 0, align 4
@S = common dso_local global i8** null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_events_row() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_search_text_short_entry*, align 8
  %8 = alloca %struct.lev_search_text_long_entry*, align 8
  %9 = load i32*, i32** @I, align 8
  %10 = load i64, i64* @gr_id, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %0
  %15 = load i32*, i32** @I, align 8
  %16 = load i64, i64* @gr_id, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fits(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32*, i32** @I, align 8
  %23 = load i64, i64* @gr_is_event, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %14, %0
  br label %244

28:                                               ; preds = %21
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @process_events_row.tags, i64 0, i64 0), i8** %1, align 8
  %29 = load i32*, i32** @I, align 8
  %30 = load i64, i64* @gr_group_type, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i8*, i8** %1, align 8
  %36 = load i32*, i32** @I, align 8
  %37 = load i64, i64* @gr_group_type, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @make_tag(i8* %35, i8 signext 84, i32 %39)
  %41 = load i8*, i8** %1, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %1, align 8
  br label %44

44:                                               ; preds = %34, %28
  %45 = load i32*, i32** @I, align 8
  %46 = load i64, i64* @gr_country_id, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load i8*, i8** %1, align 8
  %52 = load i32*, i32** @I, align 8
  %53 = load i64, i64* @gr_country_id, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @make_tag(i8* %51, i8 signext 67, i32 %55)
  %57 = load i8*, i8** %1, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %1, align 8
  br label %60

60:                                               ; preds = %50, %44
  %61 = load i32*, i32** @I, align 8
  %62 = load i64, i64* @gr_city_id, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i8*, i8** %1, align 8
  %68 = load i32*, i32** @I, align 8
  %69 = load i64, i64* @gr_city_id, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @make_tag(i8* %67, i8 signext 99, i32 %71)
  %73 = load i8*, i8** %1, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %1, align 8
  br label %76

76:                                               ; preds = %66, %60
  %77 = load i8*, i8** %1, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = sub i64 %78, ptrtoint ([256 x i8]* @process_events_row.tags to i64)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i8*, i8** %1, align 8
  store i8 32, i8* %84, align 1
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %76
  %88 = load i32, i32* %6, align 4
  %89 = load i32*, i32** @L, align 8
  %90 = load i64, i64* @gr_name, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %88, %92
  %94 = load i32*, i32** @L, align 8
  %95 = load i64, i64* @gr_description, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %93, %97
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp sgt i32 %100, 8192
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  br label %244

103:                                              ; preds = %87
  %104 = load i32, i32* %3, align 4
  %105 = icmp slt i32 %104, 256
  br i1 %105, label %106, label %138

106:                                              ; preds = %103
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 21, %107
  %109 = call i8* @write_alloc(i32 %108)
  %110 = bitcast i8* %109 to %struct.lev_search_text_short_entry*
  store %struct.lev_search_text_short_entry* %110, %struct.lev_search_text_short_entry** %7, align 8
  %111 = load i64, i64* @LEV_SEARCH_TEXT_SHORT, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %116 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  %117 = load i32*, i32** @I, align 8
  %118 = load i64, i64* @gr_start_date, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %122 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i32*, i32** @I, align 8
  %124 = load i64, i64* @gr_num, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %128 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32*, i32** @I, align 8
  %130 = load i64, i64* @gr_id, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %134 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %136 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** %2, align 8
  br label %170

138:                                              ; preds = %103
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 23, %139
  %141 = call i8* @write_alloc(i32 %140)
  %142 = bitcast i8* %141 to %struct.lev_search_text_long_entry*
  store %struct.lev_search_text_long_entry* %142, %struct.lev_search_text_long_entry** %8, align 8
  %143 = load i32, i32* @LEV_SEARCH_TEXT_LONG, align 4
  %144 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %145 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 8
  %146 = load i32*, i32** @I, align 8
  %147 = load i64, i64* @gr_start_date, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %151 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32*, i32** @I, align 8
  %153 = load i64, i64* @gr_num, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %157 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load i32*, i32** @I, align 8
  %159 = load i64, i64* @gr_id, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %163 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %3, align 4
  %165 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %166 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %168 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %167, i32 0, i32 4
  %169 = load i8*, i8** %168, align 8
  store i8* %169, i8** %2, align 8
  br label %170

170:                                              ; preds = %138, %106
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load i8*, i8** %2, align 8
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @memcpy(i8* %174, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @process_events_row.tags, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %6, align 4
  %178 = load i8*, i8** %2, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8* %180, i8** %2, align 8
  br label %181

181:                                              ; preds = %173, %170
  %182 = load i8**, i8*** @S, align 8
  %183 = load i64, i64* @gr_name, align 8
  %184 = getelementptr inbounds i8*, i8** %182, i64 %183
  %185 = load i8*, i8** %184, align 8
  store i8* %185, i8** %1, align 8
  %186 = load i32*, i32** @L, align 8
  %187 = load i64, i64* @gr_name, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %206, %181
  %191 = load i32, i32* %4, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %209

193:                                              ; preds = %190
  %194 = load i8*, i8** %1, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %1, align 8
  %196 = load i8, i8* %194, align 1
  %197 = zext i8 %196 to i32
  store i32 %197, i32* %5, align 4
  %198 = load i32, i32* %5, align 4
  %199 = icmp slt i32 %198, 32
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  store i32 32, i32* %5, align 4
  br label %201

201:                                              ; preds = %200, %193
  %202 = load i32, i32* %5, align 4
  %203 = trunc i32 %202 to i8
  %204 = load i8*, i8** %2, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %2, align 8
  store i8 %203, i8* %204, align 1
  br label %206

206:                                              ; preds = %201
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %4, align 4
  br label %190

209:                                              ; preds = %190
  %210 = load i8*, i8** %2, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %2, align 8
  store i8 9, i8* %210, align 1
  %212 = load i8**, i8*** @S, align 8
  %213 = load i64, i64* @gr_description, align 8
  %214 = getelementptr inbounds i8*, i8** %212, i64 %213
  %215 = load i8*, i8** %214, align 8
  store i8* %215, i8** %1, align 8
  %216 = load i32*, i32** @L, align 8
  %217 = load i64, i64* @gr_description, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %236, %209
  %221 = load i32, i32* %4, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %239

223:                                              ; preds = %220
  %224 = load i8*, i8** %1, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %1, align 8
  %226 = load i8, i8* %224, align 1
  %227 = zext i8 %226 to i32
  store i32 %227, i32* %5, align 4
  %228 = load i32, i32* %5, align 4
  %229 = icmp slt i32 %228, 32
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  store i32 32, i32* %5, align 4
  br label %231

231:                                              ; preds = %230, %223
  %232 = load i32, i32* %5, align 4
  %233 = trunc i32 %232 to i8
  %234 = load i8*, i8** %2, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %2, align 8
  store i8 %233, i8* %234, align 1
  br label %236

236:                                              ; preds = %231
  %237 = load i32, i32* %4, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %4, align 4
  br label %220

239:                                              ; preds = %220
  %240 = load i8*, i8** %2, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %2, align 8
  store i8 0, i8* %240, align 1
  %242 = load i32, i32* @adj_rec, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* @adj_rec, align 4
  br label %244

244:                                              ; preds = %239, %102, %27
  ret void
}

declare dso_local i32 @fits(i32) #1

declare dso_local i32 @make_tag(i8*, i8 signext, i32) #1

declare dso_local i8* @write_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
