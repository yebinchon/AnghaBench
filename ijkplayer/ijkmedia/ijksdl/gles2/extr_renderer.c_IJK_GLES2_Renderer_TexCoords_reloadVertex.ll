; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_TexCoords_reloadVertex.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_TexCoords_reloadVertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GL_FLOAT = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"glVertexAttribPointer(av2_texcoord)\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"glEnableVertexAttribArray(av2_texcoord)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @IJK_GLES2_Renderer_TexCoords_reloadVertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IJK_GLES2_Renderer_TexCoords_reloadVertex(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @GL_FLOAT, align 4
  %7 = load i32, i32* @GL_FALSE, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @glVertexAttribPointer(i32 %5, i32 2, i32 %6, i32 %7, i32 0, i32 %10)
  %12 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @glEnableVertexAttribArray(i32 %15)
  %17 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @glVertexAttribPointer(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IJK_GLES2_checkError_TRACE(i8*) #1

declare dso_local i32 @glEnableVertexAttribArray(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
