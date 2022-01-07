; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_noise.c_R_NoiseGet4f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_noise.c_R_NoiseGet4f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @R_NoiseGet4f(float %0, float %1, float %2, double %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca [4 x float], align 16
  %19 = alloca [4 x float], align 16
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca [2 x float], align 4
  %23 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store double %3, double* %8, align 8
  %24 = load float, float* %5, align 4
  %25 = fpext float %24 to double
  %26 = call i64 @floor(double %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load float, float* %5, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sitofp i32 %29 to float
  %31 = fsub float %28, %30
  store float %31, float* %14, align 4
  %32 = load float, float* %6, align 4
  %33 = fpext float %32 to double
  %34 = call i64 @floor(double %33)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load float, float* %6, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sitofp i32 %37 to float
  %39 = fsub float %36, %38
  store float %39, float* %15, align 4
  %40 = load float, float* %7, align 4
  %41 = fpext float %40 to double
  %42 = call i64 @floor(double %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load float, float* %7, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sitofp i32 %45 to float
  %47 = fsub float %44, %46
  store float %47, float* %16, align 4
  %48 = load double, double* %8, align 8
  %49 = call i64 @floor(double %48)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load double, double* %8, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sitofp i32 %52 to double
  %54 = fsub double %51, %53
  %55 = fptrunc double %54 to float
  store float %55, float* %17, align 4
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %171, %4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %174

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = call float @GetNoiseValue(i32 %60, i32 %61, i32 %62, i32 %65)
  %67 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 0
  store float %66, float* %67, align 16
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %72, %73
  %75 = call float @GetNoiseValue(i32 %69, i32 %70, i32 %71, i32 %74)
  %76 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 1
  store float %75, float* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %81, %82
  %84 = call float @GetNoiseValue(i32 %77, i32 %79, i32 %80, i32 %83)
  %85 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 2
  store float %84, float* %85, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %91, %92
  %94 = call float @GetNoiseValue(i32 %87, i32 %89, i32 %90, i32 %93)
  %95 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 3
  store float %94, float* %95, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %100, %101
  %103 = call float @GetNoiseValue(i32 %96, i32 %97, i32 %99, i32 %102)
  %104 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 0
  store float %103, float* %104, align 16
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %110, %111
  %113 = call float @GetNoiseValue(i32 %106, i32 %107, i32 %109, i32 %112)
  %114 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 1
  store float %113, float* %114, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %120, %121
  %123 = call float @GetNoiseValue(i32 %115, i32 %117, i32 %119, i32 %122)
  %124 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 2
  store float %123, float* %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %131, %132
  %134 = call float @GetNoiseValue(i32 %126, i32 %128, i32 %130, i32 %133)
  %135 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 3
  store float %134, float* %135, align 4
  %136 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 0
  %137 = load float, float* %136, align 16
  %138 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 1
  %139 = load float, float* %138, align 4
  %140 = load float, float* %14, align 4
  %141 = call float @LERP(float %137, float %139, float %140)
  %142 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 2
  %143 = load float, float* %142, align 8
  %144 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 3
  %145 = load float, float* %144, align 4
  %146 = load float, float* %14, align 4
  %147 = call float @LERP(float %143, float %145, float %146)
  %148 = load float, float* %15, align 4
  %149 = call float @LERP(float %141, float %147, float %148)
  store float %149, float* %20, align 4
  %150 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 0
  %151 = load float, float* %150, align 16
  %152 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 1
  %153 = load float, float* %152, align 4
  %154 = load float, float* %14, align 4
  %155 = call float @LERP(float %151, float %153, float %154)
  %156 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 2
  %157 = load float, float* %156, align 8
  %158 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 3
  %159 = load float, float* %158, align 4
  %160 = load float, float* %14, align 4
  %161 = call float @LERP(float %157, float %159, float %160)
  %162 = load float, float* %15, align 4
  %163 = call float @LERP(float %155, float %161, float %162)
  store float %163, float* %21, align 4
  %164 = load float, float* %20, align 4
  %165 = load float, float* %21, align 4
  %166 = load float, float* %16, align 4
  %167 = call float @LERP(float %164, float %165, float %166)
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 %169
  store float %167, float* %170, align 4
  br label %171

171:                                              ; preds = %59
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %56

174:                                              ; preds = %56
  %175 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 0
  %176 = load float, float* %175, align 4
  %177 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 1
  %178 = load float, float* %177, align 4
  %179 = load float, float* %17, align 4
  %180 = call float @LERP(float %176, float %178, float %179)
  store float %180, float* %23, align 4
  %181 = load float, float* %23, align 4
  ret float %181
}

declare dso_local i64 @floor(double) #1

declare dso_local float @GetNoiseValue(i32, i32, i32, i32) #1

declare dso_local float @LERP(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
