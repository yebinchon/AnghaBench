; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformSetWindowFloating.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformSetWindowFloating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@_NET_WM_STATE_ADD = common dso_local global i64 0, align 8
@_NET_WM_STATE_REMOVE = common dso_local global i64 0, align 8
@XA_ATOM = common dso_local global i32 0, align 4
@PropModeAppend = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetWindowFloating(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %2
  br label %125

15:                                               ; preds = %11
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = call i64 @_glfwPlatformWindowVisible(%struct.TYPE_10__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i64, i64* @_NET_WM_STATE_ADD, align 8
  br label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @_NET_WM_STATE_REMOVE, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  store i64 %27, i64* %5, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 4
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %32 = call i32 @sendEventToWM(%struct.TYPE_10__* %28, i32 %29, i64 %30, i64 %31, i32 0, i32 1, i32 0)
  br label %122

33:                                               ; preds = %15
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 4
  %39 = load i32, i32* @XA_ATOM, align 4
  %40 = bitcast i64** %6 to i8**
  %41 = call i64 @_glfwGetWindowPropertyX11(i32 %37, i32 %38, i32 %39, i8** %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %125

45:                                               ; preds = %33
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  store i64 0, i64* %7, align 8
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %65

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %49

65:                                               ; preds = %60, %49
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 1), align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 4
  %76 = load i32, i32* @XA_ATOM, align 4
  %77 = load i32, i32* @PropModeAppend, align 4
  %78 = call i32 @XChangeProperty(i32 %70, i32 %74, i32 %75, i32 %76, i32 32, i32 %77, i8* bitcast (%struct.TYPE_11__* @_glfw to i8*), i64 1)
  br label %79

79:                                               ; preds = %69, %65
  br label %119

80:                                               ; preds = %45
  store i64 0, i64* %7, align 8
  br label %81

81:                                               ; preds = %104, %80
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load i64*, i64** %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %85
  %93 = load i64*, i64** %6, align 8
  %94 = load i64, i64* %8, align 8
  %95 = sub i64 %94, 1
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %97, i64* %100, align 8
  %101 = load i64, i64* %8, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* %8, align 8
  br label %103

103:                                              ; preds = %92, %85
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %7, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %7, align 8
  br label %81

107:                                              ; preds = %81
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 1), align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 4
  %114 = load i32, i32* @XA_ATOM, align 4
  %115 = load i32, i32* @PropModeReplace, align 4
  %116 = bitcast i64** %6 to i8*
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @XChangeProperty(i32 %108, i32 %112, i32 %113, i32 %114, i32 32, i32 %115, i8* %116, i64 %117)
  br label %119

119:                                              ; preds = %107, %79
  %120 = load i64*, i64** %6, align 8
  %121 = call i32 @XFree(i64* %120)
  br label %122

122:                                              ; preds = %119, %26
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 1), align 8
  %124 = call i32 @XFlush(i32 %123)
  br label %125

125:                                              ; preds = %122, %44, %14
  ret void
}

declare dso_local i64 @_glfwPlatformWindowVisible(%struct.TYPE_10__*) #1

declare dso_local i32 @sendEventToWM(%struct.TYPE_10__*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i64 @_glfwGetWindowPropertyX11(i32, i32, i32, i8**) #1

declare dso_local i32 @XChangeProperty(i32, i32, i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @XFree(i64*) #1

declare dso_local i32 @XFlush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
