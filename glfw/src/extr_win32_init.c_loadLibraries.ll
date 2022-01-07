; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_win32_init.c_loadLibraries.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_win32_init.c_loadLibraries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_15__ = type { i8*, i64, i64 }
%struct.TYPE_14__ = type { i8*, i64, i64, i64 }
%struct.TYPE_13__ = type { i8*, i64, i64 }
%struct.TYPE_12__ = type { i8*, i64 }
%struct.TYPE_11__ = type { i8*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i8*, i64 }

@.str = private unnamed_addr constant [10 x i8] c"winmm.dll\00", align 1
@_glfw = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Win32: Failed to load winmm.dll\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"timeGetTime\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"user32.dll\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Win32: Failed to load user32.dll\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"SetProcessDPIAware\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"ChangeWindowMessageFilterEx\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"EnableNonClientDpiScaling\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"SetProcessDpiAwarenessContext\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"GetDpiForWindow\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"AdjustWindowRectExForDpi\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"dinput8.dll\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"DirectInput8Create\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"xinput1_4.dll\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"xinput1_3.dll\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"xinput9_1_0.dll\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"xinput1_2.dll\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"xinput1_1.dll\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"XInputGetCapabilities\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"XInputGetState\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"dwmapi.dll\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"DwmIsCompositionEnabled\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"DwmFlush\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"DwmEnableBlurBehindWindow\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"shcore.dll\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"SetProcessDpiAwareness\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"GetDpiForMonitor\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"ntdll.dll\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"RtlVerifyVersionInfo\00", align 1
@GLFW_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @loadLibraries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadLibraries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [6 x i8*], align 16
  %4 = call i8* @LoadLibraryA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 6, i32 0), align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 6, i32 0), align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %9 = call i32 @_glfwInputErrorWin32(i32 %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %10, i32* %1, align 4
  br label %100

11:                                               ; preds = %0
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 6, i32 0), align 8
  %13 = call i64 @GetProcAddress(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 6, i32 1), align 8
  %14 = call i8* @LoadLibraryA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %19 = call i32 @_glfwInputErrorWin32(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %20, i32* %1, align 4
  br label %100

21:                                               ; preds = %11
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %23 = call i64 @GetProcAddress(i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 6), align 8
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %25 = call i64 @GetProcAddress(i8* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 5), align 8
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %27 = call i64 @GetProcAddress(i8* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 4), align 8
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %29 = call i64 @GetProcAddress(i8* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 3), align 8
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %31 = call i64 @GetProcAddress(i8* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 2), align 8
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %33 = call i64 @GetProcAddress(i8* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 1), align 8
  %34 = call i8* @LoadLibraryA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4, i32 0), align 8
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4, i32 0), align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4, i32 0), align 8
  %39 = call i64 @GetProcAddress(i8* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4, i32 1), align 8
  br label %40

40:                                               ; preds = %37, %21
  %41 = bitcast [6 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %41, i8 0, i64 48, i1 false)
  %42 = bitcast i8* %41 to [6 x i8*]*
  %43 = getelementptr inbounds [6 x i8*], [6 x i8*]* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8** %43, align 16
  %44 = getelementptr inbounds [6 x i8*], [6 x i8*]* %42, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8** %44, align 8
  %45 = getelementptr inbounds [6 x i8*], [6 x i8*]* %42, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8** %45, align 16
  %46 = getelementptr inbounds [6 x i8*], [6 x i8*]* %42, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8** %46, align 8
  %47 = getelementptr inbounds [6 x i8*], [6 x i8*]* %42, i32 0, i32 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8** %47, align 16
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %68, %40
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @LoadLibraryA(i8* %58)
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %64 = call i64 @GetProcAddress(i8* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  store i64 %64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3, i32 2), align 8
  %65 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %66 = call i64 @GetProcAddress(i8* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  store i64 %66, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3, i32 1), align 8
  br label %71

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %2, align 4
  br label %48

71:                                               ; preds = %62, %48
  %72 = call i8* @LoadLibraryA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  store i8* %72, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %73 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %77 = call i64 @GetProcAddress(i8* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  store i64 %77, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2, i32 3), align 8
  %78 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %79 = call i64 @GetProcAddress(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  store i64 %79, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2, i32 2), align 8
  %80 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %81 = call i64 @GetProcAddress(i8* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  store i64 %81, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2, i32 1), align 8
  br label %82

82:                                               ; preds = %75, %71
  %83 = call i8* @LoadLibraryA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  store i8* %83, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %84 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %88 = call i64 @GetProcAddress(i8* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0))
  store i64 %88, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1, i32 2), align 8
  %89 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %90 = call i64 @GetProcAddress(i8* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  store i64 %90, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1, i32 1), align 8
  br label %91

91:                                               ; preds = %86, %82
  %92 = call i8* @LoadLibraryA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  store i8* %92, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %93 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %97 = call i64 @GetProcAddress(i8* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  store i64 %97, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0, i32 1), align 8
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %99, i32* %1, align 4
  br label %100

100:                                              ; preds = %98, %17, %7
  %101 = load i32, i32* %1, align 4
  ret i32 %101
}

declare dso_local i8* @LoadLibraryA(i8*) #1

declare dso_local i32 @_glfwInputErrorWin32(i32, i8*) #1

declare dso_local i64 @GetProcAddress(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
