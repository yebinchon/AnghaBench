; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_InFieldOfVision.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_InFieldOfVision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InFieldOfVision(float* %0, float %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float %1, float* %6, align 4
  store float* %2, float** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %90, %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %93

14:                                               ; preds = %11
  %15 = load float*, float** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %15, i64 %17
  %19 = load float, float* %18, align 4
  %20 = call float @AngleMod(float %19)
  store float %20, float* %10, align 4
  %21 = load float*, float** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  %25 = load float, float* %24, align 4
  %26 = call float @AngleMod(float %25)
  %27 = load float*, float** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  store float %26, float* %30, align 4
  %31 = load float*, float** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4
  %36 = load float, float* %10, align 4
  %37 = fsub float %35, %36
  store float %37, float* %9, align 4
  %38 = load float*, float** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  %43 = load float, float* %10, align 4
  %44 = fcmp ogt float %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %14
  %46 = load float, float* %9, align 4
  %47 = fpext float %46 to double
  %48 = fcmp ogt double %47, 1.800000e+02
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load float, float* %9, align 4
  %51 = fpext float %50 to double
  %52 = fsub double %51, 3.600000e+02
  %53 = fptrunc double %52 to float
  store float %53, float* %9, align 4
  br label %54

54:                                               ; preds = %49, %45
  br label %65

55:                                               ; preds = %14
  %56 = load float, float* %9, align 4
  %57 = fpext float %56 to double
  %58 = fcmp olt double %57, -1.800000e+02
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load float, float* %9, align 4
  %61 = fpext float %60 to double
  %62 = fadd double %61, 3.600000e+02
  %63 = fptrunc double %62 to float
  store float %63, float* %9, align 4
  br label %64

64:                                               ; preds = %59, %55
  br label %65

65:                                               ; preds = %64, %54
  %66 = load float, float* %9, align 4
  %67 = fcmp ogt float %66, 0.000000e+00
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load float, float* %9, align 4
  %70 = fpext float %69 to double
  %71 = load float, float* %6, align 4
  %72 = fpext float %71 to double
  %73 = fmul double %72, 5.000000e-01
  %74 = fcmp ogt double %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @qfalse, align 4
  store i32 %76, i32* %4, align 4
  br label %95

77:                                               ; preds = %68
  br label %89

78:                                               ; preds = %65
  %79 = load float, float* %9, align 4
  %80 = fpext float %79 to double
  %81 = load float, float* %6, align 4
  %82 = fneg float %81
  %83 = fpext float %82 to double
  %84 = fmul double %83, 5.000000e-01
  %85 = fcmp olt double %80, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @qfalse, align 4
  store i32 %87, i32* %4, align 4
  br label %95

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %11

93:                                               ; preds = %11
  %94 = load i32, i32* @qtrue, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %86, %75
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local float @AngleMod(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
