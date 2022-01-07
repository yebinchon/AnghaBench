; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_fbo.c_FBO_Blit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_fbo.c_FBO_Blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, i8*)* }
%struct.TYPE_6__ = type { i32*, i64, i64 }
%struct.shaderProgram_s = type { i32 }

@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Tried to blit from a NULL FBO!\0A\00", align 1
@GLS_DEPTHTEST_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FBO_Blit(%struct.TYPE_6__* %0, float* %1, i32 %2, %struct.TYPE_6__* %3, float* %4, %struct.shaderProgram_s* %5, float* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca float*, align 8
  %14 = alloca %struct.shaderProgram_s*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %12, align 8
  store float* %4, float** %13, align 8
  store %struct.shaderProgram_s* %5, %struct.shaderProgram_s** %14, align 8
  store float* %6, float** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %8
  %21 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %22 = load i32, i32* @PRINT_WARNING, align 4
  %23 = call i32 %21(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %95

24:                                               ; preds = %8
  %25 = load float*, float** %10, align 8
  %26 = icmp ne float* %25, null
  br i1 %26, label %27, label %76

27:                                               ; preds = %24
  %28 = load float*, float** %10, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  %30 = load float, float* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sitofp i64 %33 to float
  %35 = fdiv float %30, %34
  %36 = load float*, float** %17, align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  store float %35, float* %37, align 4
  %38 = load float*, float** %10, align 8
  %39 = getelementptr inbounds float, float* %38, i64 1
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %10, align 8
  %42 = getelementptr inbounds float, float* %41, i64 3
  %43 = load float, float* %42, align 4
  %44 = fadd float %40, %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sitofp i64 %47 to float
  %49 = fdiv float %44, %48
  %50 = load float*, float** %17, align 8
  %51 = getelementptr inbounds float, float* %50, i64 1
  store float %49, float* %51, align 4
  %52 = load float*, float** %10, align 8
  %53 = getelementptr inbounds float, float* %52, i64 0
  %54 = load float, float* %53, align 4
  %55 = load float*, float** %10, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  %57 = load float, float* %56, align 4
  %58 = fadd float %54, %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = sitofp i64 %61 to float
  %63 = fdiv float %58, %62
  %64 = load float*, float** %17, align 8
  %65 = getelementptr inbounds float, float* %64, i64 2
  store float %63, float* %65, align 4
  %66 = load float*, float** %10, align 8
  %67 = getelementptr inbounds float, float* %66, i64 1
  %68 = load float, float* %67, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sitofp i64 %71 to float
  %73 = fdiv float %68, %72
  %74 = load float*, float** %17, align 8
  %75 = getelementptr inbounds float, float* %74, i64 3
  store float %73, float* %75, align 4
  br label %79

76:                                               ; preds = %24
  %77 = load float*, float** %17, align 8
  %78 = call i32 @VectorSet4(float* %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00)
  br label %79

79:                                               ; preds = %76, %27
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load float*, float** %17, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %88 = load float*, float** %13, align 8
  %89 = load %struct.shaderProgram_s*, %struct.shaderProgram_s** %14, align 8
  %90 = load float*, float** %15, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @GLS_DEPTHTEST_DISABLE, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @FBO_BlitFromTexture(i32 %84, float* %85, i32 %86, %struct.TYPE_6__* %87, float* %88, %struct.shaderProgram_s* %89, float* %90, i32 %93)
  br label %95

95:                                               ; preds = %79, %20
  ret void
}

declare dso_local i32 @VectorSet4(float*, float, float, float, float) #1

declare dso_local i32 @FBO_BlitFromTexture(i32, float*, i32, %struct.TYPE_6__*, float*, %struct.shaderProgram_s*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
