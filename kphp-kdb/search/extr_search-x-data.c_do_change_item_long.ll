; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_do_change_item_long.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_do_change_item_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_text_short_entry = type { i32, i64, i8* }
%struct.lev_search_text_long_entry = type { i32, i64, i32, i8* }

@LEV_SEARCH_TEXT_SHORT = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_change_item_long(i32* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.lev_search_text_short_entry*, align 8
  %16 = alloca %struct.lev_search_text_long_entry*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 65536
  br i1 %18, label %26, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @fits(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22, %19, %5
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @advance_read_ptr(i32* %27, i32 %28)
  store i32 0, i32* %6, align 4
  br label %140

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 256
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i64, i64* @LEV_SEARCH_TEXT_SHORT, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 21, %38
  %40 = load i32, i32* %10, align 4
  %41 = call i8* @alloc_log_event(i64 %37, i32 %39, i32 %40)
  %42 = bitcast i8* %41 to %struct.lev_search_text_short_entry*
  store %struct.lev_search_text_short_entry* %42, %struct.lev_search_text_short_entry** %15, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %15, align 8
  %45 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %15, align 8
  %48 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %15, align 8
  %50 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %12, align 8
  br label %71

52:                                               ; preds = %30
  %53 = load i64, i64* @LEV_SEARCH_TEXT_LONG, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 23, %54
  %56 = load i32, i32* %10, align 4
  %57 = call i8* @alloc_log_event(i64 %53, i32 %55, i32 %56)
  %58 = bitcast i8* %57 to %struct.lev_search_text_long_entry*
  store %struct.lev_search_text_long_entry* %58, %struct.lev_search_text_long_entry** %16, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %16, align 8
  %61 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %16, align 8
  %64 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %16, align 8
  %67 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %16, align 8
  %69 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %12, align 8
  br label %71

71:                                               ; preds = %52, %33
  %72 = load i32*, i32** %7, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @read_in(i32* %72, i8* %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8* %84, i8** %13, align 8
  br label %85

85:                                               ; preds = %127, %71
  %86 = load i8*, i8** %12, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = icmp ult i8* %86, %87
  br i1 %88, label %89, label %128

89:                                               ; preds = %85
  %90 = load i8*, i8** %12, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 31
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %107, %94
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %12, align 8
  br label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %12, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = icmp ult i8* %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i8*, i8** %12, align 8
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp sge i32 %105, 64
  br label %107

107:                                              ; preds = %102, %98
  %108 = phi i1 [ false, %98 ], [ %106, %102 ]
  br i1 %108, label %95, label %109

109:                                              ; preds = %107
  br label %127

110:                                              ; preds = %89
  %111 = load i8*, i8** %12, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp slt i32 %113, 32
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i8*, i8** %12, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 9
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i8*, i8** %12, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %12, align 8
  store i8 32, i8* %121, align 1
  br label %126

123:                                              ; preds = %115, %110
  %124 = load i8*, i8** %12, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %12, align 8
  br label %126

126:                                              ; preds = %123, %120
  br label %127

127:                                              ; preds = %126, %109
  br label %85

128:                                              ; preds = %85
  %129 = load i8*, i8** %12, align 8
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %12, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = sub i64 0, %132
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i32, i32* %8, align 4
  %136 = load i64, i64* %9, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @change_item(i8* %134, i32 %135, i64 %136, i32 %137, i32 %138)
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %128, %26
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @fits(i64) #1

declare dso_local i32 @advance_read_ptr(i32*, i32) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @read_in(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @change_item(i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
