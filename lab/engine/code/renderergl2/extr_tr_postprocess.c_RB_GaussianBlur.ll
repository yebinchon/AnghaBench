; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_postprocess.c_RB_GaussianBlur.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_postprocess.c_RB_GaussianBlur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__**, i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@tr = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@GLS_DEPTHTEST_DISABLE = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_GaussianBlur(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  store float %0, float* %2, align 4
  %7 = load float, float* %2, align 4
  %8 = call float @Com_Clamp(float 0.000000e+00, float 1.000000e+00, float %7)
  store float %8, float* %3, align 4
  %9 = load float, float* %3, align 4
  %10 = fcmp ole float %9, 0.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %92

12:                                               ; preds = %1
  %13 = load float*, float** %6, align 8
  %14 = call i32 @VectorSet4(float* %13, i32 1, i32 1, i32 1, i32 1)
  %15 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 2), align 8
  %16 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %15, i64 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %19 = load i32, i32* @GL_LINEAR, align 4
  %20 = call i32 @FBO_FastBlit(%struct.TYPE_13__* null, i32* null, %struct.TYPE_13__* %17, i32* null, i32 %18, i32 %19)
  %21 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 2), align 8
  %22 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %21, i64 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %24, i64 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %28 = load i32, i32* @GL_LINEAR, align 4
  %29 = call i32 @FBO_FastBlit(%struct.TYPE_13__* %23, i32* null, %struct.TYPE_13__* %26, i32* null, i32 %27, i32 %28)
  %30 = load i32, i32* @GL_FALSE, align 4
  %31 = load i32, i32* @GL_FALSE, align 4
  %32 = load i32, i32* @GL_FALSE, align 4
  %33 = load i32, i32* @GL_TRUE, align 4
  %34 = call i32 @qglColorMask(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %36 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %37 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %36, i64 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = load float*, float** %6, align 8
  %40 = load i32, i32* @GLS_DEPTHTEST_DISABLE, align 4
  %41 = call i32 @FBO_BlitFromTexture(i32 %35, i32* null, i32* null, %struct.TYPE_13__* %38, i32* null, i32* null, float* %39, i32 %40)
  %42 = load i32, i32* @GL_TRUE, align 4
  %43 = load i32, i32* @GL_TRUE, align 4
  %44 = load i32, i32* @GL_TRUE, align 4
  %45 = load i32, i32* @GL_TRUE, align 4
  %46 = call i32 @qglColorMask(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %47, i64 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %51 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %50, i64 1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = load float, float* %3, align 4
  %54 = call i32 @RB_HBlur(%struct.TYPE_13__* %49, %struct.TYPE_13__* %52, float %53)
  %55 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %56 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %55, i64 1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %59 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %58, i64 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = load float, float* %3, align 4
  %62 = call i32 @RB_VBlur(%struct.TYPE_13__* %57, %struct.TYPE_13__* %60, float %61)
  %63 = load float*, float** %4, align 8
  %64 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %65 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %64, i64 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %70 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %69, i64 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @VectorSet4(float* %63, i32 0, i32 0, i32 %68, i32 %73)
  %75 = load float*, float** %5, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 1), align 4
  %78 = call i32 @VectorSet4(float* %75, i32 0, i32 0, i32 %76, i32 %77)
  %79 = load float, float* %3, align 4
  %80 = load float*, float** %6, align 8
  %81 = getelementptr inbounds float, float* %80, i64 3
  store float %79, float* %81, align 4
  %82 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %83 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %82, i64 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load float*, float** %4, align 8
  %86 = load float*, float** %5, align 8
  %87 = load float*, float** %6, align 8
  %88 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %89 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @FBO_Blit(%struct.TYPE_13__* %84, float* %85, i32* null, i32* null, float* %86, i32* null, float* %87, i32 %90)
  br label %92

92:                                               ; preds = %12, %11
  ret void
}

declare dso_local float @Com_Clamp(float, float, float) #1

declare dso_local i32 @VectorSet4(float*, i32, i32, i32, i32) #1

declare dso_local i32 @FBO_FastBlit(%struct.TYPE_13__*, i32*, %struct.TYPE_13__*, i32*, i32, i32) #1

declare dso_local i32 @qglColorMask(i32, i32, i32, i32) #1

declare dso_local i32 @FBO_BlitFromTexture(i32, i32*, i32*, %struct.TYPE_13__*, i32*, i32*, float*, i32) #1

declare dso_local i32 @RB_HBlur(%struct.TYPE_13__*, %struct.TYPE_13__*, float) #1

declare dso_local i32 @RB_VBlur(%struct.TYPE_13__*, %struct.TYPE_13__*, float) #1

declare dso_local i32 @FBO_Blit(%struct.TYPE_13__*, float*, i32*, i32*, float*, i32*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
