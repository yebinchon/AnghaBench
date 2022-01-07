; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_video_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_video_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_text_short_entry = type { i32, i32, i8*, i64, i64 }
%struct.lev_search_text_long_entry = type { i32, i32, i32, i8*, i64, i32 }

@I = common dso_local global i32* null, align 8
@vi_source = common dso_local global i64 0, align 8
@vi_uploaded = common dso_local global i64 0, align 8
@vi_privacy = common dso_local global i64 0, align 8
@vi_owner_id = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@vi_title = common dso_local global i64 0, align 8
@vi_description = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_SHORT = common dso_local global i64 0, align 8
@vi_duration = common dso_local global i64 0, align 8
@vi_id = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_LONG = common dso_local global i32 0, align 4
@S = common dso_local global i8** null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_video_row() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_search_text_short_entry*, align 8
  %7 = alloca %struct.lev_search_text_long_entry*, align 8
  %8 = load i32*, i32** @I, align 8
  %9 = load i64, i64* @vi_source, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %0
  %14 = load i32*, i32** @I, align 8
  %15 = load i64, i64* @vi_uploaded, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %32, label %19

19:                                               ; preds = %13
  %20 = load i32*, i32** @I, align 8
  %21 = load i64, i64* @vi_privacy, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load i32*, i32** @I, align 8
  %27 = load i64, i64* @vi_owner_id, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @fits(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25, %19, %13, %0
  br label %181

33:                                               ; preds = %25
  %34 = load i32*, i32** @L, align 8
  %35 = load i64, i64* @vi_title, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @L, align 8
  %39 = load i64, i64* @vi_description, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %37, %41
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp sgt i32 %44, 4095
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %181

47:                                               ; preds = %33
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %50, label %84

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 21, %51
  %53 = call i8* @write_alloc(i32 %52)
  %54 = bitcast i8* %53 to %struct.lev_search_text_short_entry*
  store %struct.lev_search_text_short_entry* %54, %struct.lev_search_text_short_entry** %6, align 8
  %55 = load i64, i64* @LEV_SEARCH_TEXT_SHORT, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %60 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %62 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load i32*, i32** @I, align 8
  %64 = load i64, i64* @vi_duration, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %68 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32*, i32** @I, align 8
  %70 = load i64, i64* @vi_id, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 32
  %74 = load i32*, i32** @I, align 8
  %75 = load i64, i64* @vi_owner_id, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %73, %77
  %79 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %80 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %6, align 8
  %82 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %2, align 8
  br label %118

84:                                               ; preds = %47
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 23, %85
  %87 = call i8* @write_alloc(i32 %86)
  %88 = bitcast i8* %87 to %struct.lev_search_text_long_entry*
  store %struct.lev_search_text_long_entry* %88, %struct.lev_search_text_long_entry** %7, align 8
  %89 = load i32, i32* @LEV_SEARCH_TEXT_LONG, align 4
  %90 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %91 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %93 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %92, i32 0, i32 4
  store i64 0, i64* %93, align 8
  %94 = load i32*, i32** @I, align 8
  %95 = load i64, i64* @vi_duration, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %99 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32*, i32** @I, align 8
  %101 = load i64, i64* @vi_id, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 32
  %105 = load i32*, i32** @I, align 8
  %106 = load i64, i64* @vi_owner_id, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %104, %108
  %110 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %111 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %114 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %7, align 8
  %116 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %2, align 8
  br label %118

118:                                              ; preds = %84, %50
  %119 = load i8**, i8*** @S, align 8
  %120 = load i64, i64* @vi_title, align 8
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %1, align 8
  %123 = load i32*, i32** @L, align 8
  %124 = load i64, i64* @vi_title, align 8
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
  %150 = load i64, i64* @vi_description, align 8
  %151 = getelementptr inbounds i8*, i8** %149, i64 %150
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %1, align 8
  %153 = load i32*, i32** @L, align 8
  %154 = load i64, i64* @vi_description, align 8
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

181:                                              ; preds = %176, %46, %32
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
