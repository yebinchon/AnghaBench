; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_DrawTris.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_DrawTris.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@TB_COLORMAP = common dso_local global i32 0, align 4
@GLS_POLYMODE_LINE = common dso_local global i32 0, align 4
@GLS_DEPTHMASK_TRUE = common dso_local global i32 0, align 4
@UNIFORM_MODELVIEWPROJECTIONMATRIX = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@UNIFORM_COLOR = common dso_local global i32 0, align 4
@UNIFORM_ALPHATEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @DrawTris to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawTris(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 1), align 4
  %6 = load i32, i32* @TB_COLORMAP, align 4
  %7 = call i32 @GL_BindToTMU(i32 %5, i32 %6)
  %8 = load i32, i32* @GLS_POLYMODE_LINE, align 4
  %9 = load i32, i32* @GLS_DEPTHMASK_TRUE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @GL_State(i32 %10)
  %12 = call i32 @qglDepthRange(i32 0, i32 0)
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @GLSL_BindProgram(i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @UNIFORM_MODELVIEWPROJECTIONMATRIX, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glState, i32 0, i32 0), align 4
  %18 = call i32 @GLSL_SetUniformMat4(i32* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @VectorSet4(i32 %19, i32 1, i32 1, i32 1, i32 1)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @UNIFORM_COLOR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @GLSL_SetUniformVec4(i32* %21, i32 %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @UNIFORM_ALPHATEST, align 4
  %27 = call i32 @GLSL_SetUniformInt(i32* %25, i32 %26, i32 0)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @R_DrawElements(i32 %30, i32 %33)
  %35 = call i32 @qglDepthRange(i32 0, i32 1)
  ret void
}

declare dso_local i32 @GL_BindToTMU(i32, i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @qglDepthRange(i32, i32) #1

declare dso_local i32 @GLSL_BindProgram(i32*) #1

declare dso_local i32 @GLSL_SetUniformMat4(i32*, i32, i32) #1

declare dso_local i32 @VectorSet4(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformVec4(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformInt(i32*, i32, i32) #1

declare dso_local i32 @R_DrawElements(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
