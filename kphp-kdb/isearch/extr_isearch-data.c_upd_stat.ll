; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_upd_stat.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_upd_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idn = common dso_local global i32 0, align 4
@qen = common dso_local global i32 0, align 4
@STAT_EV = common dso_local global i32 0, align 4
@q_events = common dso_local global i32* null, align 8
@qel = common dso_local global i32 0, align 4
@qer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upd_stat(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @idn, align 4
  %4 = sub nsw i32 0, %3
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @idn, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = phi i1 [ false, %7 ], [ false, %1 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @qen, align 4
  %19 = load i32, i32* @STAT_EV, align 4
  %20 = sub nsw i32 %19, 5
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = load i32*, i32** @q_events, align 8
  %24 = load i32, i32* @qel, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @qel, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @upd_stat_(i32 %28, i32 -1)
  %30 = load i32, i32* @qen, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @qen, align 4
  %32 = load i32, i32* @qel, align 4
  %33 = load i32, i32* @STAT_EV, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i32 0, i32* @qel, align 4
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %14
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** @q_events, align 8
  %40 = load i64, i64* @qer, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %38, i32* %41, align 4
  %42 = load i32*, i32** @q_events, align 8
  %43 = load i64, i64* @qer, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* @qer, align 8
  %45 = getelementptr inbounds i32, i32* %42, i64 %43
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @upd_stat_(i32 %46, i32 1)
  %48 = load i32, i32* @qen, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @qen, align 4
  %50 = load i64, i64* @qer, align 8
  %51 = load i32, i32* @STAT_EV, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  store i64 0, i64* @qer, align 8
  br label %55

55:                                               ; preds = %54, %37
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @upd_stat_(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
