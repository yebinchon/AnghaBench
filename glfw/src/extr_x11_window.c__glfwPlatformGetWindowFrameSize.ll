; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformGetWindowFrameSize.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformGetWindowFrameSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@None = common dso_local global i64 0, align 8
@isFrameExtentsEvent = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [105 x i8] c"X11: The window manager has a broken _NET_REQUEST_FRAME_EXTENTS implementation; please report this issue\00", align 1
@XA_CARDINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformGetWindowFrameSize(%struct.TYPE_10__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i64* null, i64** %11, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %5
  br label %109

24:                                               ; preds = %18
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %26 = load i64, i64* @None, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %109

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = call i32 @_glfwPlatformWindowVisible(%struct.TYPE_10__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  store double 5.000000e-01, double* %13, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 8
  %39 = call i32 @sendEventToWM(%struct.TYPE_10__* %37, i64 %38, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %40

40:                                               ; preds = %54, %36
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 1), align 8
  %42 = load i32, i32* @isFrameExtentsEvent, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = ptrtoint %struct.TYPE_10__* %43 to i32
  %45 = call i32 @XCheckIfEvent(i32 %41, i32* %12, i32 %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = call i32 @waitForEvent(double* %13)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %53 = call i32 @_glfwInputError(i32 %52, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0))
  br label %109

54:                                               ; preds = %48
  br label %40

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %33, %29
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %62 = load i32, i32* @XA_CARDINAL, align 4
  %63 = bitcast i64** %11 to i8**
  %64 = call i32 @_glfwGetWindowPropertyX11(i32 %60, i64 %61, i32 %62, i8** %63)
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %103

66:                                               ; preds = %56
  %67 = load i32*, i32** %7, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i64*, i64** %11, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i32*, i32** %8, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i64*, i64** %11, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32*, i32** %8, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %75
  %85 = load i32*, i32** %9, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i64*, i64** %11, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %84
  %94 = load i32*, i32** %10, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i64*, i64** %11, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 3
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32*, i32** %10, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %96, %93
  br label %103

103:                                              ; preds = %102, %56
  %104 = load i64*, i64** %11, align 8
  %105 = icmp ne i64* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i64*, i64** %11, align 8
  %108 = call i32 @XFree(i64* %107)
  br label %109

109:                                              ; preds = %23, %28, %51, %106, %103
  ret void
}

declare dso_local i32 @_glfwPlatformWindowVisible(%struct.TYPE_10__*) #1

declare dso_local i32 @sendEventToWM(%struct.TYPE_10__*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XCheckIfEvent(i32, i32*, i32, i32) #1

declare dso_local i32 @waitForEvent(double*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @_glfwGetWindowPropertyX11(i32, i64, i32, i8**) #1

declare dso_local i32 @XFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
