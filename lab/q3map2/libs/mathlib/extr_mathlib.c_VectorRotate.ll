; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_VectorRotate.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_VectorRotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VectorRotate(float* %0, float* %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca [3 x [2 x i32]], align 16
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %14 = load float*, float** %4, align 8
  %15 = load float*, float** %8, align 8
  %16 = call i32 @VectorCopy(float* %14, float* %15)
  %17 = load float*, float** %8, align 8
  %18 = load float*, float** %7, align 8
  %19 = call i32 @VectorCopy(float* %17, float* %18)
  %20 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 0
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 1, i32* %21, align 16
  %22 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  store i32 2, i32* %23, align 4
  %24 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 1
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 2, i32* %25, align 8
  %26 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 1
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 2
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  store i32 0, i32* %29, align 16
  %30 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 2
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 1
  store i32 1, i32* %31, align 4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %123, %3
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %126

35:                                               ; preds = %32
  %36 = load float*, float** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = fcmp une float %40, 0.000000e+00
  br i1 %41, label %42, label %119

42:                                               ; preds = %35
  %43 = load float*, float** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  %47 = load float, float* %46, align 4
  %48 = load float, float* @Q_PI, align 4
  %49 = fmul float %47, %48
  %50 = fdiv float %49, 1.800000e+02
  store float %50, float* %11, align 4
  %51 = load float, float* %11, align 4
  %52 = call i32 @cos(float %51)
  %53 = sitofp i32 %52 to float
  store float %53, float* %12, align 4
  %54 = load float, float* %11, align 4
  %55 = call i32 @sin(float %54)
  %56 = sitofp i32 %55 to float
  store float %56, float* %13, align 4
  %57 = load float*, float** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 %59
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %60, i64 0, i64 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %57, i64 %63
  %65 = load float, float* %64, align 4
  %66 = load float, float* %12, align 4
  %67 = fmul float %65, %66
  %68 = load float*, float** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 %70
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %68, i64 %74
  %76 = load float, float* %75, align 4
  %77 = load float, float* %13, align 4
  %78 = fmul float %76, %77
  %79 = fsub float %67, %78
  %80 = load float*, float** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 %82
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0, i64 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %80, i64 %86
  store float %79, float* %87, align 4
  %88 = load float*, float** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 %90
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 0, i64 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %88, i64 %94
  %96 = load float, float* %95, align 4
  %97 = load float, float* %13, align 4
  %98 = fmul float %96, %97
  %99 = load float*, float** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 %101
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %102, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %99, i64 %105
  %107 = load float, float* %106, align 4
  %108 = load float, float* %12, align 4
  %109 = fmul float %107, %108
  %110 = fadd float %98, %109
  %111 = load float*, float** %7, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 %113
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %114, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %111, i64 %117
  store float %110, float* %118, align 4
  br label %119

119:                                              ; preds = %42, %35
  %120 = load float*, float** %7, align 8
  %121 = load float*, float** %8, align 8
  %122 = call i32 @VectorCopy(float* %120, float* %121)
  br label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %32

126:                                              ; preds = %32
  %127 = load float*, float** %7, align 8
  %128 = load float*, float** %6, align 8
  %129 = call i32 @VectorCopy(float* %127, float* %128)
  ret void
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @cos(float) #1

declare dso_local i32 @sin(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
