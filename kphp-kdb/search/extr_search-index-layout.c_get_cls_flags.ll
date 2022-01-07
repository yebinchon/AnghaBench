; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index-layout.c_get_cls_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index-layout.c_get_cls_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hashtags_enabled = common dso_local global i64 0, align 8
@FLAG_CLS_ENABLE_TAGS = common dso_local global i32 0, align 4
@use_stemmer = common dso_local global i64 0, align 8
@FLAGS_CLS_USE_STEMMER = common dso_local global i32 0, align 4
@universal = common dso_local global i64 0, align 8
@FLAGS_CLS_ENABLE_UNIVERSE = common dso_local global i32 0, align 4
@wordfreqs_enabled = common dso_local global i64 0, align 8
@FLAGS_CLS_ENABLE_ITEM_WORDS_FREQS = common dso_local global i32 0, align 4
@creation_date = common dso_local global i64 0, align 8
@FLAGS_CLS_CREATION_DATE = common dso_local global i32 0, align 4
@word_split_utf8 = common dso_local global i64 0, align 8
@FLAGS_CLS_WORD_SPLIT_UTF8 = common dso_local global i32 0, align 4
@tag_owner = common dso_local global i64 0, align 8
@FLAGS_CLS_TAG_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_cls_flags() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* @hashtags_enabled, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @FLAG_CLS_ENABLE_TAGS, align 4
  %6 = load i32, i32* %1, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i64, i64* @use_stemmer, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @FLAGS_CLS_USE_STEMMER, align 4
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %11, %8
  %16 = load i64, i64* @universal, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @FLAGS_CLS_ENABLE_UNIVERSE, align 4
  %20 = load i32, i32* %1, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i64, i64* @wordfreqs_enabled, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @FLAGS_CLS_ENABLE_ITEM_WORDS_FREQS, align 4
  %27 = load i32, i32* %1, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i64, i64* @creation_date, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @FLAGS_CLS_CREATION_DATE, align 4
  %34 = load i32, i32* %1, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i64, i64* @word_split_utf8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @FLAGS_CLS_WORD_SPLIT_UTF8, align 4
  %41 = load i32, i32* %1, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i64, i64* @tag_owner, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @FLAGS_CLS_TAG_OWNER, align 4
  %48 = load i32, i32* %1, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
