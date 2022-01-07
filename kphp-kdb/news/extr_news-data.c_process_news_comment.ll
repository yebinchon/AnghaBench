; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_process_news_comment.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_process_news_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_news_comment = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__* }

@now = common dso_local global i64 0, align 8
@min_logevent_time = common dso_local global i64 0, align 8
@COMM_MODE = common dso_local global i32 0, align 4
@index_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"new comment stored: place=%d:%d:%d item=%d date=%d tag=%d\0A\00", align 1
@items_removed_in_process_new = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_news_comment*)* @process_news_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_news_comment(%struct.lev_news_comment* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_news_comment*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.lev_news_comment* %0, %struct.lev_news_comment** %3, align 8
  %8 = load i64, i64* @now, align 8
  %9 = load i64, i64* @min_logevent_time, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

12:                                               ; preds = %1
  %13 = load %struct.lev_news_comment*, %struct.lev_news_comment** %3, align 8
  %14 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.lev_news_comment*, %struct.lev_news_comment** %3, align 8
  %19 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lev_news_comment*, %struct.lev_news_comment** %3, align 8
  %22 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @check_obj(i32 %17, i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = load i32, i32* @COMM_MODE, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %12
  store i32 -1, i32* %2, align 4
  br label %111

30:                                               ; preds = %26
  %31 = load i64, i64* @index_mode, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %111

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.lev_news_comment*, %struct.lev_news_comment** %3, align 8
  %37 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.lev_news_comment*, %struct.lev_news_comment** %3, align 8
  %40 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_6__* @get_place_f(i32 %35, i32 %38, i32 %41, i32 1)
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %5, align 8
  %43 = call %struct.TYPE_7__* (...) @new_comment()
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %6, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %7, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = bitcast %struct.TYPE_6__* %53 to %struct.TYPE_7__*
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 5
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i64, i64* @now, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = call i32 (...) @lrand48()
  %68 = and i32 %67, 2147483647
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.lev_news_comment*, %struct.lev_news_comment** %3, align 8
  %72 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.lev_news_comment*, %struct.lev_news_comment** %3, align 8
  %77 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.lev_news_comment*, %struct.lev_news_comment** %3, align 8
  %82 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %91, i32 %94, i32 %97, i64 %100, i32 %103)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = call i64 @remove_old_comments(%struct.TYPE_6__* %105)
  %107 = load i32, i32* @items_removed_in_process_new, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* @items_removed_in_process_new, align 4
  store i32 1, i32* %2, align 4
  br label %111

111:                                              ; preds = %34, %33, %29, %11
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @check_obj(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @get_place_f(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @new_comment(...) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i64 @remove_old_comments(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
