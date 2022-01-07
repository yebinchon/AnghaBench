; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/extr_ijksdl_egl.c_IJK_EGL_makeCurrent.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/extr_ijksdl_egl.c_IJK_EGL_makeCurrent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i32* }

@.str = private unnamed_addr constant [40 x i8] c"[EGL] elgMakeCurrent() failed (cached)\0A\00", align 1
@EGL_FALSE = common dso_local global i32 0, align 4
@EGL_TRUE = common dso_local global i32 0, align 4
@EGL_DEFAULT_DISPLAY = common dso_local global i32 0, align 4
@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"[EGL] eglGetDisplay failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"[EGL] eglInitialize failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"[EGL] eglInitialize %d.%d\0A\00", align 1
@IJK_EGL_makeCurrent.configAttribs = internal constant [11 x i32] [i32 130, i32 132, i32 129, i32 128, i32 136, i32 8, i32 134, i32 8, i32 131, i32 8, i32 133], align 16
@IJK_EGL_makeCurrent.contextAttribs = internal constant [3 x i32] [i32 135, i32 2, i32 133], align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"[EGL] eglChooseConfig failed\0A\00", align 1
@EGL_NO_SURFACE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"[EGL] eglCreateWindowSurface failed\0A\00", align 1
@EGL_NO_CONTEXT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"[EGL] eglCreateContext failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"[EGL] elgMakeCurrent() failed (new)\0A\00", align 1
@EGL_NATIVE_VISUAL_ID = common dso_local global i32 0, align 4
@GL_EXTENSIONS = common dso_local global i32 0, align 4
@IJK_GLES2__GL_EXT_texture_rg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @IJK_EGL_makeCurrent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IJK_EGL_makeCurrent(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @eglMakeCurrent(i64 %39, i64 %42, i64 %45, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %36
  %52 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EGL_FALSE, align 4
  store i32 %53, i32* %3, align 4
  br label %153

54:                                               ; preds = %36
  %55 = load i32, i32* @EGL_TRUE, align 4
  store i32 %55, i32* %3, align 4
  br label %153

56:                                               ; preds = %31, %26, %21, %15, %2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = call i32 @IJK_EGL_terminate(%struct.TYPE_4__* %57)
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @EGL_FALSE, align 4
  store i32 %65, i32* %3, align 4
  br label %153

66:                                               ; preds = %56
  %67 = load i32, i32* @EGL_DEFAULT_DISPLAY, align 4
  %68 = call i64 @eglGetDisplay(i32 %67)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @EGL_NO_DISPLAY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @EGL_FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %153

75:                                               ; preds = %66
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @eglInitialize(i64 %76, i32* %7, i32* %8)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @EGL_FALSE, align 4
  store i32 %81, i32* %3, align 4
  br label %153

82:                                               ; preds = %75
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i8*, ...) @ALOGI(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @eglChooseConfig(i64 %86, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @IJK_EGL_makeCurrent.configAttribs, i64 0, i64 0), i32* %9, i32 1, i32* %10)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %82
  %90 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @eglTerminate(i64 %91)
  %93 = load i32, i32* @EGL_FALSE, align 4
  store i32 %93, i32* %3, align 4
  br label %153

94:                                               ; preds = %82
  %95 = load i64, i64* %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i64, i64* %5, align 8
  %98 = call i64 @eglCreateWindowSurface(i64 %95, i32 %96, i64 %97, i32* null)
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* @EGL_NO_SURFACE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @eglTerminate(i64 %104)
  %106 = load i32, i32* @EGL_FALSE, align 4
  store i32 %106, i32* %3, align 4
  br label %153

107:                                              ; preds = %94
  %108 = load i64, i64* %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %111 = call i64 @eglCreateContext(i64 %108, i32 %109, i64 %110, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @IJK_EGL_makeCurrent.contextAttribs, i64 0, i64 0))
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %11, align 8
  %119 = call i32 @eglDestroySurface(i64 %117, i64 %118)
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @eglTerminate(i64 %120)
  %122 = load i32, i32* @EGL_FALSE, align 4
  store i32 %122, i32* %3, align 4
  br label %153

123:                                              ; preds = %107
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %12, align 8
  %128 = call i32 @eglMakeCurrent(i64 %124, i64 %125, i64 %126, i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %123
  %131 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call i32 @eglDestroyContext(i64 %132, i64 %133)
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @eglDestroySurface(i64 %135, i64 %136)
  %138 = load i64, i64* %6, align 8
  %139 = call i32 @eglTerminate(i64 %138)
  %140 = load i32, i32* @EGL_FALSE, align 4
  store i32 %140, i32* %3, align 4
  br label %153

141:                                              ; preds = %123
  %142 = call i32 (...) @IJK_GLES2_Renderer_setupGLES()
  %143 = load i64, i64* %12, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 3
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %11, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* @EGL_TRUE, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %141, %130, %115, %102, %89, %79, %72, %64, %54, %51
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @eglMakeCurrent(i64, i64, i64, i64) #1

declare dso_local i32 @ALOGE(i8*, ...) #1

declare dso_local i32 @IJK_EGL_terminate(%struct.TYPE_4__*) #1

declare dso_local i64 @eglGetDisplay(i32) #1

declare dso_local i32 @eglInitialize(i64, i32*, i32*) #1

declare dso_local i32 @ALOGI(i8*, ...) #1

declare dso_local i32 @eglChooseConfig(i64, i32*, i32*, i32, i32*) #1

declare dso_local i32 @eglTerminate(i64) #1

declare dso_local i64 @eglCreateWindowSurface(i64, i32, i64, i32*) #1

declare dso_local i64 @eglCreateContext(i64, i32, i64, i32*) #1

declare dso_local i32 @eglDestroySurface(i64, i64) #1

declare dso_local i32 @eglDestroyContext(i64, i64) #1

declare dso_local i32 @IJK_GLES2_Renderer_setupGLES(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
