; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_minifeed_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_minifeed_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_text_short_entry = type { i32, i8*, i64, i8*, i64 }
%struct.lev_search_text_long_entry = type { i32, i32, i8*, i64, i8*, i32 }

@I = common dso_local global i8** null, align 8
@mf_id = common dso_local global i64 0, align 8
@mf_user_id = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@mf_text = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_SHORT = common dso_local global i64 0, align 8
@mf_created = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_LONG = common dso_local global i32 0, align 4
@S = common dso_local global i8** null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_minifeed_row() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_search_text_short_entry*, align 8
  %7 = alloca %struct.lev_search_text_long_entry*, align 8
  %8 = load i8**, i8*** @I, align 8
  %9 = load i64, i64* @mf_id, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %0
  %14 = load i8**, i8*** @I, align 8
  %15 = load i64, i64* @mf_user_id, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @fits(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %0
  br label %141

21:                                               ; preds = %13
  %22 = load i32*, i32** @L, align 8
  %23 = load i64, i64* @mf_text, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 8192
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %141

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %32, label %70

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 21, %33
  %35 = call i8* @write_alloc(i32 %34)
  %36 = bitcast i8* %35 to %struct.lev_search_text_short_entry*
  store %struct.lev_search_text_short_entry* %36, %struct.lev_search_text_short_entry** %6, align 8
  %37 = load i64, i64* @LEV_SEARCH_TEXT_SHORT, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %42 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %41, i32 0, i32 4
  store i64 %40, i64* %42, align 8
  %43 = load i8**, i8*** @I, align 8
  %44 = load i64, i64* @mf_created, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %48 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %50 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load i8**, i8*** @I, align 8
  %52 = load i64, i64* @mf_id, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = shl i64 %55, 32
  %57 = load i8**, i8*** @I, align 8
  %58 = load i64, i64* @mf_user_id, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %56, %62
  %64 = trunc i64 %63 to i32
  %65 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %66 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %68 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %2, align 8
  br label %108

70:                                               ; preds = %29
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 23, %71
  %73 = call i8* @write_alloc(i32 %72)
  %74 = bitcast i8* %73 to %struct.lev_search_text_long_entry*
  store %struct.lev_search_text_long_entry* %74, %struct.lev_search_text_long_entry** %7, align 8
  %75 = load i32, i32* @LEV_SEARCH_TEXT_LONG, align 4
  %76 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %77 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load i8**, i8*** @I, align 8
  %79 = load i64, i64* @mf_created, align 8
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %83 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %85 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load i8**, i8*** @I, align 8
  %87 = load i64, i64* @mf_id, align 8
  %88 = getelementptr inbounds i8*, i8** %86, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = shl i64 %90, 32
  %92 = load i8**, i8*** @I, align 8
  %93 = load i64, i64* @mf_user_id, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = zext i32 %96 to i64
  %98 = add nsw i64 %91, %97
  %99 = trunc i64 %98 to i32
  %100 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %101 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %104 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %106 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %2, align 8
  br label %108

108:                                              ; preds = %70, %32
  %109 = load i8**, i8*** @S, align 8
  %110 = load i64, i64* @mf_text, align 8
  %111 = getelementptr inbounds i8*, i8** %109, i64 %110
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %1, align 8
  %113 = load i32*, i32** @L, align 8
  %114 = load i64, i64* @mf_text, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %133, %108
  %118 = load i32, i32* %4, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = load i8*, i8** %1, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %1, align 8
  %123 = load i8, i8* %121, align 1
  %124 = zext i8 %123 to i32
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %125, 32
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i32 32, i32* %5, align 4
  br label %128

128:                                              ; preds = %127, %120
  %129 = load i32, i32* %5, align 4
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %2, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %2, align 8
  store i8 %130, i8* %131, align 1
  br label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %4, align 4
  br label %117

136:                                              ; preds = %117
  %137 = load i8*, i8** %2, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %2, align 8
  store i8 0, i8* %137, align 1
  %139 = load i32, i32* @adj_rec, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* @adj_rec, align 4
  br label %141

141:                                              ; preds = %136, %28, %20
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
