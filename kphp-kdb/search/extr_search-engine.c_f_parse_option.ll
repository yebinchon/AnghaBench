; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_f_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_f_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@universal = common dso_local global i32 0, align 4
@binlog_check_mode = common dso_local global i32 0, align 4
@creation_date = common dso_local global i32 0, align 4
@return_empty_record_on_error = common dso_local global i32 0, align 4
@import_only_mode = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@MAX_MISMATCHED_WORDS = common dso_local global i32 0, align 4
@tag_owner = common dso_local global i32 0, align 4
@allowed_deleted_by_rate = common dso_local global i32 0, align 4
@use_stemmer = common dso_local global i32 0, align 4
@word_split_utf8 = common dso_local global i32 0, align 4
@wordfreqs_enabled = common dso_local global i32 0, align 4
@hashtags_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %29 [
    i32 65, label %6
    i32 67, label %7
    i32 68, label %8
    i32 70, label %9
    i32 73, label %10
    i32 77, label %11
    i32 79, label %22
    i32 82, label %23
    i32 83, label %25
    i32 85, label %26
    i32 87, label %27
    i32 116, label %28
  ]

6:                                                ; preds = %1
  store i32 1, i32* @universal, align 4
  br label %30

7:                                                ; preds = %1
  store i32 1, i32* @binlog_check_mode, align 4
  br label %30

8:                                                ; preds = %1
  store i32 0, i32* @creation_date, align 4
  br label %30

9:                                                ; preds = %1
  store i32 0, i32* @return_empty_record_on_error, align 4
  br label %30

10:                                               ; preds = %1
  store i32 1, i32* @import_only_mode, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load i32, i32* @optarg, align 4
  %13 = call i32 @atoi(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 5
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* @MAX_MISMATCHED_WORDS, align 4
  br label %21

21:                                               ; preds = %19, %16, %11
  br label %30

22:                                               ; preds = %1
  store i32 1, i32* @tag_owner, align 4
  br label %30

23:                                               ; preds = %1
  %24 = load i32, i32* @optarg, align 4
  store i32 %24, i32* @allowed_deleted_by_rate, align 4
  br label %30

25:                                               ; preds = %1
  store i32 1, i32* @use_stemmer, align 4
  br label %30

26:                                               ; preds = %1
  store i32 1, i32* @word_split_utf8, align 4
  br label %30

27:                                               ; preds = %1
  store i32 1, i32* @wordfreqs_enabled, align 4
  br label %30

28:                                               ; preds = %1
  store i32 1, i32* @hashtags_enabled, align 4
  br label %30

29:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %31

30:                                               ; preds = %28, %27, %26, %25, %23, %22, %21, %10, %9, %8, %7, %6
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @atoi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
