; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_process_news_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_process_news_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_news_item = type { i32, i32, i32, i32, i32, i32, i32 }

@UG_MODE = common dso_local global i32 0, align 4
@LEV_NEWS_ITEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"created news item type %08x, user_id=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_process_news_item(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.lev_news_item*, align 8
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
  %21 = load i32, i32* @UG_MODE, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @valid_type(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %20, %7
  store i32 -1, i32* %8, align 4
  br label %59

28:                                               ; preds = %23
  %29 = load i64, i64* @LEV_NEWS_ITEM, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.lev_news_item* @alloc_log_event(i64 %32, i32 28, i32 %33)
  store %struct.lev_news_item* %34, %struct.lev_news_item** %16, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.lev_news_item*, %struct.lev_news_item** %16, align 8
  %37 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.lev_news_item*, %struct.lev_news_item** %16, align 8
  %40 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.lev_news_item*, %struct.lev_news_item** %16, align 8
  %43 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.lev_news_item*, %struct.lev_news_item** %16, align 8
  %46 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.lev_news_item*, %struct.lev_news_item** %16, align 8
  %49 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.lev_news_item*, %struct.lev_news_item** %16, align 8
  %51 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.lev_news_item*, %struct.lev_news_item** %16, align 8
  %54 = getelementptr inbounds %struct.lev_news_item, %struct.lev_news_item* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.lev_news_item*, %struct.lev_news_item** %16, align 8
  %58 = call i32 @process_news_item(%struct.lev_news_item* %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %28, %27
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @valid_type(i32) #1

declare dso_local %struct.lev_news_item* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @process_news_item(%struct.lev_news_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
