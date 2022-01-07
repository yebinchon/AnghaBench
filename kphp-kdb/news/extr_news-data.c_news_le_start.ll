; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_news_le_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_news_le_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i32, i64, i64, i64 }

@ug_mode = common dso_local global i32 0, align 4
@USER_TYPES_MASK = common dso_local global i64 0, align 8
@allowed_types_mask = common dso_local global i64 0, align 8
@GROUP_TYPES_MASK = common dso_local global i64 0, align 8
@COMMENT_TYPES_MASK = common dso_local global i64 0, align 8
@NOTIFY_TYPES_MASK = common dso_local global i64 0, align 8
@RECOMMEND_TYPES_MASK = common dso_local global i64 0, align 8
@log_split_min = common dso_local global i64 0, align 8
@log_split_max = common dso_local global i64 0, align 8
@log_split_mod = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_start*)* @news_le_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @news_le_start(%struct.lev_start* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_start*, align 8
  store %struct.lev_start* %0, %struct.lev_start** %3, align 8
  %4 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %5 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %17 [
    i32 128, label %7
    i32 131, label %9
    i32 132, label %11
    i32 130, label %13
    i32 129, label %15
  ]

7:                                                ; preds = %1
  store i32 0, i32* @ug_mode, align 4
  %8 = load i64, i64* @USER_TYPES_MASK, align 8
  store i64 %8, i64* @allowed_types_mask, align 8
  br label %18

9:                                                ; preds = %1
  store i32 -1, i32* @ug_mode, align 4
  %10 = load i64, i64* @GROUP_TYPES_MASK, align 8
  store i64 %10, i64* @allowed_types_mask, align 8
  br label %18

11:                                               ; preds = %1
  store i32 1, i32* @ug_mode, align 4
  %12 = load i64, i64* @COMMENT_TYPES_MASK, align 8
  store i64 %12, i64* @allowed_types_mask, align 8
  br label %18

13:                                               ; preds = %1
  store i32 2, i32* @ug_mode, align 4
  %14 = load i64, i64* @NOTIFY_TYPES_MASK, align 8
  store i64 %14, i64* @allowed_types_mask, align 8
  br label %18

15:                                               ; preds = %1
  store i32 3, i32* @ug_mode, align 4
  %16 = load i64, i64* @RECOMMEND_TYPES_MASK, align 8
  store i64 %16, i64* @allowed_types_mask, align 8
  br label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %52

18:                                               ; preds = %15, %13, %11, %9, %7
  %19 = load i64, i64* @allowed_types_mask, align 8
  %20 = load i32, i32* @ug_mode, align 4
  %21 = call i64 @news_get_allowed_types_mask(i32 %20)
  %22 = icmp eq i64 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %26 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* @log_split_min, align 8
  %28 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %29 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* @log_split_max, align 8
  %31 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %32 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* @log_split_mod, align 8
  %34 = load i64, i64* @log_split_mod, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %18
  %37 = load i64, i64* @log_split_min, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i64, i64* @log_split_min, align 8
  %41 = add nsw i64 %40, 1
  %42 = load i64, i64* @log_split_max, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i64, i64* @log_split_max, align 8
  %46 = load i64, i64* @log_split_mod, align 8
  %47 = icmp sle i64 %45, %46
  br label %48

48:                                               ; preds = %44, %39, %36, %18
  %49 = phi i1 [ false, %39 ], [ false, %36 ], [ false, %18 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @news_get_allowed_types_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
