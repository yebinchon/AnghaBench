; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_init_allowed.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_init_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allowed = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_allowed() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @allowed, align 8
  %3 = call i32 @memset(i32* %2, i32 0, i32 256)
  store i32 48, i32* %1, align 4
  br label %4

4:                                                ; preds = %12, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp sle i32 %5, 57
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load i32*, i32** @allowed, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32 4, i32* %11, align 4
  br label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %4

15:                                               ; preds = %4
  store i32 65, i32* %1, align 4
  br label %16

16:                                               ; preds = %24, %15
  %17 = load i32, i32* %1, align 4
  %18 = icmp sle i32 %17, 90
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32*, i32** @allowed, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 2, i32* %23, align 4
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %16

27:                                               ; preds = %16
  store i32 97, i32* %1, align 4
  br label %28

28:                                               ; preds = %36, %27
  %29 = load i32, i32* %1, align 4
  %30 = icmp sle i32 %29, 122
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32*, i32** @allowed, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %28

39:                                               ; preds = %28
  %40 = load i32*, i32** @allowed, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 45
  store i32 8, i32* %41, align 4
  %42 = load i32*, i32** @allowed, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 44
  store i32 8, i32* %43, align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
