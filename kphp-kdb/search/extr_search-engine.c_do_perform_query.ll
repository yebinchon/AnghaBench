; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_perform_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_perform_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LAST_SEARCH_QUERY_BUFF_SIZE = common dso_local global i32 0, align 4
@last_search_query = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"TOO LONG QUERY\00", align 1
@copy_key = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"perform_query result = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_perform_query(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @LAST_SEARCH_QUERY_BUFF_SIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i64*, i64** @last_search_query, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @memcpy(i64* %11, i8* %12, i32 %13)
  %15 = load i64*, i64** @last_search_query, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 0, i64* %18, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load i64*, i64** @last_search_query, align 8
  %21 = call i32 @strcpy(i64* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %10
  %23 = call i32 @search_query_start(i32* %5)
  %24 = call i32 (...) @perform_query()
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @copy_key, align 4
  %28 = call i32 @search_query_end(i32* %5, i32 %25, i8* %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i32 @search_query_start(i32*) #1

declare dso_local i32 @perform_query(...) #1

declare dso_local i32 @search_query_end(i32*, i32, i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
