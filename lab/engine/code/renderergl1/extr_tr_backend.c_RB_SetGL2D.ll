; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_RB_SetGL2D.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_RB_SetGL2D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { double, double, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { double (...)* }

@qtrue = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@glConfig = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GLS_DEPTHTEST_DISABLE = common dso_local global i32 0, align 4
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@CT_TWO_SIDED = common dso_local global i32 0, align 4
@GL_CLIP_PLANE0 = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_SetGL2D() #0 {
  %1 = load i32, i32* @qtrue, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 2), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0, i32 2), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 1, i32 0), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glConfig, i32 0, i32 1), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glConfig, i32 0, i32 0), align 4
  %5 = call i32 @qglViewport(i32 0, i32 0, i32 %3, i32 %4)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glConfig, i32 0, i32 1), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glConfig, i32 0, i32 0), align 4
  %8 = call i32 @qglScissor(i32 0, i32 0, i32 %6, i32 %7)
  %9 = load i32, i32* @GL_PROJECTION, align 4
  %10 = call i32 @qglMatrixMode(i32 %9)
  %11 = call i32 (...) @qglLoadIdentity()
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 1, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glConfig, i32 0, i32 1), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glConfig, i32 0, i32 0), align 4
  %17 = call i32 @qglOrtho(i32 0, i32 %15, i32 0, i32 %16, i32 0, i32 1)
  br label %22

18:                                               ; preds = %0
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glConfig, i32 0, i32 1), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glConfig, i32 0, i32 0), align 4
  %21 = call i32 @qglOrtho(i32 0, i32 %19, i32 %20, i32 0, i32 0, i32 1)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @GL_MODELVIEW, align 4
  %24 = call i32 @qglMatrixMode(i32 %23)
  %25 = call i32 (...) @qglLoadIdentity()
  %26 = load i32, i32* @GLS_DEPTHTEST_DISABLE, align 4
  %27 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @GL_State(i32 %30)
  %32 = load i32, i32* @CT_TWO_SIDED, align 4
  %33 = call i32 @GL_Cull(i32 %32)
  %34 = load i32, i32* @GL_CLIP_PLANE0, align 4
  %35 = call i32 @qglDisable(i32 %34)
  %36 = load double (...)*, double (...)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %37 = call double (...) %36()
  store double %37, double* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0, i32 0), align 8
  %38 = load double, double* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0, i32 0), align 8
  %39 = fmul double %38, 1.000000e-03
  store double %39, double* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @qglViewport(i32, i32, i32, i32) #1

declare dso_local i32 @qglScissor(i32, i32, i32, i32) #1

declare dso_local i32 @qglMatrixMode(i32) #1

declare dso_local i32 @qglLoadIdentity(...) #1

declare dso_local i32 @qglOrtho(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @GL_Cull(i32) #1

declare dso_local i32 @qglDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
