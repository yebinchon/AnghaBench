; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_audio_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_audio_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_text_short_entry = type { i32, i32, i32, i8*, i64 }
%struct.lev_search_text_long_entry = type { i32, i32, i32, i32, i8*, i32 }

@I = common dso_local global i32* null, align 8
@au_source = common dso_local global i64 0, align 8
@au_owner_id = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@au_performer = common dso_local global i64 0, align 8
@au_title = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_SHORT = common dso_local global i64 0, align 8
@au_has_lyrics = common dso_local global i64 0, align 8
@au_duration = common dso_local global i64 0, align 8
@au_id = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_LONG = common dso_local global i32 0, align 4
@S = common dso_local global i8** null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_audio_row() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_search_text_short_entry*, align 8
  %7 = alloca %struct.lev_search_text_long_entry*, align 8
  %8 = load i32*, i32** @I, align 8
  %9 = load i64, i64* @au_source, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %0
  %14 = load i32*, i32** @I, align 8
  %15 = load i64, i64* @au_owner_id, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @fits(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %0
  br label %181

21:                                               ; preds = %13
  %22 = load i32*, i32** @L, align 8
  %23 = load i64, i64* @au_performer, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @L, align 8
  %27 = load i64, i64* @au_title, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %25, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp sgt i32 %32, 4095
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %181

35:                                               ; preds = %21
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 256
  br i1 %37, label %38, label %78

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 21, %39
  %41 = call i8* @write_alloc(i32 %40)
  %42 = bitcast i8* %41 to %struct.lev_search_text_short_entry*
  store %struct.lev_search_text_short_entry* %42, %struct.lev_search_text_short_entry** %6, align 8
  %43 = load i64, i64* @LEV_SEARCH_TEXT_SHORT, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %48 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load i32*, i32** @I, align 8
  %50 = load i64, i64* @au_has_lyrics, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %56 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** @I, align 8
  %58 = load i64, i64* @au_duration, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %62 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** @I, align 8
  %64 = load i64, i64* @au_id, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 32
  %68 = load i32*, i32** @I, align 8
  %69 = load i64, i64* @au_owner_id, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add i32 %67, %71
  %73 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %74 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %76 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %2, align 8
  br label %118

78:                                               ; preds = %35
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 23, %79
  %81 = call i8* @write_alloc(i32 %80)
  %82 = bitcast i8* %81 to %struct.lev_search_text_long_entry*
  store %struct.lev_search_text_long_entry* %82, %struct.lev_search_text_long_entry** %7, align 8
  %83 = load i32, i32* @LEV_SEARCH_TEXT_LONG, align 4
  %84 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %85 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 8
  %86 = load i32*, i32** @I, align 8
  %87 = load i64, i64* @au_has_lyrics, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %93 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32*, i32** @I, align 8
  %95 = load i64, i64* @au_duration, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %99 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** @I, align 8
  %101 = load i64, i64* @au_id, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 32
  %105 = load i32*, i32** @I, align 8
  %106 = load i64, i64* @au_owner_id, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %104, %108
  %110 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %111 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %114 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %116 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %115, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %2, align 8
  br label %118

118:                                              ; preds = %78, %38
  %119 = load i8**, i8*** @S, align 8
  %120 = load i64, i64* @au_performer, align 8
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %1, align 8
  %123 = load i32*, i32** @L, align 8
  %124 = load i64, i64* @au_performer, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %143, %118
  %128 = load i32, i32* %4, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %127
  %131 = load i8*, i8** %1, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %1, align 8
  %133 = load i8, i8* %131, align 1
  %134 = zext i8 %133 to i32
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp slt i32 %135, 32
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 32, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %130
  %139 = load i32, i32* %5, align 4
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %2, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %2, align 8
  store i8 %140, i8* %141, align 1
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %4, align 4
  br label %127

146:                                              ; preds = %127
  %147 = load i8*, i8** %2, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %2, align 8
  store i8 9, i8* %147, align 1
  %149 = load i8**, i8*** @S, align 8
  %150 = load i64, i64* @au_title, align 8
  %151 = getelementptr inbounds i8*, i8** %149, i64 %150
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %1, align 8
  %153 = load i32*, i32** @L, align 8
  %154 = load i64, i64* @au_title, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %173, %146
  %158 = load i32, i32* %4, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %157
  %161 = load i8*, i8** %1, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %1, align 8
  %163 = load i8, i8* %161, align 1
  %164 = zext i8 %163 to i32
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp slt i32 %165, 32
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  store i32 32, i32* %5, align 4
  br label %168

168:                                              ; preds = %167, %160
  %169 = load i32, i32* %5, align 4
  %170 = trunc i32 %169 to i8
  %171 = load i8*, i8** %2, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %2, align 8
  store i8 %170, i8* %171, align 1
  br label %173

173:                                              ; preds = %168
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %4, align 4
  br label %157

176:                                              ; preds = %157
  %177 = load i8*, i8** %2, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %2, align 8
  store i8 0, i8* %177, align 1
  %179 = load i32, i32* @adj_rec, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* @adj_rec, align 4
  br label %181

181:                                              ; preds = %176, %34, %20
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
