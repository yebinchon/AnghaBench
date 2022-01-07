; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_blog_posts_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_blog_posts_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_text_short_entry = type { i32, i8*, i8*, i8*, i64 }
%struct.lev_search_text_long_entry = type { i32, i32, i8*, i8*, i8*, i32 }

@I = common dso_local global i8** null, align 8
@bp_id = common dso_local global i64 0, align 8
@bp_user_id = common dso_local global i64 0, align 8
@bp_view_privacy = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@bp_title = common dso_local global i64 0, align 8
@bp_post = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_SHORT = common dso_local global i64 0, align 8
@bp_date = common dso_local global i64 0, align 8
@bp_ncom = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_LONG = common dso_local global i32 0, align 4
@S = common dso_local global i8** null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_blog_posts_row() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_search_text_short_entry*, align 8
  %7 = alloca %struct.lev_search_text_long_entry*, align 8
  %8 = load i8**, i8*** @I, align 8
  %9 = load i64, i64* @bp_id, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %0
  %14 = load i8**, i8*** @I, align 8
  %15 = load i64, i64* @bp_user_id, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @fits(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i8**, i8*** @I, align 8
  %22 = load i64, i64* @bp_view_privacy, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %13, %0
  br label %191

27:                                               ; preds = %20
  %28 = load i32*, i32** @L, align 8
  %29 = load i64, i64* @bp_title, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @L, align 8
  %33 = load i64, i64* @bp_post, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %31, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp sgt i32 %38, 49152
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %191

41:                                               ; preds = %27
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 256
  br i1 %43, label %44, label %86

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 21, %45
  %47 = call i8* @write_alloc(i32 %46)
  %48 = bitcast i8* %47 to %struct.lev_search_text_short_entry*
  store %struct.lev_search_text_short_entry* %48, %struct.lev_search_text_short_entry** %6, align 8
  %49 = load i64, i64* @LEV_SEARCH_TEXT_SHORT, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %54 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %53, i32 0, i32 4
  store i64 %52, i64* %54, align 8
  %55 = load i8**, i8*** @I, align 8
  %56 = load i64, i64* @bp_date, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %60 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i8**, i8*** @I, align 8
  %62 = load i64, i64* @bp_ncom, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %66 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i8**, i8*** @I, align 8
  %68 = load i64, i64* @bp_id, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = shl i64 %71, 32
  %73 = load i8**, i8*** @I, align 8
  %74 = load i64, i64* @bp_user_id, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = zext i32 %77 to i64
  %79 = add nsw i64 %72, %78
  %80 = trunc i64 %79 to i32
  %81 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %82 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %84 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %2, align 8
  br label %128

86:                                               ; preds = %41
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 23, %87
  %89 = call i8* @write_alloc(i32 %88)
  %90 = bitcast i8* %89 to %struct.lev_search_text_long_entry*
  store %struct.lev_search_text_long_entry* %90, %struct.lev_search_text_long_entry** %7, align 8
  %91 = load i32, i32* @LEV_SEARCH_TEXT_LONG, align 4
  %92 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %93 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load i8**, i8*** @I, align 8
  %95 = load i64, i64* @bp_date, align 8
  %96 = getelementptr inbounds i8*, i8** %94, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %99 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load i8**, i8*** @I, align 8
  %101 = load i64, i64* @bp_ncom, align 8
  %102 = getelementptr inbounds i8*, i8** %100, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %105 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load i8**, i8*** @I, align 8
  %107 = load i64, i64* @bp_id, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = shl i64 %110, 32
  %112 = load i8**, i8*** @I, align 8
  %113 = load i64, i64* @bp_user_id, align 8
  %114 = getelementptr inbounds i8*, i8** %112, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = ptrtoint i8* %115 to i32
  %117 = zext i32 %116 to i64
  %118 = add nsw i64 %111, %117
  %119 = trunc i64 %118 to i32
  %120 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %121 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %3, align 4
  %123 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %124 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %126 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %2, align 8
  br label %128

128:                                              ; preds = %86, %44
  %129 = load i8**, i8*** @S, align 8
  %130 = load i64, i64* @bp_title, align 8
  %131 = getelementptr inbounds i8*, i8** %129, i64 %130
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %1, align 8
  %133 = load i32*, i32** @L, align 8
  %134 = load i64, i64* @bp_title, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %153, %128
  %138 = load i32, i32* %4, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %137
  %141 = load i8*, i8** %1, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %1, align 8
  %143 = load i8, i8* %141, align 1
  %144 = zext i8 %143 to i32
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %145, 32
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i32 32, i32* %5, align 4
  br label %148

148:                                              ; preds = %147, %140
  %149 = load i32, i32* %5, align 4
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %2, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %2, align 8
  store i8 %150, i8* %151, align 1
  br label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %4, align 4
  br label %137

156:                                              ; preds = %137
  %157 = load i8*, i8** %2, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %2, align 8
  store i8 9, i8* %157, align 1
  %159 = load i8**, i8*** @S, align 8
  %160 = load i64, i64* @bp_post, align 8
  %161 = getelementptr inbounds i8*, i8** %159, i64 %160
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** %1, align 8
  %163 = load i32*, i32** @L, align 8
  %164 = load i64, i64* @bp_post, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %183, %156
  %168 = load i32, i32* %4, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  %171 = load i8*, i8** %1, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %1, align 8
  %173 = load i8, i8* %171, align 1
  %174 = zext i8 %173 to i32
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp slt i32 %175, 32
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  store i32 32, i32* %5, align 4
  br label %178

178:                                              ; preds = %177, %170
  %179 = load i32, i32* %5, align 4
  %180 = trunc i32 %179 to i8
  %181 = load i8*, i8** %2, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %2, align 8
  store i8 %180, i8* %181, align 1
  br label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %4, align 4
  br label %167

186:                                              ; preds = %167
  %187 = load i8*, i8** %2, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %2, align 8
  store i8 0, i8* %187, align 1
  %189 = load i32, i32* @adj_rec, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* @adj_rec, align 4
  br label %191

191:                                              ; preds = %186, %40, %26
  ret void
}

declare dso_local i32 @fits(i8*) #1

declare dso_local i8* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
