; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-engine.c_history_q_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-engine.c_history_q_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@history_q = common dso_local global i64* null, align 8
@history_r = common dso_local global i64 0, align 8
@MAX_HISTORY = common dso_local global i64 0, align 8
@history_l = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @history_q_add(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %36

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @dl_strdup(i8* %7)
  %9 = load i64*, i64** @history_q, align 8
  %10 = load i64, i64* @history_r, align 8
  %11 = add i64 %10, 1
  store i64 %11, i64* @history_r, align 8
  %12 = getelementptr inbounds i64, i64* %9, i64 %10
  store i64 %8, i64* %12, align 8
  %13 = load i64, i64* @history_r, align 8
  %14 = load i64, i64* @MAX_HISTORY, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i64 0, i64* @history_r, align 8
  br label %17

17:                                               ; preds = %16, %6
  %18 = load i64, i64* @history_l, align 8
  %19 = load i64, i64* @history_r, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i64*, i64** @history_q, align 8
  %23 = load i64, i64* @history_l, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dl_strfree(i64 %25)
  %27 = load i64*, i64** @history_q, align 8
  %28 = load i64, i64* @history_l, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* @history_l, align 8
  %30 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @history_l, align 8
  %32 = load i64, i64* @MAX_HISTORY, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i64 0, i64* @history_l, align 8
  br label %35

35:                                               ; preds = %34, %21
  br label %36

36:                                               ; preds = %5, %35, %17
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
