; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer_yuv444p10le.c_yuv444p10le_use.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer_yuv444p10le.c_yuv444p10le_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32, i32*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"use render yuv420p10le\0A\00", align 1
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"glUseProgram\00", align 1
@GL_TEXTURE0 = common dso_local global i64 0, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @yuv444p10le_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yuv444p10le_use(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i32 @ALOGI(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %6 = call i32 @glPixelStorei(i32 %5, i32 1)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @glUseProgram(i32 %9)
  %11 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 0, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = call i32 @glGenTextures(i32 3, i64* %21)
  br label %23

23:                                               ; preds = %18, %1
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %67, %23
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %70

27:                                               ; preds = %24
  %28 = load i64, i64* @GL_TEXTURE0, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @glActiveTexture(i64 %31)
  %33 = load i32, i32* @GL_TEXTURE_2D, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @glBindTexture(i32 %33, i64 %40)
  %42 = load i32, i32* @GL_TEXTURE_2D, align 4
  %43 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %44 = load i32, i32* @GL_LINEAR, align 4
  %45 = call i32 @glTexParameteri(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @GL_TEXTURE_2D, align 4
  %47 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %48 = load i32, i32* @GL_LINEAR, align 4
  %49 = call i32 @glTexParameteri(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @GL_TEXTURE_2D, align 4
  %51 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %52 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %53 = call i32 @glTexParameterf(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @GL_TEXTURE_2D, align 4
  %55 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %56 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %57 = call i32 @glTexParameterf(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @glUniform1i(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %27
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %24

70:                                               ; preds = %24
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @GL_FALSE, align 4
  %75 = call i32 (...) @IJK_GLES2_getColorMatrix_bt709()
  %76 = call i32 @glUniformMatrix3fv(i32 %73, i32 1, i32 %74, i32 %75)
  %77 = load i32, i32* @GL_TRUE, align 4
  ret i32 %77
}

declare dso_local i32 @ALOGI(i8*) #1

declare dso_local i32 @glPixelStorei(i32, i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @IJK_GLES2_checkError_TRACE(i8*) #1

declare dso_local i32 @glGenTextures(i32, i64*) #1

declare dso_local i32 @glActiveTexture(i64) #1

declare dso_local i32 @glBindTexture(i32, i64) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

declare dso_local i32 @glTexParameterf(i32, i32, i32) #1

declare dso_local i32 @glUniform1i(i32, i32) #1

declare dso_local i32 @glUniformMatrix3fv(i32, i32, i32, i32) #1

declare dso_local i32 @IJK_GLES2_getColorMatrix_bt709(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
