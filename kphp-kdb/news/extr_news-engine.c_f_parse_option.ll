; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_f_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_f_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i32 0, align 4
@max_news_days = common dso_local global i64 0, align 8
@index_mode = common dso_local global i32 0, align 4
@max_allocated_metafiles_size = common dso_local global i64 0, align 8
@MIN_MAX_ALLOCATED_METAFILES_SIZE = common dso_local global i64 0, align 8
@DEFAULT_MAX_ALLOCATED_METAFILES_SIZE = common dso_local global i64 0, align 8
@check_index_mode = common dso_local global i32 0, align 4
@regenerate_index_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %28 [
    i32 116, label %5
    i32 105, label %8
    i32 67, label %11
    i32 76, label %22
    i32 82, label %25
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @optarg, align 4
  %7 = call i64 @atoi(i32 %6)
  store i64 %7, i64* @max_news_days, align 8
  br label %29

8:                                                ; preds = %1
  %9 = load i32, i32* @index_mode, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @index_mode, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load i32, i32* @optarg, align 4
  %13 = call i64 @atoi(i32 %12)
  %14 = mul nsw i64 %13, 1024
  %15 = mul nsw i64 %14, 1024
  store i64 %15, i64* @max_allocated_metafiles_size, align 8
  %16 = load i64, i64* @max_allocated_metafiles_size, align 8
  %17 = load i64, i64* @MIN_MAX_ALLOCATED_METAFILES_SIZE, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i64, i64* @DEFAULT_MAX_ALLOCATED_METAFILES_SIZE, align 8
  store i64 %20, i64* @max_allocated_metafiles_size, align 8
  br label %21

21:                                               ; preds = %19, %11
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @check_index_mode, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @check_index_mode, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @regenerate_index_mode, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @regenerate_index_mode, align 4
  br label %29

28:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %30

29:                                               ; preds = %25, %22, %21, %8, %5
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @atoi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
