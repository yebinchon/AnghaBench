; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_priority_sort_store_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_priority_sort_store_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_skip_mismatch_words_if_complete_case_found = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @priority_sort_store_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @priority_sort_store_res(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i64, i64* @Q_skip_mismatch_words_if_complete_case_found, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 6
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  store i32 1, i32* %17, align 4
  %18 = call i32 (...) @clear_res()
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @store_res(i32* %20, i32 %21)
  br label %32

23:                                               ; preds = %9
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @store_res(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %19
  br label %37

33:                                               ; preds = %3
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @store_res(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @clear_res(...) #1

declare dso_local i32 @store_res(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
