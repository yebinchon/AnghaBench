; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_memlite_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_memlite_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_text_short_entry = type { i32, i32, i32, i8*, i64 }
%struct.lev_search_text_long_entry = type { i32, i32, i32, i32, i8*, i32 }

@I = common dso_local global i32* null, align 8
@ml_id = common dso_local global i64 0, align 8
@ml_profile_privacy = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@ml_first_name = common dso_local global i64 0, align 8
@ml_last_name = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_SHORT = common dso_local global i64 0, align 8
@ml_rate = common dso_local global i64 0, align 8
@ml_cute = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_LONG = common dso_local global i32 0, align 4
@S = common dso_local global i8** null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_memlite_row() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_search_text_short_entry*, align 8
  %7 = alloca %struct.lev_search_text_long_entry*, align 8
  %8 = load i32*, i32** @I, align 8
  %9 = load i64, i64* @ml_id, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %0
  %14 = load i32*, i32** @I, align 8
  %15 = load i64, i64* @ml_id, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @fits(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i32*, i32** @I, align 8
  %22 = load i64, i64* @ml_profile_privacy, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %13, %0
  br label %171

27:                                               ; preds = %20
  %28 = load i32*, i32** @L, align 8
  %29 = load i64, i64* @ml_first_name, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @L, align 8
  %33 = load i64, i64* @ml_last_name, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %31, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp sgt i32 %38, 1024
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %171

41:                                               ; preds = %27
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 256
  br i1 %43, label %44, label %76

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
  %55 = load i32*, i32** @I, align 8
  %56 = load i64, i64* @ml_rate, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %60 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** @I, align 8
  %62 = load i64, i64* @ml_cute, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %66 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** @I, align 8
  %68 = load i64, i64* @ml_id, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %72 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %74 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %2, align 8
  br label %108

76:                                               ; preds = %41
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 23, %77
  %79 = call i8* @write_alloc(i32 %78)
  %80 = bitcast i8* %79 to %struct.lev_search_text_long_entry*
  store %struct.lev_search_text_long_entry* %80, %struct.lev_search_text_long_entry** %7, align 8
  %81 = load i32, i32* @LEV_SEARCH_TEXT_LONG, align 4
  %82 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %83 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load i32*, i32** @I, align 8
  %85 = load i64, i64* @ml_rate, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %89 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32*, i32** @I, align 8
  %91 = load i64, i64* @ml_cute, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %95 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** @I, align 8
  %97 = load i64, i64* @ml_id, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %101 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %104 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %106 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %105, i32 0, i32 4
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %2, align 8
  br label %108

108:                                              ; preds = %76, %44
  %109 = load i8**, i8*** @S, align 8
  %110 = load i64, i64* @ml_first_name, align 8
  %111 = getelementptr inbounds i8*, i8** %109, i64 %110
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %1, align 8
  %113 = load i32*, i32** @L, align 8
  %114 = load i64, i64* @ml_first_name, align 8
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
  store i8 9, i8* %137, align 1
  %139 = load i8**, i8*** @S, align 8
  %140 = load i64, i64* @ml_last_name, align 8
  %141 = getelementptr inbounds i8*, i8** %139, i64 %140
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %1, align 8
  %143 = load i32*, i32** @L, align 8
  %144 = load i64, i64* @ml_last_name, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %163, %136
  %148 = load i32, i32* %4, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %147
  %151 = load i8*, i8** %1, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %1, align 8
  %153 = load i8, i8* %151, align 1
  %154 = zext i8 %153 to i32
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp slt i32 %155, 32
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32 32, i32* %5, align 4
  br label %158

158:                                              ; preds = %157, %150
  %159 = load i32, i32* %5, align 4
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %2, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %2, align 8
  store i8 %160, i8* %161, align 1
  br label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %4, align 4
  br label %147

166:                                              ; preds = %147
  %167 = load i8*, i8** %2, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %2, align 8
  store i8 0, i8* %167, align 1
  %169 = load i32, i32* @adj_rec, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* @adj_rec, align 4
  br label %171

171:                                              ; preds = %166, %40, %26
  ret void
}

declare dso_local i32 @fits(i32) #1

declare dso_local i8* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
