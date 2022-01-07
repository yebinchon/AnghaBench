; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decFloatScaleB.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decFloatScaleB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCALEBMAX = common dso_local global i32 0, align 4
@DPD2BIN = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @decFloatScaleB(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i64 @DFISNAN(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @DFISNAN(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32* @decNaNs(i32* %20, i32* %21, i32* %22, i32* %23)
  store i32* %24, i32** %5, align 8
  br label %70

25:                                               ; preds = %15
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @DFISINT(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32* @decInvalid(i32* %30, i32* %31)
  store i32* %32, i32** %5, align 8
  br label %70

33:                                               ; preds = %25
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @decFloatDigits(i32* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @SCALEBMAX, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32* @decInvalid(i32* %40, i32* %41)
  store i32* %42, i32** %5, align 8
  br label %70

43:                                               ; preds = %33
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 @DFISINF(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32* @decInfinity(i32* %48, i32* %49)
  store i32* %50, i32** %5, align 8
  br label %70

51:                                               ; preds = %43
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @DFISSIGNED(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i64 @GETEXPUN(i32* %64)
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = call i32* @decFloatSetExponent(i32* %62, i32* %63, i64 %68)
  store i32* %69, i32** %5, align 8
  br label %70

70:                                               ; preds = %58, %47, %39, %29, %19
  %71 = load i32*, i32** %5, align 8
  ret i32* %71
}

declare dso_local i64 @DFISNAN(i32*) #1

declare dso_local i32* @decNaNs(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DFISINT(i32*) #1

declare dso_local i32* @decInvalid(i32*, i32*) #1

declare dso_local i32 @decFloatDigits(i32*) #1

declare dso_local i64 @DFISINF(i32*) #1

declare dso_local i32* @decInfinity(i32*, i32*) #1

declare dso_local i64 @DFISSIGNED(i32*) #1

declare dso_local i32* @decFloatSetExponent(i32*, i32*, i64) #1

declare dso_local i64 @GETEXPUN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
