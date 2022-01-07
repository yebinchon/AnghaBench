; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_invert.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m4x4_invert(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call float @m4_det(i32* %10)
  store float %11, float* %4, align 4
  %12 = load float, float* %4, align 4
  %13 = call double @fabs(float %12)
  %14 = fcmp olt double %13, 1.000000e-10
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %62

16:                                               ; preds = %1
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @memcpy(i32* %17, i32* %18, i32 8)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %58, %16
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %61

23:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %54, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %28, %29
  %31 = srem i32 %30, 2
  %32 = mul nsw i32 %31, 2
  %33 = sub nsw i32 1, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @m4_submat(i32* %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @m3_det(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sitofp i32 %42 to float
  %44 = load float, float* %4, align 4
  %45 = fdiv float %43, %44
  %46 = fptosi float %45 to i32
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 4
  %51 = add nsw i32 %48, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %27
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %24

57:                                               ; preds = %24
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %20

61:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local float @m4_det(i32*) #1

declare dso_local double @fabs(float) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @m4_submat(i32*, i32, i32, i32) #1

declare dso_local i32 @m3_det(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
