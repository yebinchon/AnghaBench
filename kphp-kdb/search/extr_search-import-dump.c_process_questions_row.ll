; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_questions_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_questions_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_text_short_entry = type { i32, i8*, i64, i64, i64 }
%struct.lev_search_text_long_entry = type { i32, i32, i8*, i64, i64, i32 }

@process_questions_row.tags = internal global [256 x i8] zeroinitializer, align 16
@I = common dso_local global i64* null, align 8
@qu_id = common dso_local global i64 0, align 8
@qu_owner_id = common dso_local global i64 0, align 8
@qu_type = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@qu_message = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_SHORT = common dso_local global i64 0, align 8
@qu_date = common dso_local global i64 0, align 8
@qu_num = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_LONG = common dso_local global i32 0, align 4
@S = common dso_local global i8** null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_questions_row() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_search_text_short_entry*, align 8
  %8 = alloca %struct.lev_search_text_long_entry*, align 8
  %9 = load i64*, i64** @I, align 8
  %10 = load i64, i64* @qu_id, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %0
  %15 = load i64*, i64** @I, align 8
  %16 = load i64, i64* @qu_owner_id, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @fits(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %0
  br label %188

22:                                               ; preds = %14
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @process_questions_row.tags, i64 0, i64 0), i8** %1, align 8
  %23 = load i64*, i64** @I, align 8
  %24 = load i64, i64* @qu_type, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i8*, i8** %1, align 8
  %30 = load i64*, i64** @I, align 8
  %31 = load i64, i64* @qu_type, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @make_tag(i8* %29, i8 signext 84, i64 %33)
  %35 = load i8*, i8** %1, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %1, align 8
  br label %38

38:                                               ; preds = %28, %22
  %39 = load i8*, i8** %1, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = sub i64 %40, ptrtoint ([256 x i8]* @process_questions_row.tags to i64)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i8*, i8** %1, align 8
  store i8 32, i8* %46, align 1
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** @L, align 8
  %52 = load i64, i64* @qu_message, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %50, %54
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp sgt i32 %56, 8192
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %188

59:                                               ; preds = %49
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, 256
  br i1 %61, label %62, label %103

62:                                               ; preds = %59
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 21, %63
  %65 = call i8* @write_alloc(i32 %64)
  %66 = bitcast i8* %65 to %struct.lev_search_text_short_entry*
  store %struct.lev_search_text_short_entry* %66, %struct.lev_search_text_short_entry** %7, align 8
  %67 = load i64, i64* @LEV_SEARCH_TEXT_SHORT, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %72 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %71, i32 0, i32 4
  store i64 %70, i64* %72, align 8
  %73 = load i64*, i64** @I, align 8
  %74 = load i64, i64* @qu_date, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %78 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load i64*, i64** @I, align 8
  %80 = load i64, i64* @qu_num, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %84 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load i64*, i64** @I, align 8
  %86 = load i64, i64* @qu_id, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = shl i64 %88, 32
  %90 = load i64*, i64** @I, align 8
  %91 = load i64, i64* @qu_owner_id, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = zext i32 %94 to i64
  %96 = add nsw i64 %89, %95
  %97 = trunc i64 %96 to i32
  %98 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %99 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %101 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %2, align 8
  br label %144

103:                                              ; preds = %59
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 23, %104
  %106 = call i8* @write_alloc(i32 %105)
  %107 = bitcast i8* %106 to %struct.lev_search_text_long_entry*
  store %struct.lev_search_text_long_entry* %107, %struct.lev_search_text_long_entry** %8, align 8
  %108 = load i32, i32* @LEV_SEARCH_TEXT_LONG, align 4
  %109 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %110 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 8
  %111 = load i64*, i64** @I, align 8
  %112 = load i64, i64* @qu_date, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %116 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  %117 = load i64*, i64** @I, align 8
  %118 = load i64, i64* @qu_num, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %122 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %121, i32 0, i32 3
  store i64 %120, i64* %122, align 8
  %123 = load i64*, i64** @I, align 8
  %124 = load i64, i64* @qu_id, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = shl i64 %126, 32
  %128 = load i64*, i64** @I, align 8
  %129 = load i64, i64* @qu_owner_id, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = zext i32 %132 to i64
  %134 = add nsw i64 %127, %133
  %135 = trunc i64 %134 to i32
  %136 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %137 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %3, align 4
  %139 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %140 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %142 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %2, align 8
  br label %144

144:                                              ; preds = %103, %62
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load i8*, i8** %2, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @memcpy(i8* %148, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @process_questions_row.tags, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = load i8*, i8** %2, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %2, align 8
  br label %155

155:                                              ; preds = %147, %144
  %156 = load i8**, i8*** @S, align 8
  %157 = load i64, i64* @qu_message, align 8
  %158 = getelementptr inbounds i8*, i8** %156, i64 %157
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %1, align 8
  %160 = load i32*, i32** @L, align 8
  %161 = load i64, i64* @qu_message, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %180, %155
  %165 = load i32, i32* %4, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %164
  %168 = load i8*, i8** %1, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %1, align 8
  %170 = load i8, i8* %168, align 1
  %171 = zext i8 %170 to i32
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp slt i32 %172, 32
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store i32 32, i32* %5, align 4
  br label %175

175:                                              ; preds = %174, %167
  %176 = load i32, i32* %5, align 4
  %177 = trunc i32 %176 to i8
  %178 = load i8*, i8** %2, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %2, align 8
  store i8 %177, i8* %178, align 1
  br label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %4, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %4, align 4
  br label %164

183:                                              ; preds = %164
  %184 = load i8*, i8** %2, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %2, align 8
  store i8 0, i8* %184, align 1
  %186 = load i32, i32* @adj_rec, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* @adj_rec, align 4
  br label %188

188:                                              ; preds = %183, %58, %21
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
