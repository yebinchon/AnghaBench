; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_brush_primit.c_ComputeAxisBase.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_brush_primit.c_ComputeAxisBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ComputeAxisBase(float* %0, float* %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %9 = load float*, float** %4, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = call i32 @fabs(float %11)
  %13 = sitofp i32 %12 to double
  %14 = fcmp olt double %13, 0x3EB0C6F7A0B5ED8D
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load float*, float** %4, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  store float 0.000000e+00, float* %17, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = load float*, float** %4, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  %21 = load float, float* %20, align 4
  %22 = call i32 @fabs(float %21)
  %23 = sitofp i32 %22 to double
  %24 = fcmp olt double %23, 0x3EB0C6F7A0B5ED8D
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load float*, float** %4, align 8
  %27 = getelementptr inbounds float, float* %26, i64 1
  store float 0.000000e+00, float* %27, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load float*, float** %4, align 8
  %30 = getelementptr inbounds float, float* %29, i64 2
  %31 = load float, float* %30, align 4
  %32 = call i32 @fabs(float %31)
  %33 = sitofp i32 %32 to double
  %34 = fcmp olt double %33, 0x3EB0C6F7A0B5ED8D
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load float*, float** %4, align 8
  %37 = getelementptr inbounds float, float* %36, i64 2
  store float 0.000000e+00, float* %37, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = load float*, float** %4, align 8
  %40 = getelementptr inbounds float, float* %39, i64 2
  %41 = load float, float* %40, align 4
  %42 = load float*, float** %4, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  %44 = load float, float* %43, align 4
  %45 = load float*, float** %4, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load float, float* %46, align 4
  %48 = fmul float %44, %47
  %49 = load float*, float** %4, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  %51 = load float, float* %50, align 4
  %52 = load float*, float** %4, align 8
  %53 = getelementptr inbounds float, float* %52, i64 0
  %54 = load float, float* %53, align 4
  %55 = fmul float %51, %54
  %56 = fadd float %48, %55
  %57 = call float @sqrt(float %56)
  %58 = call i32 @atan2(float %41, float %57)
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  %60 = load float*, float** %4, align 8
  %61 = getelementptr inbounds float, float* %60, i64 1
  %62 = load float, float* %61, align 4
  %63 = load float*, float** %4, align 8
  %64 = getelementptr inbounds float, float* %63, i64 0
  %65 = load float, float* %64, align 4
  %66 = call i32 @atan2(float %62, float %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call float @sin(i32 %67)
  %69 = fneg float %68
  %70 = load float*, float** %5, align 8
  %71 = getelementptr inbounds float, float* %70, i64 0
  store float %69, float* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call float @cos(i32 %72)
  %74 = load float*, float** %5, align 8
  %75 = getelementptr inbounds float, float* %74, i64 1
  store float %73, float* %75, align 4
  %76 = load float*, float** %5, align 8
  %77 = getelementptr inbounds float, float* %76, i64 2
  store float 0.000000e+00, float* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call float @sin(i32 %78)
  %80 = fneg float %79
  %81 = load i32, i32* %8, align 4
  %82 = call float @cos(i32 %81)
  %83 = fmul float %80, %82
  %84 = load float*, float** %6, align 8
  %85 = getelementptr inbounds float, float* %84, i64 0
  store float %83, float* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call float @sin(i32 %86)
  %88 = fneg float %87
  %89 = load i32, i32* %8, align 4
  %90 = call float @sin(i32 %89)
  %91 = fmul float %88, %90
  %92 = load float*, float** %6, align 8
  %93 = getelementptr inbounds float, float* %92, i64 1
  store float %91, float* %93, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call float @cos(i32 %94)
  %96 = fneg float %95
  %97 = load float*, float** %6, align 8
  %98 = getelementptr inbounds float, float* %97, i64 2
  store float %96, float* %98, align 4
  ret void
}

declare dso_local i32 @fabs(float) #1

declare dso_local i32 @atan2(float, float) #1

declare dso_local float @sqrt(float) #1

declare dso_local float @sin(i32) #1

declare dso_local float @cos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
