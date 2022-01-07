; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-engine.c_history_q_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-engine.c_history_q_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@history_t = common dso_local global i32* null, align 8
@history_r = common dso_local global i64 0, align 8
@history_q = common dso_local global i64* null, align 8
@MAX_HISTORY = common dso_local global i64 0, align 8
@history_l = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @history_q_add(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %42

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32*, i32** @history_t, align 8
  %11 = load i64, i64* @history_r, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 %9, i32* %12, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @dl_strdup(i8* %13)
  %15 = load i64*, i64** @history_q, align 8
  %16 = load i64, i64* @history_r, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* @history_r, align 8
  %18 = getelementptr inbounds i64, i64* %15, i64 %16
  store i64 %14, i64* %18, align 8
  %19 = load i64, i64* @history_r, align 8
  %20 = load i64, i64* @MAX_HISTORY, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  store i64 0, i64* @history_r, align 8
  br label %23

23:                                               ; preds = %22, %8
  %24 = load i64, i64* @history_l, align 8
  %25 = load i64, i64* @history_r, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i64*, i64** @history_q, align 8
  %29 = load i64, i64* @history_l, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dl_strfree(i64 %31)
  %33 = load i64*, i64** @history_q, align 8
  %34 = load i64, i64* @history_l, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* @history_l, align 8
  %36 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* @history_l, align 8
  %38 = load i64, i64* @MAX_HISTORY, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i64 0, i64* @history_l, align 8
  br label %41

41:                                               ; preds = %40, %27
  br label %42

42:                                               ; preds = %7, %41, %23
  ret void
}

declare dso_local i64 @dl_strdup(i8*) #1

declare dso_local i32 @dl_strfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
