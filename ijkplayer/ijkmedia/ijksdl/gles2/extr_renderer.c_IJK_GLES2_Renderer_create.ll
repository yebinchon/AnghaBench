; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_create.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@GL_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Vendor\00", align 1
@GL_VENDOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Renderer\00", align 1
@GL_RENDERER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Extensions\00", align 1
@GL_EXTENSIONS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"[GLES2] unknown format %4s(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @IJK_GLES2_Renderer_create(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = icmp ne %struct.TYPE_13__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %47

8:                                                ; preds = %1
  %9 = load i32, i32* @GL_VERSION, align 4
  %10 = call i32 @IJK_GLES2_printString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @GL_VENDOR, align 4
  %12 = call i32 @IJK_GLES2_printString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @GL_RENDERER, align 4
  %14 = call i32 @IJK_GLES2_printString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @GL_EXTENSIONS, align 4
  %16 = call i32 @IJK_GLES2_printString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %32 [
    i32 132, label %20
    i32 131, label %22
    i32 130, label %24
    i32 129, label %26
    i32 135, label %28
    i32 134, label %30
  ]

20:                                               ; preds = %8
  %21 = call %struct.TYPE_14__* (...) @IJK_GLES2_Renderer_create_rgb565()
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %4, align 8
  br label %40

22:                                               ; preds = %8
  %23 = call %struct.TYPE_14__* (...) @IJK_GLES2_Renderer_create_rgb888()
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %4, align 8
  br label %40

24:                                               ; preds = %8
  %25 = call %struct.TYPE_14__* (...) @IJK_GLES2_Renderer_create_rgbx8888()
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %4, align 8
  br label %40

26:                                               ; preds = %8
  %27 = call %struct.TYPE_14__* (...) @IJK_GLES2_Renderer_create_yuv420p()
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %4, align 8
  br label %40

28:                                               ; preds = %8
  %29 = call %struct.TYPE_14__* (...) @IJK_GLES2_Renderer_create_yuv420p()
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %4, align 8
  br label %40

30:                                               ; preds = %8
  %31 = call %struct.TYPE_14__* (...) @IJK_GLES2_Renderer_create_yuv444p10le()
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %4, align 8
  br label %40

32:                                               ; preds = %8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to i8*
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ALOGE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %35, i32 %38)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %47

40:                                               ; preds = %30, %28, %26, %24, %22, %20
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %2, align 8
  br label %47

47:                                               ; preds = %40, %32, %7
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %48
}

declare dso_local i32 @IJK_GLES2_printString(i8*, i32) #1

declare dso_local %struct.TYPE_14__* @IJK_GLES2_Renderer_create_rgb565(...) #1

declare dso_local %struct.TYPE_14__* @IJK_GLES2_Renderer_create_rgb888(...) #1

declare dso_local %struct.TYPE_14__* @IJK_GLES2_Renderer_create_rgbx8888(...) #1

declare dso_local %struct.TYPE_14__* @IJK_GLES2_Renderer_create_yuv420p(...) #1

declare dso_local %struct.TYPE_14__* @IJK_GLES2_Renderer_create_yuv444p10le(...) #1

declare dso_local i32 @ALOGE(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
