; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shadows.c_RB_ShadowFinish.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shadows.c_RB_ShadowFinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@r_shadows = common dso_local global %struct.TYPE_5__* null, align 8
@glConfig = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GL_STENCIL_TEST = common dso_local global i32 0, align 4
@GL_NOTEQUAL = common dso_local global i32 0, align 4
@GL_CLIP_PLANE0 = common dso_local global i32 0, align 4
@CT_TWO_SIDED = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GLS_DEPTHMASK_TRUE = common dso_local global i32 0, align 4
@GLS_SRCBLEND_DST_COLOR = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ZERO = common dso_local global i32 0, align 4
@GL_QUADS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_ShadowFinish() #0 {
  %1 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_shadows, align 8
  %2 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %39

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 0), align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %39

10:                                               ; preds = %6
  %11 = load i32, i32* @GL_STENCIL_TEST, align 4
  %12 = call i32 @qglEnable(i32 %11)
  %13 = load i32, i32* @GL_NOTEQUAL, align 4
  %14 = call i32 @qglStencilFunc(i32 %13, i32 0, i32 255)
  %15 = load i32, i32* @GL_CLIP_PLANE0, align 4
  %16 = call i32 @qglDisable(i32 %15)
  %17 = load i32, i32* @CT_TWO_SIDED, align 4
  %18 = call i32 @GL_Cull(i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 0), align 4
  %20 = call i32 @GL_Bind(i32 %19)
  %21 = call i32 (...) @qglLoadIdentity()
  %22 = call i32 @qglColor3f(float 0x3FE3333340000000, float 0x3FE3333340000000, float 0x3FE3333340000000)
  %23 = load i32, i32* @GLS_DEPTHMASK_TRUE, align 4
  %24 = load i32, i32* @GLS_SRCBLEND_DST_COLOR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @GL_State(i32 %27)
  %29 = load i32, i32* @GL_QUADS, align 4
  %30 = call i32 @qglBegin(i32 %29)
  %31 = call i32 @qglVertex3f(i32 -100, i32 100, i32 -10)
  %32 = call i32 @qglVertex3f(i32 100, i32 100, i32 -10)
  %33 = call i32 @qglVertex3f(i32 100, i32 -100, i32 -10)
  %34 = call i32 @qglVertex3f(i32 -100, i32 -100, i32 -10)
  %35 = call i32 (...) @qglEnd()
  %36 = call i32 @qglColor4f(i32 1, i32 1, i32 1, i32 1)
  %37 = load i32, i32* @GL_STENCIL_TEST, align 4
  %38 = call i32 @qglDisable(i32 %37)
  br label %39

39:                                               ; preds = %10, %9, %5
  ret void
}

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @qglStencilFunc(i32, i32, i32) #1

declare dso_local i32 @qglDisable(i32) #1

declare dso_local i32 @GL_Cull(i32) #1

declare dso_local i32 @GL_Bind(i32) #1

declare dso_local i32 @qglLoadIdentity(...) #1

declare dso_local i32 @qglColor3f(float, float, float) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @qglBegin(i32) #1

declare dso_local i32 @qglVertex3f(i32, i32, i32) #1

declare dso_local i32 @qglEnd(...) #1

declare dso_local i32 @qglColor4f(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
