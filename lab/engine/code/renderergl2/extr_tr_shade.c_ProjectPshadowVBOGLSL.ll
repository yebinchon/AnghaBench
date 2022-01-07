; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_ProjectPshadowVBOGLSL.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_ProjectPshadowVBOGLSL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { float*, float, float, i32* }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i32 }

@tess = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@UNIFORM_MODELVIEWPROJECTIONMATRIX = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@UNIFORM_LIGHTORIGIN = common dso_local global i32 0, align 4
@UNIFORM_LIGHTFORWARD = common dso_local global i32 0, align 4
@UNIFORM_LIGHTRIGHT = common dso_local global i32 0, align 4
@UNIFORM_LIGHTUP = common dso_local global i32 0, align 4
@UNIFORM_LIGHTRADIUS = common dso_local global i32 0, align 4
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DEPTHFUNC_EQUAL = common dso_local global i32 0, align 4
@UNIFORM_ALPHATEST = common dso_local global i32 0, align 4
@TB_DIFFUSEMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ProjectPshadowVBOGLSL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProjectPshadowVBOGLSL() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  store %struct.TYPE_11__* @tess, %struct.TYPE_11__** %6, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 1, i32 0), align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %135

13:                                               ; preds = %0
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ComputeDeformValues(i32* %4, i32 %14)
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %132, %13
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 1, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %135

20:                                               ; preds = %16
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 0), align 8
  %22 = load i32, i32* %1, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %132

27:                                               ; preds = %20
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 1, i32 1), align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %30
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %7, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load float*, float** %33, align 8
  %35 = load float*, float** %2, align 8
  %36 = call i32 @VectorCopy(float* %34, float* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load float, float* %38, align 8
  store float %39, float* %3, align 4
  store i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 1), i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @GLSL_BindProgram(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* @UNIFORM_MODELVIEWPROJECTIONMATRIX, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glState, i32 0, i32 0), align 4
  %45 = call i32 @GLSL_SetUniformMat4(i32* %42, i32 %43, i32 %44)
  %46 = load float*, float** %2, align 8
  %47 = load float*, float** %9, align 8
  %48 = call i32 @VectorCopy(float* %46, float* %47)
  %49 = load float*, float** %9, align 8
  %50 = getelementptr inbounds float, float* %49, i64 3
  store float 1.000000e+00, float* %50, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @UNIFORM_LIGHTORIGIN, align 4
  %53 = load float*, float** %9, align 8
  %54 = call i32 @GLSL_SetUniformVec4(i32* %51, i32 %52, float* %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load float, float* %61, align 4
  %63 = fdiv float 1.000000e+00, %62
  %64 = load float*, float** %9, align 8
  %65 = call i32 @VectorScale(i32 %59, float %63, float* %64)
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* @UNIFORM_LIGHTFORWARD, align 4
  %68 = load float*, float** %9, align 8
  %69 = call i32 @GLSL_SetUniformVec3(i32* %66, i32 %67, float* %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load float, float* %76, align 4
  %78 = fdiv float 1.000000e+00, %77
  %79 = load float*, float** %9, align 8
  %80 = call i32 @VectorScale(i32 %74, float %78, float* %79)
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* @UNIFORM_LIGHTRIGHT, align 4
  %83 = load float*, float** %9, align 8
  %84 = call i32 @GLSL_SetUniformVec3(i32* %81, i32 %82, float* %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load float, float* %91, align 4
  %93 = fdiv float 1.000000e+00, %92
  %94 = load float*, float** %9, align 8
  %95 = call i32 @VectorScale(i32 %89, float %93, float* %94)
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* @UNIFORM_LIGHTUP, align 4
  %98 = load float*, float** %9, align 8
  %99 = call i32 @GLSL_SetUniformVec3(i32* %96, i32 %97, float* %98)
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* @UNIFORM_LIGHTRADIUS, align 4
  %102 = load float, float* %3, align 4
  %103 = call i32 @GLSL_SetUniformFloat(i32* %100, i32 %101, float %102)
  %104 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %105 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @GLS_DEPTHFUNC_EQUAL, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @GL_State(i32 %108)
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* @UNIFORM_ALPHATEST, align 4
  %112 = call i32 @GLSL_SetUniformInt(i32* %110, i32 %111, i32 0)
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 0), align 8
  %114 = load i32, i32* %1, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @TB_DIFFUSEMAP, align 4
  %119 = call i32 @GL_BindToTMU(i32 %117, i32 %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @R_DrawElements(i64 %122, i32 %125)
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 1), align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 0, i32 0), align 8
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 0, i32 0), align 8
  br label %132

132:                                              ; preds = %27, %26
  %133 = load i32, i32* %1, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %1, align 4
  br label %16

135:                                              ; preds = %12, %16
  ret void
}

declare dso_local i32 @ComputeDeformValues(i32*, i32) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @GLSL_BindProgram(i32*) #1

declare dso_local i32 @GLSL_SetUniformMat4(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformVec4(i32*, i32, float*) #1

declare dso_local i32 @VectorScale(i32, float, float*) #1

declare dso_local i32 @GLSL_SetUniformVec3(i32*, i32, float*) #1

declare dso_local i32 @GLSL_SetUniformFloat(i32*, i32, float) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @GLSL_SetUniformInt(i32*, i32, i32) #1

declare dso_local i32 @GL_BindToTMU(i32, i32) #1

declare dso_local i32 @R_DrawElements(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
