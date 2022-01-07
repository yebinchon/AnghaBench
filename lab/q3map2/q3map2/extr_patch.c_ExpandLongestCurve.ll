; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_patch.c_ExpandLongestCurve.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_patch.c_ExpandLongestCurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APPROX_SUBDIVISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float*)* @ExpandLongestCurve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExpandLongestCurve(float* %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %18 = load float*, float** %7, align 8
  %19 = load float*, float** %6, align 8
  %20 = load float*, float** %12, align 8
  %21 = call i32 @VectorSubtract(float* %18, float* %19, float* %20)
  %22 = load float*, float** %12, align 8
  %23 = load float*, float** %12, align 8
  %24 = call float @VectorNormalize(float* %22, float* %23)
  %25 = fcmp olt float %24, 1.250000e-01
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %149

27:                                               ; preds = %4
  %28 = load float*, float** %8, align 8
  %29 = load float*, float** %7, align 8
  %30 = load float*, float** %13, align 8
  %31 = call i32 @VectorSubtract(float* %28, float* %29, float* %30)
  %32 = load float*, float** %13, align 8
  %33 = load float*, float** %13, align 8
  %34 = call float @VectorNormalize(float* %32, float* %33)
  %35 = fcmp olt float %34, 1.250000e-01
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %149

37:                                               ; preds = %27
  %38 = load float*, float** %8, align 8
  %39 = load float*, float** %6, align 8
  %40 = load float*, float** %14, align 8
  %41 = call i32 @VectorSubtract(float* %38, float* %39, float* %40)
  %42 = load float*, float** %14, align 8
  %43 = load float*, float** %14, align 8
  %44 = call float @VectorNormalize(float* %42, float* %43)
  %45 = fcmp olt float %44, 1.250000e-01
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %149

47:                                               ; preds = %37
  %48 = load float*, float** %12, align 8
  %49 = load float*, float** %13, align 8
  %50 = call float @DotProduct(float* %48, float* %49)
  %51 = fcmp ogt float %50, 0x3FEFAE1480000000
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load float*, float** %12, align 8
  %54 = load float*, float** %14, align 8
  %55 = call float @DotProduct(float* %53, float* %54)
  %56 = fcmp ogt float %55, 0x3FEFAE1480000000
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %149

58:                                               ; preds = %52, %47
  %59 = load float*, float** %7, align 8
  %60 = load float*, float** %6, align 8
  %61 = load float*, float** %12, align 8
  %62 = call i32 @VectorSubtract(float* %59, float* %60, float* %61)
  %63 = load float*, float** %8, align 8
  %64 = load float*, float** %7, align 8
  %65 = load float*, float** %13, align 8
  %66 = call i32 @VectorSubtract(float* %63, float* %64, float* %65)
  %67 = load float*, float** %6, align 8
  %68 = load float*, float** %16, align 8
  %69 = call i32 @VectorCopy(float* %67, float* %68)
  store i32 0, i32* %9, align 4
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %10, align 4
  br label %70

70:                                               ; preds = %133, %58
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @APPROX_SUBDIVISION, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %141

74:                                               ; preds = %70
  %75 = load float, float* %10, align 4
  %76 = fsub float 1.000000e+00, %75
  %77 = load float*, float** %12, align 8
  %78 = getelementptr inbounds float, float* %77, i64 0
  %79 = load float, float* %78, align 4
  %80 = fmul float %76, %79
  %81 = load float, float* %10, align 4
  %82 = load float*, float** %13, align 8
  %83 = getelementptr inbounds float, float* %82, i64 0
  %84 = load float, float* %83, align 4
  %85 = fmul float %81, %84
  %86 = fadd float %80, %85
  %87 = load float*, float** %17, align 8
  %88 = getelementptr inbounds float, float* %87, i64 0
  store float %86, float* %88, align 4
  %89 = load float, float* %10, align 4
  %90 = fsub float 1.000000e+00, %89
  %91 = load float*, float** %12, align 8
  %92 = getelementptr inbounds float, float* %91, i64 1
  %93 = load float, float* %92, align 4
  %94 = fmul float %90, %93
  %95 = load float, float* %10, align 4
  %96 = load float*, float** %13, align 8
  %97 = getelementptr inbounds float, float* %96, i64 1
  %98 = load float, float* %97, align 4
  %99 = fmul float %95, %98
  %100 = fadd float %94, %99
  %101 = load float*, float** %17, align 8
  %102 = getelementptr inbounds float, float* %101, i64 1
  store float %100, float* %102, align 4
  %103 = load float, float* %10, align 4
  %104 = fsub float 1.000000e+00, %103
  %105 = load float*, float** %12, align 8
  %106 = getelementptr inbounds float, float* %105, i64 2
  %107 = load float, float* %106, align 4
  %108 = fmul float %104, %107
  %109 = load float, float* %10, align 4
  %110 = load float*, float** %13, align 8
  %111 = getelementptr inbounds float, float* %110, i64 2
  %112 = load float, float* %111, align 4
  %113 = fmul float %109, %112
  %114 = fadd float %108, %113
  %115 = load float*, float** %17, align 8
  %116 = getelementptr inbounds float, float* %115, i64 2
  store float %114, float* %116, align 4
  %117 = load float*, float** %6, align 8
  %118 = load float*, float** %17, align 8
  %119 = load float*, float** %15, align 8
  %120 = call i32 @VectorAdd(float* %117, float* %118, float* %119)
  %121 = load float*, float** %15, align 8
  %122 = load float*, float** %16, align 8
  %123 = load float*, float** %17, align 8
  %124 = call i32 @VectorSubtract(float* %121, float* %122, float* %123)
  %125 = load float*, float** %17, align 8
  %126 = call i64 @VectorLength(float* %125)
  %127 = sitofp i64 %126 to float
  %128 = load float, float* %11, align 4
  %129 = fadd float %128, %127
  store float %129, float* %11, align 4
  %130 = load float*, float** %15, align 8
  %131 = load float*, float** %16, align 8
  %132 = call i32 @VectorCopy(float* %130, float* %131)
  br label %133

133:                                              ; preds = %74
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* @APPROX_SUBDIVISION, align 4
  %137 = sitofp i32 %136 to float
  %138 = fdiv float 1.000000e+00, %137
  %139 = load float, float* %10, align 4
  %140 = fadd float %139, %138
  store float %140, float* %10, align 4
  br label %70

141:                                              ; preds = %70
  %142 = load float, float* %11, align 4
  %143 = load float*, float** %5, align 8
  %144 = load float, float* %143, align 4
  %145 = fcmp ogt float %142, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load float, float* %11, align 4
  %148 = load float*, float** %5, align 8
  store float %147, float* %148, align 4
  br label %149

149:                                              ; preds = %26, %36, %46, %57, %146, %141
  ret void
}

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

declare dso_local float @VectorNormalize(float*, float*) #1

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @VectorAdd(float*, float*, float*) #1

declare dso_local i64 @VectorLength(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
