; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_string.c_h2o_strtosize.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_string.c_h2o_strtosize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @h2o_strtosize(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  store i8* %12, i8** %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %55

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %46
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %19, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 48, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %25, 57
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %17
  br label %55

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 48
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %47

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, 10
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %43, -8446744073709551616
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %55

46:                                               ; preds = %39
  br label %17

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SIZE_MAX, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %3, align 8
  br label %58

55:                                               ; preds = %51, %45, %27, %15
  %56 = load i32, i32* @SIZE_MAX, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
