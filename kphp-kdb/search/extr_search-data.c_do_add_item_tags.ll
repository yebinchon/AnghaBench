; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_add_item_tags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_add_item_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_item_add_tags = type { i64, i8* }

@LEV_SEARCH_ITEM_ADD_TAGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_add_item_tags(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_search_item_add_tags*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 256
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @fits(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %13, %3
  store i32 0, i32* %4, align 4
  br label %118

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 256
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* @LEV_SEARCH_ITEM_ADD_TAGS, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 13, %30
  %32 = call %struct.lev_search_item_add_tags* @alloc_log_event(i64 %29, i32 %31, i32 0)
  store %struct.lev_search_item_add_tags* %32, %struct.lev_search_item_add_tags** %10, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.lev_search_item_add_tags*, %struct.lev_search_item_add_tags** %10, align 8
  %35 = getelementptr inbounds %struct.lev_search_item_add_tags, %struct.lev_search_item_add_tags* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.lev_search_item_add_tags*, %struct.lev_search_item_add_tags** %10, align 8
  %37 = getelementptr inbounds %struct.lev_search_item_add_tags, %struct.lev_search_item_add_tags* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %107, %21
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %108

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 31
  br i1 %50, label %51, label %76

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %73, %51
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  store i8 %58, i8* %59, align 1
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp sge i32 %71, 64
  br label %73

73:                                               ; preds = %65, %61
  %74 = phi i1 [ false, %61 ], [ %72, %65 ]
  br i1 %74, label %52, label %75

75:                                               ; preds = %73
  br label %107

76:                                               ; preds = %43
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp slt i32 %82, 32
  br i1 %83, label %84, label %97

84:                                               ; preds = %76
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 9
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %8, align 8
  store i8 32, i8* %93, align 1
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %106

97:                                               ; preds = %84, %76
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %8, align 8
  store i8 %103, i8* %104, align 1
  br label %106

106:                                              ; preds = %97, %92
  br label %107

107:                                              ; preds = %106, %75
  br label %39

108:                                              ; preds = %39
  %109 = load i8*, i8** %8, align 8
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i32, i32* %6, align 4
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @add_item_tags(i8* %114, i32 %115, i64 %116)
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %108, %20
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @fits(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.lev_search_item_add_tags* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @add_item_tags(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
