; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_AngleVectors.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_AngleVectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AngleVectors.sr = internal global float 0.000000e+00, align 4
@AngleVectors.sp = internal global float 0.000000e+00, align 4
@AngleVectors.sy = internal global float 0.000000e+00, align 4
@AngleVectors.cr = internal global float 0.000000e+00, align 4
@AngleVectors.cp = internal global float 0.000000e+00, align 4
@AngleVectors.cy = internal global float 0.000000e+00, align 4
@YAW = common dso_local global i64 0, align 8
@M_PI = common dso_local global float 0.000000e+00, align 4
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AngleVectors(float* %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %10 = load float*, float** %5, align 8
  %11 = load i64, i64* @YAW, align 8
  %12 = getelementptr inbounds float, float* %10, i64 %11
  %13 = load float, float* %12, align 4
  %14 = load float, float* @M_PI, align 4
  %15 = fmul float %14, 2.000000e+00
  %16 = fdiv float %15, 3.600000e+02
  %17 = fmul float %13, %16
  store float %17, float* %9, align 4
  %18 = load float, float* %9, align 4
  %19 = call i64 @sin(float %18)
  %20 = sitofp i64 %19 to float
  store float %20, float* @AngleVectors.sy, align 4
  %21 = load float, float* %9, align 4
  %22 = call i64 @cos(float %21)
  %23 = sitofp i64 %22 to float
  store float %23, float* @AngleVectors.cy, align 4
  %24 = load float*, float** %5, align 8
  %25 = load i64, i64* @PITCH, align 8
  %26 = getelementptr inbounds float, float* %24, i64 %25
  %27 = load float, float* %26, align 4
  %28 = load float, float* @M_PI, align 4
  %29 = fmul float %28, 2.000000e+00
  %30 = fdiv float %29, 3.600000e+02
  %31 = fmul float %27, %30
  store float %31, float* %9, align 4
  %32 = load float, float* %9, align 4
  %33 = call i64 @sin(float %32)
  %34 = sitofp i64 %33 to float
  store float %34, float* @AngleVectors.sp, align 4
  %35 = load float, float* %9, align 4
  %36 = call i64 @cos(float %35)
  %37 = sitofp i64 %36 to float
  store float %37, float* @AngleVectors.cp, align 4
  %38 = load float*, float** %5, align 8
  %39 = load i64, i64* @ROLL, align 8
  %40 = getelementptr inbounds float, float* %38, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float, float* @M_PI, align 4
  %43 = fmul float %42, 2.000000e+00
  %44 = fdiv float %43, 3.600000e+02
  %45 = fmul float %41, %44
  store float %45, float* %9, align 4
  %46 = load float, float* %9, align 4
  %47 = call i64 @sin(float %46)
  %48 = sitofp i64 %47 to float
  store float %48, float* @AngleVectors.sr, align 4
  %49 = load float, float* %9, align 4
  %50 = call i64 @cos(float %49)
  %51 = sitofp i64 %50 to float
  store float %51, float* @AngleVectors.cr, align 4
  %52 = load float*, float** %6, align 8
  %53 = icmp ne float* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %4
  %55 = load float, float* @AngleVectors.cp, align 4
  %56 = load float, float* @AngleVectors.cy, align 4
  %57 = fmul float %55, %56
  %58 = load float*, float** %6, align 8
  %59 = getelementptr inbounds float, float* %58, i64 0
  store float %57, float* %59, align 4
  %60 = load float, float* @AngleVectors.cp, align 4
  %61 = load float, float* @AngleVectors.sy, align 4
  %62 = fmul float %60, %61
  %63 = load float*, float** %6, align 8
  %64 = getelementptr inbounds float, float* %63, i64 1
  store float %62, float* %64, align 4
  %65 = load float, float* @AngleVectors.sp, align 4
  %66 = fneg float %65
  %67 = load float*, float** %6, align 8
  %68 = getelementptr inbounds float, float* %67, i64 2
  store float %66, float* %68, align 4
  br label %69

69:                                               ; preds = %54, %4
  %70 = load float*, float** %7, align 8
  %71 = icmp ne float* %70, null
  br i1 %71, label %72, label %103

72:                                               ; preds = %69
  %73 = load float, float* @AngleVectors.sr, align 4
  %74 = fneg float %73
  %75 = load float, float* @AngleVectors.sp, align 4
  %76 = fmul float %74, %75
  %77 = load float, float* @AngleVectors.cy, align 4
  %78 = fmul float %76, %77
  %79 = load float, float* @AngleVectors.cr, align 4
  %80 = load float, float* @AngleVectors.sy, align 4
  %81 = fmul float %79, %80
  %82 = fadd float %78, %81
  %83 = load float*, float** %7, align 8
  %84 = getelementptr inbounds float, float* %83, i64 0
  store float %82, float* %84, align 4
  %85 = load float, float* @AngleVectors.sr, align 4
  %86 = fneg float %85
  %87 = load float, float* @AngleVectors.sp, align 4
  %88 = fmul float %86, %87
  %89 = load float, float* @AngleVectors.sy, align 4
  %90 = fmul float %88, %89
  %91 = load float, float* @AngleVectors.cr, align 4
  %92 = load float, float* @AngleVectors.cy, align 4
  %93 = fmul float %91, %92
  %94 = fsub float %90, %93
  %95 = load float*, float** %7, align 8
  %96 = getelementptr inbounds float, float* %95, i64 1
  store float %94, float* %96, align 4
  %97 = load float, float* @AngleVectors.sr, align 4
  %98 = fneg float %97
  %99 = load float, float* @AngleVectors.cp, align 4
  %100 = fmul float %98, %99
  %101 = load float*, float** %7, align 8
  %102 = getelementptr inbounds float, float* %101, i64 2
  store float %100, float* %102, align 4
  br label %103

103:                                              ; preds = %72, %69
  %104 = load float*, float** %8, align 8
  %105 = icmp ne float* %104, null
  br i1 %105, label %106, label %134

106:                                              ; preds = %103
  %107 = load float, float* @AngleVectors.cr, align 4
  %108 = load float, float* @AngleVectors.sp, align 4
  %109 = fmul float %107, %108
  %110 = load float, float* @AngleVectors.cy, align 4
  %111 = fmul float %109, %110
  %112 = load float, float* @AngleVectors.sr, align 4
  %113 = load float, float* @AngleVectors.sy, align 4
  %114 = fmul float %112, %113
  %115 = fadd float %111, %114
  %116 = load float*, float** %8, align 8
  %117 = getelementptr inbounds float, float* %116, i64 0
  store float %115, float* %117, align 4
  %118 = load float, float* @AngleVectors.cr, align 4
  %119 = load float, float* @AngleVectors.sp, align 4
  %120 = fmul float %118, %119
  %121 = load float, float* @AngleVectors.sy, align 4
  %122 = fmul float %120, %121
  %123 = load float, float* @AngleVectors.sr, align 4
  %124 = load float, float* @AngleVectors.cy, align 4
  %125 = fmul float %123, %124
  %126 = fsub float %122, %125
  %127 = load float*, float** %8, align 8
  %128 = getelementptr inbounds float, float* %127, i64 1
  store float %126, float* %128, align 4
  %129 = load float, float* @AngleVectors.cr, align 4
  %130 = load float, float* @AngleVectors.cp, align 4
  %131 = fmul float %129, %130
  %132 = load float*, float** %8, align 8
  %133 = getelementptr inbounds float, float* %132, i64 2
  store float %131, float* %133, align 4
  br label %134

134:                                              ; preds = %106, %103
  ret void
}

declare dso_local i64 @sin(float) #1

declare dso_local i64 @cos(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
