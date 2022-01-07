; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_init.c_GL_SetDefaultState.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_init.c_GL_SetDefaultState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GL_SetDefaultState.initial_color = internal constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@GL_FRONT = common dso_local global i32 0, align 4
@GL_CURRENT_COLOR = common dso_local global i32 0, align 4
@qglActiveTextureARB = common dso_local global i64 0, align 8
@r_textureMode = common dso_local global %struct.TYPE_3__* null, align 8
@GL_MODULATE = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_SMOOTH = common dso_local global i32 0, align 4
@GL_LEQUAL = common dso_local global i32 0, align 4
@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4
@GLS_DEPTHTEST_DISABLE = common dso_local global i32 0, align 4
@GLS_DEPTHMASK_TRUE = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GL_FRONT_AND_BACK = common dso_local global i32 0, align 4
@GL_FILL = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_SetDefaultState() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = call i32 @qglClearDepth(float 1.000000e+00)
  %3 = load i32, i32* @GL_FRONT, align 4
  %4 = call i32 @qglCullFace(i32 %3)
  %5 = load i32, i32* @GL_CURRENT_COLOR, align 4
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %7 = call i32 @qglGetFloatv(i32 %5, i32* %6)
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %9 = call i64 @memcmp(i32* %8, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @GL_SetDefaultState.initial_color, i64 0, i64 0), i32 16)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @qglColor4f(i32 1, i32 1, i32 1, i32 1)
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i64, i64* @qglActiveTextureARB, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = call i32 @GL_SelectTexture(i32 1)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @r_textureMode, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @GL_TextureMode(i32 %20)
  %22 = load i32, i32* @GL_MODULATE, align 4
  %23 = call i32 @GL_TexEnv(i32 %22)
  %24 = load i32, i32* @GL_TEXTURE_2D, align 4
  %25 = call i32 @qglDisable(i32 %24)
  %26 = call i32 @GL_SelectTexture(i32 0)
  br label %27

27:                                               ; preds = %16, %13
  %28 = load i32, i32* @GL_TEXTURE_2D, align 4
  %29 = call i32 @qglEnable(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @r_textureMode, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @GL_TextureMode(i32 %32)
  %34 = load i32, i32* @GL_MODULATE, align 4
  %35 = call i32 @GL_TexEnv(i32 %34)
  %36 = load i32, i32* @GL_SMOOTH, align 4
  %37 = call i32 @qglShadeModel(i32 %36)
  %38 = load i32, i32* @GL_LEQUAL, align 4
  %39 = call i32 @qglDepthFunc(i32 %38)
  %40 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %41 = call i32 @qglEnableClientState(i32 %40)
  %42 = load i32, i32* @GLS_DEPTHTEST_DISABLE, align 4
  %43 = load i32, i32* @GLS_DEPTHMASK_TRUE, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 0), align 4
  %45 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %46 = load i32, i32* @GL_FILL, align 4
  %47 = call i32 @qglPolygonMode(i32 %45, i32 %46)
  %48 = load i32, i32* @GL_TRUE, align 4
  %49 = call i32 @qglDepthMask(i32 %48)
  %50 = load i32, i32* @GL_DEPTH_TEST, align 4
  %51 = call i32 @qglDisable(i32 %50)
  %52 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %53 = call i32 @qglEnable(i32 %52)
  %54 = load i32, i32* @GL_CULL_FACE, align 4
  %55 = call i32 @qglDisable(i32 %54)
  %56 = load i32, i32* @GL_BLEND, align 4
  %57 = call i32 @qglDisable(i32 %56)
  ret void
}

declare dso_local i32 @qglClearDepth(float) #1

declare dso_local i32 @qglCullFace(i32) #1

declare dso_local i32 @qglGetFloatv(i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @qglColor4f(i32, i32, i32, i32) #1

declare dso_local i32 @GL_SelectTexture(i32) #1

declare dso_local i32 @GL_TextureMode(i32) #1

declare dso_local i32 @GL_TexEnv(i32) #1

declare dso_local i32 @qglDisable(i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @qglShadeModel(i32) #1

declare dso_local i32 @qglDepthFunc(i32) #1

declare dso_local i32 @qglEnableClientState(i32) #1

declare dso_local i32 @qglPolygonMode(i32, i32) #1

declare dso_local i32 @qglDepthMask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
