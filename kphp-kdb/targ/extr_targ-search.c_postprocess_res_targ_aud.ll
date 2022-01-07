; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_postprocess_res_targ_aud.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_postprocess_res_targ_aud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_cnt = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i32 0, align 4
@R = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @postprocess_res_targ_aud() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @R_cnt, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @Q_limit, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  store i32 %9, i32* @Q_limit, align 4
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* @Q_limit, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %36, %10
  %14 = load i64, i64* %3, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @R_cnt, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = call i32 (...) @lrand48()
  %20 = load i32, i32* %1, align 4
  %21 = srem i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %2, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load i64, i64* %2, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %2, align 8
  %28 = load i32*, i32** @R, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @scan_targ_aud_user(i32 %31)
  br label %33

33:                                               ; preds = %25, %18
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %3, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %3, align 8
  br label %13

39:                                               ; preds = %13
  ret void
}

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @scan_targ_aud_user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
