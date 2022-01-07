; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_PerpendicularVector.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_PerpendicularVector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PerpendicularVector(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca float*, align 8
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  store i64 1, i64* %7, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load float*, float** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %13, i64 %15
  %17 = load float, float* %16, align 4
  %18 = call i64 @fabs(float %17)
  %19 = load i64, i64* %7, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %5, align 4
  %23 = load float*, float** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  %27 = load float, float* %26, align 4
  %28 = call i64 @fabs(float %27)
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %21, %12
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load float*, float** %8, align 8
  %35 = getelementptr inbounds float, float* %34, i64 2
  store float 0.000000e+00, float* %35, align 4
  %36 = load float*, float** %8, align 8
  %37 = getelementptr inbounds float, float* %36, i64 1
  store float 0.000000e+00, float* %37, align 4
  %38 = load float*, float** %8, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  store float 0.000000e+00, float* %39, align 4
  %40 = load float*, float** %8, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  store float 1.000000e+00, float* %43, align 4
  %44 = load float*, float** %3, align 8
  %45 = load float*, float** %8, align 8
  %46 = load float*, float** %4, align 8
  %47 = call i32 @ProjectPointOnPlane(float* %44, float* %45, float* %46)
  %48 = load float*, float** %3, align 8
  %49 = load float*, float** %3, align 8
  %50 = call i32 @VectorNormalize(float* %48, float* %49)
  ret void
}

declare dso_local i64 @fabs(float) #1

declare dso_local i32 @ProjectPointOnPlane(float*, float*, float*) #1

declare dso_local i32 @VectorNormalize(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
