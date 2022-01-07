; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_init.c_keyboardHandleKey.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_init.c_keyboardHandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, %struct.TYPE_6__, i64, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.wl_keyboard = type { i32 }
%struct.itimerspec = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@WL_KEYBOARD_KEY_STATE_PRESSED = common dso_local global i64 0, align 8
@GLFW_PRESS = common dso_local global i32 0, align 4
@GLFW_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_keyboard*, i64, i64, i64, i64)* @keyboardHandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyboardHandleKey(i8* %0, %struct.wl_keyboard* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_keyboard*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.itimerspec, align 4
  store i8* %0, i8** %7, align 8
  store %struct.wl_keyboard* %1, %struct.wl_keyboard** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 7), align 8
  store i32* %18, i32** %15, align 8
  %19 = bitcast %struct.itimerspec* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 16, i1 false)
  %20 = load i32*, i32** %15, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  br label %81

23:                                               ; preds = %6
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @toGLFWKeyCode(i64 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @WL_KEYBOARD_KEY_STATE_PRESSED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @GLFW_PRESS, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @GLFW_RELEASE, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %14, align 4
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 6), align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %41 = call i32 @_glfwInputKey(i32* %36, i32 %37, i64 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @GLFW_PRESS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %33
  %46 = load i32*, i32** %15, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @inputChar(i32* %46, i64 %47)
  store i64 %48, i64* %16, align 8
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %45
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1), align 4
  %56 = load i64, i64* %11, align 8
  store i64 %56, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 4), align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  %61 = sdiv i32 1000000000, %60
  %62 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %17, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %67

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %17, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2), align 8
  %69 = sdiv i32 %68, 1000
  %70 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %17, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2), align 8
  %73 = srem i32 %72, 1000
  %74 = mul nsw i32 %73, 1000000
  %75 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %17, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %67, %51, %45
  br label %78

78:                                               ; preds = %77, %33
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3), align 4
  %80 = call i32 @timerfd_settime(i32 %79, i32 0, %struct.itimerspec* %17, i32* null)
  br label %81

81:                                               ; preds = %78, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @toGLFWKeyCode(i64) #2

declare dso_local i32 @_glfwInputKey(i32*, i32, i64, i32, i32) #2

declare dso_local i64 @inputChar(i32*, i64) #2

declare dso_local i32 @timerfd_settime(i32, i32, %struct.itimerspec*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
