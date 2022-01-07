; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_prepare_filter_bits.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_prepare_filter_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filter_bit = common dso_local global i32* null, align 8
@DIFF_STATUS_ADDED = common dso_local global i64 0, align 8
@diff_status_letters = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prepare_filter_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_filter_bits() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @filter_bit, align 8
  %3 = load i64, i64* @DIFF_STATUS_ADDED, align 8
  %4 = getelementptr inbounds i32, i32* %2, i64 %3
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %27, %7
  %9 = load i64*, i64** @diff_status_letters, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %8
  %16 = load i32, i32* %1, align 4
  %17 = shl i32 1, %16
  %18 = load i32*, i32** @filter_bit, align 8
  %19 = load i64*, i64** @diff_status_letters, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %18, i64 %25
  store i32 %17, i32* %26, align 4
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %8

30:                                               ; preds = %8
  br label %31

31:                                               ; preds = %30, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
