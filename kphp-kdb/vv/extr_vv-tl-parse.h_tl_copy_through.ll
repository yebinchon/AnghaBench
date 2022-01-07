; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_copy_through.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_copy_through.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_IN_POS = common dso_local global i32 0, align 4
@TL_IN_REMAINING = common dso_local global i32 0, align 4
@TL_OUT_POS = common dso_local global i32 0, align 4
@TL_OUT_REMAINING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @tl_copy_through to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tl_copy_through(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @tl_fetch_check(i32 %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @tl_store_check(i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %35

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @TL_COPY_THROUGH(i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TL_IN_POS, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* @TL_IN_POS, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TL_IN_REMAINING, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* @TL_IN_REMAINING, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TL_OUT_POS, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* @TL_OUT_POS, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @TL_OUT_REMAINING, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* @TL_OUT_REMAINING, align 4
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @tl_fetch_check(i32) #1

declare dso_local i64 @tl_store_check(i32) #1

declare dso_local i32 @TL_COPY_THROUGH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
