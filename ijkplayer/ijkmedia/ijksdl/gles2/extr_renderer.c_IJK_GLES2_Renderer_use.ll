; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_use.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, {}* }
%struct.TYPE_11__ = type { i32 }

@GL_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"glUniformMatrix4fv(um4_mvp)\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IJK_GLES2_Renderer_use(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = icmp ne %struct.TYPE_12__* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @GL_FALSE, align 4
  store i32 %8, i32* %2, align 4
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = bitcast {}** %11 to i32 (%struct.TYPE_12__*)**
  %13 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %12, align 8
  %14 = call i32 @assert(i32 (%struct.TYPE_12__*)* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = bitcast {}** %16 to i32 (%struct.TYPE_12__*)**
  %18 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %17, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = call i32 %18(%struct.TYPE_12__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %9
  %23 = load i32, i32* @GL_FALSE, align 4
  store i32 %23, i32* %2, align 4
  br label %43

24:                                               ; preds = %9
  %25 = call i32 @IJK_GLES2_loadOrtho(%struct.TYPE_11__* %4, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GL_FALSE, align 4
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @glUniformMatrix4fv(i32 %28, i32 1, i32 %29, i32 %31)
  %33 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = call i32 @IJK_GLES2_Renderer_TexCoords_reset(%struct.TYPE_12__* %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = call i32 @IJK_GLES2_Renderer_TexCoords_reloadVertex(%struct.TYPE_12__* %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = call i32 @IJK_GLES2_Renderer_Vertices_reset(%struct.TYPE_12__* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = call i32 @IJK_GLES2_Renderer_Vertices_reloadVertex(%struct.TYPE_12__* %40)
  %42 = load i32, i32* @GL_TRUE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %24, %22, %7
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @assert(i32 (%struct.TYPE_12__*)*) #1

declare dso_local i32 @IJK_GLES2_loadOrtho(%struct.TYPE_11__*, float, float, float, float, float, float) #1

declare dso_local i32 @glUniformMatrix4fv(i32, i32, i32, i32) #1

declare dso_local i32 @IJK_GLES2_checkError_TRACE(i8*) #1

declare dso_local i32 @IJK_GLES2_Renderer_TexCoords_reset(%struct.TYPE_12__*) #1

declare dso_local i32 @IJK_GLES2_Renderer_TexCoords_reloadVertex(%struct.TYPE_12__*) #1

declare dso_local i32 @IJK_GLES2_Renderer_Vertices_reset(%struct.TYPE_12__*) #1

declare dso_local i32 @IJK_GLES2_Renderer_Vertices_reloadVertex(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
