; ModuleID = '/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_get_sync_delay.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_get_sync_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PRIORITY = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@sync_last = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_sync_delay() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %26, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MAX_PRIORITY, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load i32, i32* @now, align 4
  %9 = load i32*, i32** @sync_last, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %8, %13
  %15 = load i32, i32* %2, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %7
  %18 = load i32, i32* @now, align 4
  %19 = load i32*, i32** @sync_last, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %18, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %17, %7
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %3

29:                                               ; preds = %3
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
