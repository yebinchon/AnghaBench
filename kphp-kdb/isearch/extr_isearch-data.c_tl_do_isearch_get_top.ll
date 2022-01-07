; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_tl_do_isearch_get_top.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_tl_do_isearch_get_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_isearch_get_top = type { i32 }

@TL_VECTOR = common dso_local global i32 0, align 4
@names_buff = common dso_local global i64 0, align 8
@names = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_do_isearch_get_top(%struct.tl_act_extra* %0) #0 {
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca %struct.tl_isearch_get_top*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %2, align 8
  %6 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %7 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.tl_isearch_get_top*
  store %struct.tl_isearch_get_top* %9, %struct.tl_isearch_get_top** %3, align 8
  %10 = load %struct.tl_isearch_get_top*, %struct.tl_isearch_get_top** %3, align 8
  %11 = getelementptr inbounds %struct.tl_isearch_get_top, %struct.tl_isearch_get_top* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @get_top_v(i32 %12)
  store i32* %13, i32** %4, align 8
  %14 = load i32, i32* @TL_VECTOR, align 4
  %15 = call i32 @tl_store_int(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @tl_store_int(i32 %18)
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %40, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %21, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load i64, i64* @names_buff, align 8
  %28 = load i64*, i64** @names, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %28, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %27, %36
  %38 = add nsw i64 %37, 1
  %39 = call i32 @tl_store_string0(i64 %38)
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %20

43:                                               ; preds = %20
  ret i32 1
}

declare dso_local i32* @get_top_v(i32) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @tl_store_string0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
