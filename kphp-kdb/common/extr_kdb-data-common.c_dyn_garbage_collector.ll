; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_kdb-data-common.c_dyn_garbage_collector.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_kdb-data-common.c_dyn_garbage_collector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_RECORD_WORDS = common dso_local global i32 0, align 4
@PTR_INTS = common dso_local global i32 0, align 4
@FreeCnt = common dso_local global i32* null, align 8
@SplitBlocks = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dyn_garbage_collector() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %6 = add nsw i32 %5, 3
  store i32 %6, i32* %1, align 4
  br label %7

7:                                                ; preds = %33, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @PTR_INTS, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = load i32*, i32** @FreeCnt, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %1, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %1, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %11
  %26 = load i32, i32* %4, align 4
  %27 = load i32*, i32** @SplitBlocks, align 8
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @PTR_INTS, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  store i32 %26, i32* %32, align 4
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %1, align 4
  br label %7

36:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
