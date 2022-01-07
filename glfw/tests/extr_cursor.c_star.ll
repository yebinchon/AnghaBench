; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_cursor.c_star.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_cursor.c_star.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, i32, float)* @star to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @star(i32 %0, i32 %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  store float 3.200000e+01, float* %7, align 4
  %14 = load float, float* @M_PI, align 4
  %15 = fmul float 2.000000e+00, %14
  %16 = load float, float* %6, align 4
  %17 = fmul float %15, %16
  %18 = call i64 @sin(float %17)
  %19 = sitofp i64 %18 to float
  %20 = fmul float 2.500000e-01, %19
  %21 = fadd float %20, 7.500000e-01
  store float %21, float* %8, align 4
  %22 = load float, float* %8, align 4
  %23 = fmul float 3.000000e+00, %22
  store float %23, float* %9, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sitofp i32 %24 to float
  %26 = fsub float %25, 3.200000e+01
  %27 = load i32, i32* %4, align 4
  %28 = sitofp i32 %27 to float
  %29 = fsub float %28, 3.200000e+01
  %30 = fmul float %26, %29
  %31 = load i32, i32* %5, align 4
  %32 = sitofp i32 %31 to float
  %33 = fsub float %32, 3.200000e+01
  %34 = load i32, i32* %5, align 4
  %35 = sitofp i32 %34 to float
  %36 = fsub float %35, 3.200000e+01
  %37 = fmul float %33, %36
  %38 = fadd float %30, %37
  %39 = fptosi float %38 to i32
  %40 = call i64 @sqrt(i32 %39)
  %41 = sitofp i64 %40 to float
  store float %41, float* %10, align 4
  %42 = load float, float* %10, align 4
  %43 = fdiv float %42, 3.200000e+01
  %44 = fsub float 1.000000e+00, %43
  store float %44, float* %11, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sitofp i32 %45 to float
  %47 = fcmp oeq float %46, 3.200000e+01
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  br label %58

49:                                               ; preds = %3
  %50 = load float, float* %9, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sitofp i32 %51 to float
  %53 = fsub float %52, 3.200000e+01
  %54 = fptosi float %53 to i32
  %55 = call i64 @fabs(i32 %54)
  %56 = sitofp i64 %55 to float
  %57 = fdiv float %50, %56
  br label %58

58:                                               ; preds = %49, %48
  %59 = phi float [ 3.200000e+01, %48 ], [ %57, %49 ]
  store float %59, float* %12, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sitofp i32 %60 to float
  %62 = fcmp oeq float %61, 3.200000e+01
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %73

64:                                               ; preds = %58
  %65 = load float, float* %9, align 4
  %66 = load i32, i32* %5, align 4
  %67 = sitofp i32 %66 to float
  %68 = fsub float %67, 3.200000e+01
  %69 = fptosi float %68 to i32
  %70 = call i64 @fabs(i32 %69)
  %71 = sitofp i64 %70 to float
  %72 = fdiv float %65, %71
  br label %73

73:                                               ; preds = %64, %63
  %74 = phi float [ 3.200000e+01, %63 ], [ %72, %64 ]
  store float %74, float* %13, align 4
  %75 = load float, float* %8, align 4
  %76 = load float, float* %11, align 4
  %77 = fmul float %75, %76
  %78 = fmul float %77, 0x3FC99999A0000000
  %79 = load float, float* %11, align 4
  %80 = load float, float* %12, align 4
  %81 = fmul float %79, %80
  %82 = load float, float* %13, align 4
  %83 = fmul float %81, %82
  %84 = fadd float %78, %83
  %85 = call i32 @fmin(float 1.000000e+00, float %84)
  %86 = call i64 @fmax(float 0.000000e+00, i32 %85)
  %87 = sitofp i64 %86 to float
  ret float %87
}

declare dso_local i64 @sin(float) #1

declare dso_local i64 @sqrt(i32) #1

declare dso_local i64 @fabs(i32) #1

declare dso_local i64 @fmax(float, i32) #1

declare dso_local i32 @fmin(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
