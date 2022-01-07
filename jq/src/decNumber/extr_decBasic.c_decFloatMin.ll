; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decFloatMin.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decFloatMin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @decFloatMin(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @DFISNAN(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @DFISNAN(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @DFISSNAN(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %14
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32* @decNaNs(i32* %23, i32* %24, i32* %25, i32* %26)
  store i32* %27, i32** %5, align 8
  br label %64

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @decCanonical(i32* %29, i32* %30)
  store i32* %31, i32** %5, align 8
  br label %64

32:                                               ; preds = %4
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @DFISNAN(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @DFISSNAN(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32* @decNaNs(i32* %41, i32* %42, i32* %43, i32* %44)
  store i32* %45, i32** %5, align 8
  br label %64

46:                                               ; preds = %36
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32* @decCanonical(i32* %47, i32* %48)
  store i32* %49, i32** %5, align 8
  br label %64

50:                                               ; preds = %32
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @decNumCompare(i32* %51, i32* %52, i32 1)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32* @decCanonical(i32* %57, i32* %58)
  store i32* %59, i32** %5, align 8
  br label %64

60:                                               ; preds = %50
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32* @decCanonical(i32* %61, i32* %62)
  store i32* %63, i32** %5, align 8
  br label %64

64:                                               ; preds = %60, %56, %46, %40, %28, %22
  %65 = load i32*, i32** %5, align 8
  ret i32* %65
}

declare dso_local i64 @DFISNAN(i32*) #1

declare dso_local i64 @DFISSNAN(i32*) #1

declare dso_local i32* @decNaNs(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @decCanonical(i32*, i32*) #1

declare dso_local i64 @decNumCompare(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
