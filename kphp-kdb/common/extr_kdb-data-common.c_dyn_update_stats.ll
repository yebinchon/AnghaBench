; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_kdb-data-common.c_dyn_update_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_kdb-data-common.c_dyn_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@freed_bytes = common dso_local global i32 0, align 4
@freed_blocks = common dso_local global i32 0, align 4
@MAX_RECORD_WORDS = common dso_local global i32 0, align 4
@FreeCnt = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dyn_update_stats() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @freed_bytes, align 4
  store i32 0, i32* @freed_blocks, align 4
  store i32 1, i32* %1, align 4
  br label %2

2:                                                ; preds = %23, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = load i32*, i32** @FreeCnt, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @freed_blocks, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* @freed_blocks, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32*, i32** @FreeCnt, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %14, %19
  %21 = load i32, i32* @freed_bytes, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* @freed_bytes, align 4
  br label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %2

26:                                               ; preds = %2
  %27 = load i32, i32* @freed_bytes, align 4
  %28 = shl i32 %27, 2
  store i32 %28, i32* @freed_bytes, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
