; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer_yuv444p10le.c_IJK_GLES2_Renderer_create_yuv444p10le.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer_yuv444p10le.c_IJK_GLES2_Renderer_create_yuv444p10le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i8** }

@.str = private unnamed_addr constant [27 x i8] c"create render yuv444p10le\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"us2_SamplerX\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"glGetUniformLocation(us2_SamplerX)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"us2_SamplerY\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"glGetUniformLocation(us2_SamplerY)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"us2_SamplerZ\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"glGetUniformLocation(us2_SamplerZ)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"um3_ColorConversion\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"glGetUniformLocation(um3_ColorConversionMatrix)\00", align 1
@yuv444p10le_use = common dso_local global i32 0, align 4
@yuv444p10le_getBufferWidth = common dso_local global i32 0, align 4
@yuv444p10le_uploadTexture = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @IJK_GLES2_Renderer_create_yuv444p10le() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = call i32 @ALOGI(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (...) @IJK_GLES2_getFragmentShader_yuv444p10le()
  %5 = call %struct.TYPE_5__* @IJK_GLES2_Renderer_create_base(i32 %4)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %54

9:                                                ; preds = %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @glGetUniformLocation(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 5
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  store i8* %13, i8** %17, align 8
  %18 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @glGetUniformLocation(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* %22, i8** %26, align 8
  %27 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @glGetUniformLocation(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 5
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  store i8* %31, i8** %35, align 8
  %36 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @glGetUniformLocation(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %44 = load i32, i32* @yuv444p10le_use, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @yuv444p10le_getBufferWidth, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @yuv444p10le_uploadTexture, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %1, align 8
  br label %57

54:                                               ; preds = %8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = call i32 @IJK_GLES2_Renderer_free(%struct.TYPE_5__* %55)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %57

57:                                               ; preds = %54, %9
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %58
}

declare dso_local i32 @ALOGI(i8*) #1

declare dso_local %struct.TYPE_5__* @IJK_GLES2_Renderer_create_base(i32) #1

declare dso_local i32 @IJK_GLES2_getFragmentShader_yuv444p10le(...) #1

declare dso_local i8* @glGetUniformLocation(i32, i8*) #1

declare dso_local i32 @IJK_GLES2_checkError_TRACE(i8*) #1

declare dso_local i32 @IJK_GLES2_Renderer_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
