; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_headless_egl_glimp.c_GLimp_Init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_headless_egl_glimp.c_GLimp_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* (i8*, i8*, i32)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ri = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"r_gpuDeviceIndex\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@CVAR_LATCH = common dso_local global i32 0, align 4
@egl_display = common dso_local global i64 0, align 8
@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"Failed to create EGL display for device index %d!\0A\00", align 1
@kConfigAttribs = common dso_local global i32 0, align 4
@EGL_WIDTH = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@EGL_HEIGHT = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@egl_surface = common dso_local global i32 0, align 4
@EGL_OPENGL_API = common dso_local global i32 0, align 4
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@egl_context = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLimp_Init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @GLimp_CommonPreInit()
  %8 = load %struct.TYPE_5__* (i8*, i8*, i32)*, %struct.TYPE_5__* (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 0), align 8
  %9 = load i32, i32* @CVAR_ARCHIVE, align 4
  %10 = load i32, i32* @CVAR_LATCH, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.TYPE_5__* %8(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @CreateInitializedEGLDisplayAtIndex(i32 %15)
  store i64 %16, i64* @egl_display, align 8
  %17 = load i64, i64* @egl_display, align 8
  %18 = load i64, i64* @EGL_NO_DISPLAY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @Sys_Error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %54

25:                                               ; preds = %1
  %26 = load i64, i64* @egl_display, align 8
  %27 = load i32, i32* @kConfigAttribs, align 4
  %28 = call i32 @eglChooseConfig(i64 %26, i32 %27, i32* %5, i32 1, i32* %4)
  %29 = call i32 @CHECK_EGL_SUCCESS(i32 %28)
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %31 = load i32, i32* @EGL_WIDTH, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 1), align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @EGL_HEIGHT, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 0), align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  %39 = load i32, i32* @EGL_NONE, align 4
  store i32 %39, i32* %38, align 4
  %40 = load i64, i64* @egl_display, align 8
  %41 = load i32, i32* %5, align 4
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %43 = call i32 @eglCreatePbufferSurface(i64 %40, i32 %41, i32* %42)
  store i32 %43, i32* @egl_surface, align 4
  %44 = call i32 @CHECK_EGL_SUCCESS(i32 %43)
  %45 = load i32, i32* @EGL_OPENGL_API, align 4
  %46 = call i32 @eglBindAPI(i32 %45)
  %47 = call i32 @CHECK_EGL_SUCCESS(i32 %46)
  %48 = load i64, i64* @egl_display, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %51 = call i32 @eglCreateContext(i64 %48, i32 %49, i32 %50, i32* null)
  store i32 %51, i32* @egl_context, align 4
  %52 = call i32 @CHECK_EGL_SUCCESS(i32 %51)
  %53 = call i32 (...) @GLimp_CommonPostInit()
  br label %54

54:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @GLimp_CommonPreInit(...) #1

declare dso_local i64 @CreateInitializedEGLDisplayAtIndex(i32) #1

declare dso_local i32 @Sys_Error(i8*, i32) #1

declare dso_local i32 @CHECK_EGL_SUCCESS(i32) #1

declare dso_local i32 @eglChooseConfig(i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @eglCreatePbufferSurface(i64, i32, i32*) #1

declare dso_local i32 @eglBindAPI(i32) #1

declare dso_local i32 @eglCreateContext(i64, i32, i32, i32*) #1

declare dso_local i32 @GLimp_CommonPostInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
