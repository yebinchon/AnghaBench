; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_undelete_comment.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_undelete_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_news_comment_hide = type { i32, i32 }

@LEV_NEWS_SHOWITEM = common dso_local global i64 0, align 8
@COMM_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_undelete_comment(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_news_comment_hide*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @check_obj(i32 %11, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %44

17:                                               ; preds = %4
  %18 = load i64, i64* @LEV_NEWS_SHOWITEM, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.lev_news_comment_hide* @alloc_log_event(i64 %21, i32 16, i32 %22)
  store %struct.lev_news_comment_hide* %23, %struct.lev_news_comment_hide** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.lev_news_comment_hide*, %struct.lev_news_comment_hide** %10, align 8
  %26 = getelementptr inbounds %struct.lev_news_comment_hide, %struct.lev_news_comment_hide* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.lev_news_comment_hide*, %struct.lev_news_comment_hide** %10, align 8
  %29 = getelementptr inbounds %struct.lev_news_comment_hide, %struct.lev_news_comment_hide* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i64, i64* @COMM_MODE, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @show_hide_comment(i32 %33, i32 %34, i32 %35, i32 %36, i32 -1)
  store i32 %37, i32* %5, align 4
  br label %44

38:                                               ; preds = %17
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @show_hide_notify(i32 %39, i32 %40, i32 %41, i32 %42, i32 -1)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38, %32, %16
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @check_obj(i32, i32, i32) #1

declare dso_local %struct.lev_news_comment_hide* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @show_hide_comment(i32, i32, i32, i32, i32) #1

declare dso_local i32 @show_hide_notify(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
