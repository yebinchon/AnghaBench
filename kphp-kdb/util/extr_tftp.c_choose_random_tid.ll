; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_choose_random_tid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_choose_random_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_port = common dso_local global i32 0, align 4
@min_port = common dso_local global i32 0, align 4
@C = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @choose_random_tid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @max_port, align 4
  %6 = load i32, i32* @min_port, align 4
  %7 = sub nsw i32 %5, %6
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %2, align 4
  %9 = call i32 (...) @lrand48()
  %10 = load i32, i32* %2, align 4
  %11 = srem i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %30, %0
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i32**, i32*** @C, align 8
  %19 = load i32, i32* @min_port, align 4
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %18, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32, i32* @min_port, align 4
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %1, align 4
  br label %36

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %2, align 4
  %34 = srem i32 %32, %33
  store i32 %34, i32* %3, align 4
  br label %13

35:                                               ; preds = %13
  store i32 -1, i32* %1, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
