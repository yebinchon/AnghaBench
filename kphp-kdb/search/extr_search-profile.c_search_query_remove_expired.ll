; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-profile.c_search_query_remove_expired.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-profile.c_search_query_remove_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@search_query_remove_expired.t = internal global i32 0, align 4
@now = common dso_local global i32 0, align 4
@SQH_SIZE = common dso_local global i32 0, align 4
@SQH = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search_query_remove_expired() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load i32, i32* @now, align 4
  %4 = load i32, i32* @search_query_remove_expired.t, align 4
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @now, align 4
  %8 = add nsw i32 %7, 60
  store i32 %8, i32* @search_query_remove_expired.t, align 4
  br label %10

9:                                                ; preds = %0
  br label %59

10:                                               ; preds = %6
  store i32 1, i32* %1, align 4
  br label %11

11:                                               ; preds = %58, %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @SQH_SIZE, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SQH, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @now, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %15
  %25 = load i32, i32* @SQH_SIZE, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @SQH_SIZE, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SQH, align 8
  %28 = load i32, i32* @SQH_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %2, align 8
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @SQH_SIZE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %24
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SQH, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @search_query_heapify_front(%struct.TYPE_5__* %46, i32 %47)
  br label %53

49:                                               ; preds = %34
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @search_query_heapify_back(%struct.TYPE_5__* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %24
  br label %58

55:                                               ; preds = %15
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %55, %54
  br label %11

59:                                               ; preds = %9, %11
  ret void
}

declare dso_local i32 @search_query_heapify_front(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @search_query_heapify_back(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
