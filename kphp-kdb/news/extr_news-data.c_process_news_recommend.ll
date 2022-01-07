; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_process_news_recommend.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_process_news_recommend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_news_recommend = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__* }

@now = common dso_local global i64 0, align 8
@min_logevent_time = common dso_local global i64 0, align 8
@RECOMMEND_MODE = common dso_local global i32 0, align 4
@items_removed_in_process_new = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_news_recommend*)* @process_news_recommend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_news_recommend(%struct.lev_news_recommend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_news_recommend*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.lev_news_recommend* %0, %struct.lev_news_recommend** %3, align 8
  %8 = load i64, i64* @now, align 8
  %9 = load i64, i64* @min_logevent_time, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

12:                                               ; preds = %1
  %13 = load %struct.lev_news_recommend*, %struct.lev_news_recommend** %3, align 8
  %14 = getelementptr inbounds %struct.lev_news_recommend, %struct.lev_news_recommend* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @get_user_f(i32 %15, i32 1)
  %17 = inttoptr i64 %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %4, align 8
  %18 = load %struct.lev_news_recommend*, %struct.lev_news_recommend** %3, align 8
  %19 = getelementptr inbounds %struct.lev_news_recommend, %struct.lev_news_recommend* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %12
  %25 = load i32, i32* @RECOMMEND_MODE, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @valid_type(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %24, %12
  store i32 -1, i32* %2, align 4
  br label %86

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %7, align 8
  %36 = call %struct.TYPE_6__* (...) @new_recommend_item()
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %6, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 7
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = bitcast %struct.TYPE_5__* %43 to %struct.TYPE_6__*
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 6
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.lev_news_recommend*, %struct.lev_news_recommend** %3, align 8
  %55 = getelementptr inbounds %struct.lev_news_recommend, %struct.lev_news_recommend* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.lev_news_recommend*, %struct.lev_news_recommend** %3, align 8
  %60 = getelementptr inbounds %struct.lev_news_recommend, %struct.lev_news_recommend* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.lev_news_recommend*, %struct.lev_news_recommend** %3, align 8
  %65 = getelementptr inbounds %struct.lev_news_recommend, %struct.lev_news_recommend* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* @now, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.lev_news_recommend*, %struct.lev_news_recommend** %3, align 8
  %76 = getelementptr inbounds %struct.lev_news_recommend, %struct.lev_news_recommend* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = call i64 @remove_old_recommend_items(%struct.TYPE_5__* %80)
  %82 = load i32, i32* @items_removed_in_process_new, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* @items_removed_in_process_new, align 4
  store i32 1, i32* %2, align 4
  br label %86

86:                                               ; preds = %32, %31, %11
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @get_user_f(i32, i32) #1

declare dso_local i32 @valid_type(i32) #1

declare dso_local %struct.TYPE_6__* @new_recommend_item(...) #1

declare dso_local i64 @remove_old_recommend_items(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
