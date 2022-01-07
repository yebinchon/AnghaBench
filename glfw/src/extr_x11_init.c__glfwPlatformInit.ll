; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_init.c__glfwPlatformInit.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_init.c__glfwPlatformInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"X11: Failed to open display %s\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"X11: The DISPLAY environment variable is missing\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @LC_CTYPE, align 4
  %4 = call i32 @setlocale(i32 %3, i8* null)
  %5 = call i64 @strcmp(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @LC_CTYPE, align 4
  %9 = call i32 @setlocale(i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 (...) @XInitThreads()
  %12 = call i32 (...) @XrmInitialize()
  %13 = call i32 @XOpenDisplay(i32* null)
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %17, i8** %2, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  br label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %26 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %28, i32* %1, align 4
  br label %69

29:                                               ; preds = %10
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %31 = call i32 @DefaultScreen(i32 %30)
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 7), align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 7), align 8
  %34 = call i32 @RootWindow(i32 %32, i32 %33)
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 8), align 4
  %35 = call i32 (...) @XUniqueContext()
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 4
  %36 = call i32 @getSystemContentScale(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 5), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4))
  %37 = call i32 (...) @initExtensions()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %40, i32* %1, align 4
  br label %69

41:                                               ; preds = %29
  %42 = call i32 (...) @createHelperWindow()
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %43 = call i32 (...) @createHiddenCursor()
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 4
  %44 = call i64 (...) @XSupportsLocale()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = call i32 @XSetLocaleModifiers(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %49 = call i32* @XOpenIM(i32 %48, i32 0, i32* null, i32* null)
  store i32* %49, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = call i32 (...) @hasUsableInputMethodStyle()
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %57 = call i32 @XCloseIM(i32* %56)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %41
  %61 = call i32 (...) @_glfwInitJoysticksLinux()
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %64, i32* %1, align 4
  br label %69

65:                                               ; preds = %60
  %66 = call i32 (...) @_glfwInitTimerPOSIX()
  %67 = call i32 (...) @_glfwPollMonitorsX11()
  %68 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %68, i32* %1, align 4
  br label %69

69:                                               ; preds = %65, %63, %39, %27
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @XInitThreads(...) #1

declare dso_local i32 @XrmInitialize(...) #1

declare dso_local i32 @XOpenDisplay(i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i32 @DefaultScreen(i32) #1

declare dso_local i32 @RootWindow(i32, i32) #1

declare dso_local i32 @XUniqueContext(...) #1

declare dso_local i32 @getSystemContentScale(i32*, i32*) #1

declare dso_local i32 @initExtensions(...) #1

declare dso_local i32 @createHelperWindow(...) #1

declare dso_local i32 @createHiddenCursor(...) #1

declare dso_local i64 @XSupportsLocale(...) #1

declare dso_local i32 @XSetLocaleModifiers(i8*) #1

declare dso_local i32* @XOpenIM(i32, i32, i32*, i32*) #1

declare dso_local i32 @hasUsableInputMethodStyle(...) #1

declare dso_local i32 @XCloseIM(i32*) #1

declare dso_local i32 @_glfwInitJoysticksLinux(...) #1

declare dso_local i32 @_glfwInitTimerPOSIX(...) #1

declare dso_local i32 @_glfwPollMonitorsX11(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
