; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4_det.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4_det.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @m4_det(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %2, align 8
  store float 0.000000e+00, float* %4, align 4
  store float 1.000000e+00, float* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load float*, float** %2, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @m4_submat(float* %12, i32 %13, i32 0, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = call float @m3_det(i32 %16)
  store float %17, float* %3, align 4
  %18 = load float*, float** %2, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  %22 = load float, float* %21, align 4
  %23 = load float, float* %3, align 4
  %24 = fmul float %22, %23
  %25 = load float, float* %5, align 4
  %26 = fmul float %24, %25
  %27 = load float, float* %4, align 4
  %28 = fadd float %27, %26
  store float %28, float* %4, align 4
  br label %29

29:                                               ; preds = %11
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load float, float* %5, align 4
  %33 = fmul float %32, -1.000000e+00
  store float %33, float* %5, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load float, float* %4, align 4
  ret float %35
}

declare dso_local i32 @m4_submat(float*, i32, i32, i32) #1

declare dso_local float @m3_det(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
