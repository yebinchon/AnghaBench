; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_tjunction.c_ColinearEdge.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_tjunction.c_ColinearEdge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ColinearEdge(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @VectorSubtract(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @VectorSubtract(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call float @VectorNormalize(i32 %21, i32 %22)
  store float %23, float* %12, align 4
  %24 = load float, float* %12, align 4
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @qfalse, align 4
  store i32 %27, i32* %4, align 4
  br label %49

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call float @DotProduct(i32 %29, i32 %30)
  store float %31, float* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load float, float* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @VectorScale(i32 %32, float %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @VectorSubtract(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = call float @VectorLength(i32 %40)
  store float %41, float* %12, align 4
  %42 = load float, float* %12, align 4
  %43 = fpext float %42 to double
  %44 = fcmp olt double %43, 1.000000e-01
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32, i32* @qtrue, align 4
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %28
  %48 = load i32, i32* @qfalse, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45, %26
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorNormalize(i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @VectorScale(i32, float, i32) #1

declare dso_local float @VectorLength(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
