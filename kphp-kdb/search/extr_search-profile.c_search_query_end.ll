; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-profile.c_search_query_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-profile.c_search_query_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i64 }

@SQH_SIZE = common dso_local global i64 0, align 8
@SEARCH_QUERY_HEAP_SIZE = common dso_local global i64 0, align 8
@SQH = common dso_local global %struct.TYPE_8__* null, align 8
@now = common dso_local global i64 0, align 8
@SEARCH_QUERY_EXPIRATION_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search_query_end(%struct.TYPE_7__* %0, i32 %1, i8* %2, void (%struct.TYPE_7__*, i8*)* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca void (%struct.TYPE_7__*, i8*)*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store void (%struct.TYPE_7__*, i8*)* %3, void (%struct.TYPE_7__*, i8*)** %8, align 8
  %9 = call i64 (...) @get_rusage_time()
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, %9
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* @SQH_SIZE, align 8
  %15 = load i64, i64* @SEARCH_QUERY_HEAP_SIZE, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SQH, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %17, %4
  %27 = load void (%struct.TYPE_7__*, i8*)*, void (%struct.TYPE_7__*, i8*)** %8, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = load i8*, i8** %7, align 8
  call void %27(%struct.TYPE_7__* %28, i8* %29)
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* @now, align 8
  %34 = load i64, i64* @SEARCH_QUERY_EXPIRATION_TIME, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = call i32 @search_query_heap_insert(%struct.TYPE_7__* %38)
  br label %40

40:                                               ; preds = %26, %17
  ret void
}

declare dso_local i64 @get_rusage_time(...) #1

declare dso_local i32 @search_query_heap_insert(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
