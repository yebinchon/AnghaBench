; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RB_SetGL2D.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RB_SetGL2D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__, %struct.TYPE_9__*, i64, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { double, double, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { double (...)* }

@backEnd = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@glState = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@qtrue = common dso_local global i64 0, align 8
@glConfig = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GLS_DEPTHTEST_DISABLE = common dso_local global i32 0, align 4
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@CT_TWO_SIDED = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_SetGL2D() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 2), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 1), align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glState, i32 0, i32 0), align 8
  %9 = icmp eq %struct.TYPE_9__* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %56

11:                                               ; preds = %6, %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 2), align 8
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 3, i32 0), align 8
  %13 = load i64, i64* @qtrue, align 8
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 2), align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glState, i32 0, i32 0), align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 1), align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glState, i32 0, i32 0), align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glState, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glState, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  br label %27

24:                                               ; preds = %11
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @glConfig, i32 0, i32 0), align 4
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @glConfig, i32 0, i32 1), align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @qglViewport(i32 0, i32 0, i32 %28, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @qglScissor(i32 0, i32 0, i32 %31, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @Mat4Ortho(i32 0, i32 %34, i32 %35, i32 0, i32 0, i32 1, i32 %36)
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @GL_SetProjectionMatrix(i32 %38)
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @Mat4Identity(i32 %40)
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @GL_SetModelviewMatrix(i32 %42)
  %44 = load i32, i32* @GLS_DEPTHTEST_DISABLE, align 4
  %45 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @GL_State(i32 %48)
  %50 = load i32, i32* @CT_TWO_SIDED, align 4
  %51 = call i32 @GL_Cull(i32 %50)
  %52 = load double (...)*, double (...)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ri, i32 0, i32 0), align 8
  %53 = call double (...) %52()
  store double %53, double* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 0), align 8
  %54 = load double, double* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 0), align 8
  %55 = fmul double %54, 1.000000e-03
  store double %55, double* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 1), align 8
  br label %56

56:                                               ; preds = %27, %10
  ret void
}

declare dso_local i32 @qglViewport(i32, i32, i32, i32) #1

declare dso_local i32 @qglScissor(i32, i32, i32, i32) #1

declare dso_local i32 @Mat4Ortho(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GL_SetProjectionMatrix(i32) #1

declare dso_local i32 @Mat4Identity(i32) #1

declare dso_local i32 @GL_SetModelviewMatrix(i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @GL_Cull(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
