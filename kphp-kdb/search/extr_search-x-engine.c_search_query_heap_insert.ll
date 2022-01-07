; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_search_query_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_search_query_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.search_query_heap_en = type { i64, i32 }

@SQH_SIZE = common dso_local global i32 0, align 4
@SEARCH_QUERY_HEAP_SIZE = common dso_local global i32 0, align 4
@SQH = common dso_local global %struct.search_query_heap_en* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search_query_heap_insert(%struct.search_query_heap_en* %0) #0 {
  %2 = alloca %struct.search_query_heap_en*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.search_query_heap_en* %0, %struct.search_query_heap_en** %2, align 8
  %7 = load i32, i32* @SQH_SIZE, align 4
  %8 = load i32, i32* @SEARCH_QUERY_HEAP_SIZE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %81

10:                                               ; preds = %1
  %11 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** @SQH, align 8
  %12 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %11, i64 1
  %13 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** @SQH, align 8
  %16 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %15, i64 1
  %17 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @strlen(i32 %18)
  %20 = add nsw i64 %19, 1
  %21 = call i32 @zzfree(i32 %14, i64 %20)
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %10, %63
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SQH_SIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %74

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SQH_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** @SQH, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %34, i64 %36
  %38 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** @SQH, align 8
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %40, i64 %43
  %45 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %39, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %33, %29
  %52 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** %2, align 8
  %53 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** @SQH, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %55, i64 %57
  %59 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %54, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %74

63:                                               ; preds = %51
  %64 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** @SQH, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %64, i64 %66
  %68 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** @SQH, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %68, i64 %70
  %72 = call i32 @memcpy(%struct.search_query_heap_en* %67, %struct.search_query_heap_en* %71, i32 16)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %3, align 4
  br label %22

74:                                               ; preds = %62, %28
  %75 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** @SQH, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %75, i64 %77
  %79 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** %2, align 8
  %80 = call i32 @memcpy(%struct.search_query_heap_en* %78, %struct.search_query_heap_en* %79, i32 16)
  br label %119

81:                                               ; preds = %1
  %82 = load i32, i32* @SQH_SIZE, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @SQH_SIZE, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %101, %81
  %85 = load i32, i32* %5, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %112

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = ashr i32 %88, 1
  store i32 %89, i32* %6, align 4
  %90 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** @SQH, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %90, i64 %92
  %94 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** %2, align 8
  %97 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sle i64 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %112

101:                                              ; preds = %87
  %102 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** @SQH, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %102, i64 %104
  %106 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** @SQH, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %106, i64 %108
  %110 = call i32 @memcpy(%struct.search_query_heap_en* %105, %struct.search_query_heap_en* %109, i32 16)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %5, align 4
  br label %84

112:                                              ; preds = %100, %84
  %113 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** @SQH, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %113, i64 %115
  %117 = load %struct.search_query_heap_en*, %struct.search_query_heap_en** %2, align 8
  %118 = call i32 @memcpy(%struct.search_query_heap_en* %116, %struct.search_query_heap_en* %117, i32 16)
  br label %119

119:                                              ; preds = %112, %74
  ret void
}

declare dso_local i32 @zzfree(i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(%struct.search_query_heap_en*, %struct.search_query_heap_en*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
