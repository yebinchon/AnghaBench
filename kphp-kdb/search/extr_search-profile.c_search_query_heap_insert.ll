; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-profile.c_search_query_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-profile.c_search_query_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQH_SIZE = common dso_local global i64 0, align 8
@SEARCH_QUERY_HEAP_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @search_query_heap_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_query_heap_insert(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @SQH_SIZE, align 8
  %4 = load i64, i64* @SEARCH_QUERY_HEAP_SIZE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @search_query_heapify_front(i32* %7, i32 1)
  br label %14

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = load i64, i64* @SQH_SIZE, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* @SQH_SIZE, align 8
  %13 = call i32 @search_query_heapify_back(i32* %10, i64 %12)
  br label %14

14:                                               ; preds = %9, %6
  ret void
}

declare dso_local i32 @search_query_heapify_front(i32*, i32) #1

declare dso_local i32 @search_query_heapify_back(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
