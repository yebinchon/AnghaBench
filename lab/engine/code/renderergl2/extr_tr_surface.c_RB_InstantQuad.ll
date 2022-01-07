; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_InstantQuad.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_InstantQuad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@tr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@UNIFORM_MODELVIEWPROJECTIONMATRIX = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@UNIFORM_COLOR = common dso_local global i32 0, align 4
@colorWhite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_InstantQuad(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i32], align 16
  store i32* %0, i32** %2, align 8
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* %4, align 16
  %6 = call i32 @VectorSet2(i32 %5, float 0.000000e+00, float 0.000000e+00)
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @VectorSet2(i32 %8, float 1.000000e+00, float 0.000000e+00)
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @VectorSet2(i32 %11, float 1.000000e+00, float 1.000000e+00)
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @VectorSet2(i32 %14, float 0.000000e+00, float 1.000000e+00)
  %16 = call i32 @GLSL_BindProgram(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0))
  %17 = load i32, i32* @UNIFORM_MODELVIEWPROJECTIONMATRIX, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 0), align 4
  %19 = call i32 @GLSL_SetUniformMat4(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), i32 %17, i32 %18)
  %20 = load i32, i32* @UNIFORM_COLOR, align 4
  %21 = load i32, i32* @colorWhite, align 4
  %22 = call i32 @GLSL_SetUniformVec4(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), i32 %20, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %25 = call i32 @RB_InstantQuad2(i32* %23, i32* %24)
  ret void
}

declare dso_local i32 @VectorSet2(i32, float, float) #1

declare dso_local i32 @GLSL_BindProgram(i32*) #1

declare dso_local i32 @GLSL_SetUniformMat4(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformVec4(i32*, i32, i32) #1

declare dso_local i32 @RB_InstantQuad2(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
