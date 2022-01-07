; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_process_news_comment.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_process_news_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_news_comment = type { i32, i32, i32, i32, i32 }

@COMM_MODE = common dso_local global i32 0, align 4
@LEV_NEWS_COMMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"created news comment type %08x, place_id=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_process_news_comment(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lev_news_comment*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* @COMM_MODE, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %6
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @check_obj(i32 %18, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %6
  store i32 -1, i32* %7, align 4
  br label %52

24:                                               ; preds = %17
  %25 = load i64, i64* @LEV_NEWS_COMMENT, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.lev_news_comment* @alloc_log_event(i64 %28, i32 24, i32 %29)
  store %struct.lev_news_comment* %30, %struct.lev_news_comment** %14, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.lev_news_comment*, %struct.lev_news_comment** %14, align 8
  %33 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.lev_news_comment*, %struct.lev_news_comment** %14, align 8
  %36 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.lev_news_comment*, %struct.lev_news_comment** %14, align 8
  %39 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.lev_news_comment*, %struct.lev_news_comment** %14, align 8
  %42 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.lev_news_comment*, %struct.lev_news_comment** %14, align 8
  %44 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lev_news_comment*, %struct.lev_news_comment** %14, align 8
  %47 = getelementptr inbounds %struct.lev_news_comment, %struct.lev_news_comment* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.lev_news_comment*, %struct.lev_news_comment** %14, align 8
  %51 = call i32 @process_news_comment(%struct.lev_news_comment* %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %24, %23
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @check_obj(i32, i32, i32) #1

declare dso_local %struct.lev_news_comment* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @process_news_comment(%struct.lev_news_comment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
