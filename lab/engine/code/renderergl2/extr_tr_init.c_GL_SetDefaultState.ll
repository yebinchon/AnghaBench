; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_init.c_GL_SetDefaultState.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_init.c_GL_SetDefaultState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32*, i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GL_FRONT = common dso_local global i32 0, align 4
@glRefConfig = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@r_textureMode = common dso_local global %struct.TYPE_6__* null, align 8
@GL_LEQUAL = common dso_local global i32 0, align 4
@GLS_DEPTHTEST_DISABLE = common dso_local global i32 0, align 4
@GLS_DEPTHMASK_TRUE = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@CT_TWO_SIDED = common dso_local global i32 0, align 4
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_ELEMENT_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_FRONT_AND_BACK = common dso_local global i32 0, align 4
@GL_FILL = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_TEXTURE_CUBE_MAP_SEAMLESS = common dso_local global i32 0, align 4
@r_offsetFactor = common dso_local global %struct.TYPE_8__* null, align 8
@r_offsetUnits = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_SetDefaultState() #0 {
  %1 = call i32 @qglClearDepth(float 1.000000e+00)
  %2 = load i32, i32* @GL_FRONT, align 4
  %3 = call i32 @qglCullFace(i32 %2)
  %4 = call i32 (...) @GL_BindNullTextures()
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glRefConfig, i32 0, i32 2), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @GL_BindNullFramebuffers()
  br label %9

9:                                                ; preds = %7, %0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_textureMode, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @GL_TextureMode(i32 %12)
  %14 = load i32, i32* @GL_LEQUAL, align 4
  %15 = call i32 @qglDepthFunc(i32 %14)
  %16 = load i32, i32* @GLS_DEPTHTEST_DISABLE, align 4
  %17 = load i32, i32* @GLS_DEPTHMASK_TRUE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glState, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glState, i32 0, i32 5), align 8
  %19 = load i32, i32* @CT_TWO_SIDED, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glState, i32 0, i32 4), align 4
  %20 = load i32, i32* @GL_FRONT, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glState, i32 0, i32 3), align 8
  %21 = call i32 (...) @GL_BindNullProgram()
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glRefConfig, i32 0, i32 1), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %9
  %25 = call i32 @qglBindVertexArray(i32 0)
  br label %26

26:                                               ; preds = %24, %9
  %27 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %28 = call i32 @qglBindBuffer(i32 %27, i32 0)
  %29 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %30 = call i32 @qglBindBuffer(i32 %29, i32 0)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glState, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glState, i32 0, i32 1), align 8
  %31 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %32 = load i32, i32* @GL_FILL, align 4
  %33 = call i32 @qglPolygonMode(i32 %31, i32 %32)
  %34 = load i32, i32* @GL_TRUE, align 4
  %35 = call i32 @qglDepthMask(i32 %34)
  %36 = load i32, i32* @GL_DEPTH_TEST, align 4
  %37 = call i32 @qglDisable(i32 %36)
  %38 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %39 = call i32 @qglEnable(i32 %38)
  %40 = load i32, i32* @GL_CULL_FACE, align 4
  %41 = call i32 @qglDisable(i32 %40)
  %42 = load i32, i32* @GL_BLEND, align 4
  %43 = call i32 @qglDisable(i32 %42)
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glRefConfig, i32 0, i32 0), align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %26
  %47 = load i32, i32* @GL_TEXTURE_CUBE_MAP_SEAMLESS, align 4
  %48 = call i32 @qglEnable(i32 %47)
  br label %49

49:                                               ; preds = %46, %26
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_offsetFactor, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_offsetUnits, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @qglPolygonOffset(i32 %52, i32 %55)
  %57 = call i32 @qglClearColor(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  ret void
}

declare dso_local i32 @qglClearDepth(float) #1

declare dso_local i32 @qglCullFace(i32) #1

declare dso_local i32 @GL_BindNullTextures(...) #1

declare dso_local i32 @GL_BindNullFramebuffers(...) #1

declare dso_local i32 @GL_TextureMode(i32) #1

declare dso_local i32 @qglDepthFunc(i32) #1

declare dso_local i32 @GL_BindNullProgram(...) #1

declare dso_local i32 @qglBindVertexArray(i32) #1

declare dso_local i32 @qglBindBuffer(i32, i32) #1

declare dso_local i32 @qglPolygonMode(i32, i32) #1

declare dso_local i32 @qglDepthMask(i32) #1

declare dso_local i32 @qglDisable(i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @qglPolygonOffset(i32, i32) #1

declare dso_local i32 @qglClearColor(float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
