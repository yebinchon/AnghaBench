; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_init.c__glfwPlatformTerminate.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_init.c__glfwPlatformTerminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32*, i32*, i32, i32, i64, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }

@_glfw = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@None = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformTerminate() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 8), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 13), align 8
  %6 = call i64 @XGetSelectionOwner(i32* %4, i32 %5)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = call i32 (...) @_glfwPushSelectionToManagerX11()
  br label %11

11:                                               ; preds = %9, %3
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 8), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %14 = call i32 @XDestroyWindow(i32* %12, i64 %13)
  %15 = load i64, i64* @None, align 8
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  br label %16

16:                                               ; preds = %11, %0
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 12), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 8), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 12), align 8
  %22 = call i32 @XFreeCursor(i32* %20, i64 %21)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 12), align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 11), align 4
  %25 = call i32 @free(i32 %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 10), align 8
  %27 = call i32 @free(i32 %26)
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 9), align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 9), align 8
  %32 = call i32 @XCloseIM(i32* %31)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 9), align 8
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 8), align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 8), align 8
  %38 = call i32 @XCloseDisplay(i32* %37)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 8), align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 7, i32 0), align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 7, i32 0), align 8
  %44 = call i32 @_glfw_dlclose(i32* %43)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 7, i32 0), align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 6, i32 0), align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 6, i32 0), align 8
  %50 = call i32 @_glfw_dlclose(i32* %49)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 6, i32 0), align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %56 = call i32 @_glfw_dlclose(i32* %55)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4, i32 0), align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4, i32 0), align 8
  %62 = call i32 @_glfw_dlclose(i32* %61)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4, i32 0), align 8
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %68 = call i32 @_glfw_dlclose(i32* %67)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %74 = call i32 @_glfw_dlclose(i32* %73)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %80 = call i32 @_glfw_dlclose(i32* %79)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = call i32 (...) @_glfwTerminateEGL()
  %83 = call i32 (...) @_glfwTerminateGLX()
  %84 = call i32 (...) @_glfwTerminateJoysticksLinux()
  ret void
}

declare dso_local i64 @XGetSelectionOwner(i32*, i32) #1

declare dso_local i32 @_glfwPushSelectionToManagerX11(...) #1

declare dso_local i32 @XDestroyWindow(i32*, i64) #1

declare dso_local i32 @XFreeCursor(i32*, i64) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @XCloseIM(i32*) #1

declare dso_local i32 @XCloseDisplay(i32*) #1

declare dso_local i32 @_glfw_dlclose(i32*) #1

declare dso_local i32 @_glfwTerminateEGL(...) #1

declare dso_local i32 @_glfwTerminateGLX(...) #1

declare dso_local i32 @_glfwTerminateJoysticksLinux(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
