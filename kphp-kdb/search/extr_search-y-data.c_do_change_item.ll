; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_do_change_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_do_change_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_text_short_entry = type { i32, i64, i8* }
%struct.lev_search_text_long_entry = type { i32, i64, i32, i8* }

@LEV_SEARCH_TEXT_SHORT = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_change_item(i8* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.lev_search_text_short_entry*, align 8
  %15 = alloca %struct.lev_search_text_long_entry*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 65536
  br i1 %17, label %25, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @fits(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %18, %5
  store i32 0, i32* %6, align 4
  br label %149

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i64, i64* @LEV_SEARCH_TEXT_SHORT, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 21, %34
  %36 = load i32, i32* %10, align 4
  %37 = call i8* @alloc_log_event(i64 %33, i32 %35, i32 %36)
  %38 = bitcast i8* %37 to %struct.lev_search_text_short_entry*
  store %struct.lev_search_text_short_entry* %38, %struct.lev_search_text_short_entry** %14, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %14, align 8
  %41 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %14, align 8
  %44 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %14, align 8
  %46 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %12, align 8
  br label %67

48:                                               ; preds = %26
  %49 = load i64, i64* @LEV_SEARCH_TEXT_LONG, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 23, %50
  %52 = load i32, i32* %10, align 4
  %53 = call i8* @alloc_log_event(i64 %49, i32 %51, i32 %52)
  %54 = bitcast i8* %53 to %struct.lev_search_text_long_entry*
  store %struct.lev_search_text_long_entry* %54, %struct.lev_search_text_long_entry** %15, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %15, align 8
  %57 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %15, align 8
  %60 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %15, align 8
  %63 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %15, align 8
  %65 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %12, align 8
  br label %67

67:                                               ; preds = %48, %29
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %136, %67
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %137

72:                                               ; preds = %68
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 31
  br i1 %79, label %80, label %105

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %102, %80
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %12, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %12, align 8
  store i8 %87, i8* %88, align 1
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp sge i32 %100, 64
  br label %102

102:                                              ; preds = %94, %90
  %103 = phi i1 [ false, %90 ], [ %101, %94 ]
  br i1 %103, label %81, label %104

104:                                              ; preds = %102
  br label %136

105:                                              ; preds = %72
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp slt i32 %111, 32
  br i1 %112, label %113, label %126

113:                                              ; preds = %105
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 9
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = load i8*, i8** %12, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %12, align 8
  store i8 32, i8* %122, align 1
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %135

126:                                              ; preds = %113, %105
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = load i8*, i8** %12, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %12, align 8
  store i8 %132, i8* %133, align 1
  br label %135

135:                                              ; preds = %126, %121
  br label %136

136:                                              ; preds = %135, %104
  br label %68

137:                                              ; preds = %68
  %138 = load i8*, i8** %12, align 8
  store i8 0, i8* %138, align 1
  %139 = load i8*, i8** %12, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = sub i64 0, %141
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  %144 = load i32, i32* %8, align 4
  %145 = load i64, i64* %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @change_item(i8* %143, i32 %144, i64 %145, i32 %146, i32 %147)
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %137, %25
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i32 @fits(i64) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @change_item(i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
