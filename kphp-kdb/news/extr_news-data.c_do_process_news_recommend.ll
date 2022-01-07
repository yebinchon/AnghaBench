; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_process_news_recommend.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_process_news_recommend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_news_recommend = type { i32, i32, i32, i32, i32 }

@RECOMMEND_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"recommend_item_f (%d, %d, %d, %d, %d) returns not NULL.\0A\00", align 1
@LEV_NEWS_RECOMMEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_process_news_recommend(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.lev_news_recommend*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @conv_uid(i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* @RECOMMEND_MODE, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @valid_type(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %20, %7
  store i32 -1, i32* %8, align 4
  br label %67

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32* @recommend_item_f(i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 0, i32* %8, align 4
  br label %67

43:                                               ; preds = %28
  %44 = load i64, i64* @LEV_NEWS_RECOMMEND, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.lev_news_recommend* @alloc_log_event(i64 %47, i32 20, i32 %48)
  store %struct.lev_news_recommend* %49, %struct.lev_news_recommend** %16, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.lev_news_recommend*, %struct.lev_news_recommend** %16, align 8
  %52 = getelementptr inbounds %struct.lev_news_recommend, %struct.lev_news_recommend* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.lev_news_recommend*, %struct.lev_news_recommend** %16, align 8
  %55 = getelementptr inbounds %struct.lev_news_recommend, %struct.lev_news_recommend* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.lev_news_recommend*, %struct.lev_news_recommend** %16, align 8
  %58 = getelementptr inbounds %struct.lev_news_recommend, %struct.lev_news_recommend* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.lev_news_recommend*, %struct.lev_news_recommend** %16, align 8
  %61 = getelementptr inbounds %struct.lev_news_recommend, %struct.lev_news_recommend* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.lev_news_recommend*, %struct.lev_news_recommend** %16, align 8
  %64 = getelementptr inbounds %struct.lev_news_recommend, %struct.lev_news_recommend* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.lev_news_recommend*, %struct.lev_news_recommend** %16, align 8
  %66 = call i32 @process_news_recommend(%struct.lev_news_recommend* %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %43, %36, %27
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @valid_type(i32) #1

declare dso_local i32* @recommend_item_f(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.lev_news_recommend* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @process_news_recommend(%struct.lev_news_recommend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
