; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_monitor.c_glfwSetGamma.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_monitor.c_glfwSetGamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i16*, i16*, i16* }

@FLT_MAX = common dso_local global float 0.000000e+00, align 4
@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid gamma value %f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glfwSetGamma(i32* %0, float %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store float %1, float* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load float, float* %4, align 4
  %15 = fcmp ogt float %14, 0.000000e+00
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load float, float* %4, align 4
  %19 = load float, float* @FLT_MAX, align 4
  %20 = fcmp ole float %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32 (...) @_GLFW_REQUIRE_INIT()
  %24 = load float, float* %4, align 4
  %25 = load float, float* %4, align 4
  %26 = fcmp une float %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load float, float* %4, align 4
  %29 = fcmp ole float %28, 0.000000e+00
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load float, float* %4, align 4
  %32 = load float, float* @FLT_MAX, align 4
  %33 = fcmp ogt float %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30, %27, %2
  %35 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %36 = load float, float* %4, align 4
  %37 = call i32 @_glfwInputError(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), float %36)
  br label %96

38:                                               ; preds = %30
  %39 = load i32*, i32** %3, align 8
  %40 = call %struct.TYPE_4__* @glfwGetGammaRamp(i32* %39)
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %8, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %96

44:                                               ; preds = %38
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i16* @calloc(i32 %47, i32 2)
  store i16* %48, i16** %6, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %78, %44
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = uitofp i32 %56 to float
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub i32 %60, 1
  %62 = uitofp i32 %61 to float
  %63 = fdiv float %57, %62
  store float %63, float* %9, align 4
  %64 = load float, float* %9, align 4
  %65 = load float, float* %4, align 4
  %66 = fdiv float 1.000000e+00, %65
  %67 = call float @powf(float %64, float %66) #3
  %68 = fmul float %67, 6.553500e+04
  %69 = fadd float %68, 5.000000e-01
  store float %69, float* %9, align 4
  %70 = load float, float* %9, align 4
  %71 = call float @_glfw_fminf(float %70, float 6.553500e+04)
  store float %71, float* %9, align 4
  %72 = load float, float* %9, align 4
  %73 = fptoui float %72 to i16
  %74 = load i16*, i16** %6, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %74, i64 %76
  store i16 %73, i16* %77, align 2
  br label %78

78:                                               ; preds = %55
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %49

81:                                               ; preds = %49
  %82 = load i16*, i16** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i16* %82, i16** %83, align 8
  %84 = load i16*, i16** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i16* %84, i16** %85, align 8
  %86 = load i16*, i16** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i16* %86, i16** %87, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @glfwSetGammaRamp(i32* %92, %struct.TYPE_4__* %7)
  %94 = load i16*, i16** %6, align 8
  %95 = call i32 @free(i16* %94)
  br label %96

96:                                               ; preds = %81, %43, %34
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT(...) #1

declare dso_local i32 @_glfwInputError(i32, i8*, float) #1

declare dso_local %struct.TYPE_4__* @glfwGetGammaRamp(i32*) #1

declare dso_local i16* @calloc(i32, i32) #1

; Function Attrs: nounwind
declare dso_local float @powf(float, float) #2

declare dso_local float @_glfw_fminf(float, float) #1

declare dso_local i32 @glfwSetGammaRamp(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @free(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
