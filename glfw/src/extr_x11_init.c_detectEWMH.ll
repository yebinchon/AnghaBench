; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_init.c_detectEWMH.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_init.c_detectEWMH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@XA_WINDOW = common dso_local global i32 0, align 4
@XA_ATOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"_NET_WM_STATE\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"_NET_WM_STATE_ABOVE\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"_NET_WM_STATE_FULLSCREEN\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"_NET_WM_STATE_MAXIMIZED_VERT\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"_NET_WM_STATE_MAXIMIZED_HORZ\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"_NET_WM_STATE_DEMANDS_ATTENTION\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"_NET_WM_FULLSCREEN_MONITORS\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"_NET_WM_WINDOW_TYPE\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"_NET_WM_WINDOW_TYPE_NORMAL\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"_NET_WORKAREA\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"_NET_CURRENT_DESKTOP\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"_NET_ACTIVE_WINDOW\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"_NET_FRAME_EXTENTS\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"_NET_REQUEST_FRAME_EXTENTS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @detectEWMH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detectEWMH() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  store i64* null, i64** %1, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 16), align 4
  %7 = load i32, i32* @XA_WINDOW, align 4
  %8 = bitcast i64** %1 to i8**
  %9 = call i64 @_glfwGetWindowPropertyX11(i64 %5, i32 %6, i32 %7, i8** %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %93

12:                                               ; preds = %0
  %13 = call i32 (...) @_glfwGrabErrorHandlerX11()
  store i64* null, i64** %2, align 8
  %14 = load i64*, i64** %1, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 16), align 4
  %17 = load i32, i32* @XA_WINDOW, align 4
  %18 = bitcast i64** %2 to i8**
  %19 = call i64 @_glfwGetWindowPropertyX11(i64 %15, i32 %16, i32 %17, i8** %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i64*, i64** %1, align 8
  %23 = call i32 @XFree(i64* %22)
  br label %93

24:                                               ; preds = %12
  %25 = call i32 (...) @_glfwReleaseErrorHandlerX11()
  %26 = load i64*, i64** %1, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %2, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i64*, i64** %1, align 8
  %33 = call i32 @XFree(i64* %32)
  %34 = load i64*, i64** %2, align 8
  %35 = call i32 @XFree(i64* %34)
  br label %93

36:                                               ; preds = %24
  %37 = load i64*, i64** %1, align 8
  %38 = call i32 @XFree(i64* %37)
  %39 = load i64*, i64** %2, align 8
  %40 = call i32 @XFree(i64* %39)
  store i64* null, i64** %3, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 15), align 8
  %43 = load i32, i32* @XA_ATOM, align 4
  %44 = bitcast i64** %3 to i8**
  %45 = call i64 @_glfwGetWindowPropertyX11(i64 %41, i32 %42, i32 %43, i8** %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64*, i64** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i8* @getSupportedAtom(i64* %46, i64 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 14), align 8
  %49 = load i64*, i64** %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i8* @getSupportedAtom(i64* %49, i64 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 13), align 8
  %52 = load i64*, i64** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i8* @getSupportedAtom(i64* %52, i64 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 12), align 8
  %55 = load i64*, i64** %3, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i8* @getSupportedAtom(i64* %55, i64 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 11), align 8
  %58 = load i64*, i64** %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i8* @getSupportedAtom(i64* %58, i64 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i8* %60, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 10), align 8
  %61 = load i64*, i64** %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i8* @getSupportedAtom(i64* %61, i64 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 9), align 8
  %64 = load i64*, i64** %3, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i8* @getSupportedAtom(i64* %64, i64 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 8), align 8
  %67 = load i64*, i64** %3, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i8* @getSupportedAtom(i64* %67, i64 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i8* %69, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 7), align 8
  %70 = load i64*, i64** %3, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i8* @getSupportedAtom(i64* %70, i64 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i8* %72, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %73 = load i64*, i64** %3, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i8* @getSupportedAtom(i64* %73, i64 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 5), align 8
  %76 = load i64*, i64** %3, align 8
  %77 = load i64, i64* %4, align 8
  %78 = call i8* @getSupportedAtom(i64* %76, i64 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  store i8* %78, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %79 = load i64*, i64** %3, align 8
  %80 = load i64, i64* %4, align 8
  %81 = call i8* @getSupportedAtom(i64* %79, i64 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %82 = load i64*, i64** %3, align 8
  %83 = load i64, i64* %4, align 8
  %84 = call i8* @getSupportedAtom(i64* %82, i64 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  %85 = load i64*, i64** %3, align 8
  %86 = load i64, i64* %4, align 8
  %87 = call i8* @getSupportedAtom(i64* %85, i64 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  store i8* %87, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %88 = load i64*, i64** %3, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %36
  %91 = load i64*, i64** %3, align 8
  %92 = call i32 @XFree(i64* %91)
  br label %93

93:                                               ; preds = %11, %21, %31, %90, %36
  ret void
}

declare dso_local i64 @_glfwGetWindowPropertyX11(i64, i32, i32, i8**) #1

declare dso_local i32 @_glfwGrabErrorHandlerX11(...) #1

declare dso_local i32 @XFree(i64*) #1

declare dso_local i32 @_glfwReleaseErrorHandlerX11(...) #1

declare dso_local i8* @getSupportedAtom(i64*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
