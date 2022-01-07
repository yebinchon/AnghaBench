; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_setupGLES.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_setupGLES.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"glClearColor\00", align 1
@GL_CULL_FACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"glEnable(GL_CULL_FACE)\00", align 1
@GL_BACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"glCullFace\00", align 1
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IJK_GLES2_Renderer_setupGLES() #0 {
  %1 = call i32 @glClearColor(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %2 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @GL_CULL_FACE, align 4
  %4 = call i32 @glEnable(i32 %3)
  %5 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @GL_BACK, align 4
  %7 = call i32 @glCullFace(i32 %6)
  %8 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32, i32* @GL_DEPTH_TEST, align 4
  %10 = call i32 @glDisable(i32 %9)
  %11 = load i32, i32* @GL_TRUE, align 4
  ret i32 %11
}

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @IJK_GLES2_checkError_TRACE(i8*) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glCullFace(i32) #1

declare dso_local i32 @glDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
