; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_vout_android_nativewindow.c_func_display_overlay_l.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_vout_android_nativewindow.c_func_display_overlay_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_10__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"func_display_overlay_l: NULL native_window\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"func_display_overlay_l: NULL overlay\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"func_display_overlay_l: invalid overlay dimensions(%d, %d)\00", align 1
@SDL_FCC__GLES2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @func_display_overlay_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @func_display_overlay_l(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = call i32 @ALOGW(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %16
  store i32 -1, i32* %3, align 4
  br label %103

26:                                               ; preds = %2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %103

34:                                               ; preds = %29
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39, %34
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %47, i64 %50)
  store i32 -1, i32* %3, align 4
  br label %103

52:                                               ; preds = %39
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %95 [
    i32 128, label %56
    i32 131, label %63
    i32 134, label %63
    i32 133, label %63
    i32 129, label %76
    i32 132, label %76
    i32 130, label %76
  ]

56:                                               ; preds = %52
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @IJK_EGL_terminate(i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = call i32 @SDL_VoutOverlayAMediaCodec_releaseFrame_l(%struct.TYPE_10__* %61, i32* null, i32 1)
  store i32 %62, i32* %3, align 4
  br label %103

63:                                               ; preds = %52, %52, %52
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = call i32 @IJK_EGL_display(i32 %71, i32* %72, %struct.TYPE_10__* %73)
  store i32 %74, i32* %3, align 4
  br label %103

75:                                               ; preds = %63
  br label %95

76:                                               ; preds = %52, %52, %52
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SDL_FCC__GLES2, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = call i32 @IJK_EGL_display(i32 %90, i32* %91, %struct.TYPE_10__* %92)
  store i32 %93, i32* %3, align 4
  br label %103

94:                                               ; preds = %82, %76
  br label %95

95:                                               ; preds = %52, %94, %75
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @IJK_EGL_terminate(i32 %98)
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = call i32 @SDL_Android_NativeWindow_display_l(i32* %100, %struct.TYPE_10__* %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %95, %87, %68, %56, %44, %32, %25
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @ALOGW(i8*) #1

declare dso_local i32 @ALOGE(i8*, ...) #1

declare dso_local i32 @IJK_EGL_terminate(i32) #1

declare dso_local i32 @SDL_VoutOverlayAMediaCodec_releaseFrame_l(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @IJK_EGL_display(i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @SDL_Android_NativeWindow_display_l(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
