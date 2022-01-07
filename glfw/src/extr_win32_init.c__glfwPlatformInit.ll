; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_win32_init.c__glfwPlatformInit.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_win32_init.c__glfwPlatformInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SPI_GETFOREGROUNDLOCKTIMEOUT = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SPI_SETFOREGROUNDLOCKTIMEOUT = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@GLFW_FALSE = common dso_local global i32 0, align 4
@DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 = common dso_local global i32 0, align 4
@PROCESS_PER_MONITOR_DPI_AWARE = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformInit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SPI_GETFOREGROUNDLOCKTIMEOUT, align 4
  %3 = call i32 @SystemParametersInfoW(i32 %2, i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), i32 0)
  %4 = load i32, i32* @SPI_SETFOREGROUNDLOCKTIMEOUT, align 4
  %5 = call i32* @UIntToPtr(i32 0)
  %6 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %7 = call i32 @SystemParametersInfoW(i32 %4, i32 0, i32* %5, i32 %6)
  %8 = call i32 (...) @loadLibraries()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %11, i32* %1, align 4
  br label %48

12:                                               ; preds = %0
  %13 = call i32 (...) @createKeyTables()
  %14 = call i32 (...) @_glfwUpdateKeyNamesWin32()
  %15 = call i64 (...) @_glfwIsWindows10CreatorsUpdateOrGreaterWin32()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2, align 4
  %19 = call i32 @SetProcessDpiAwarenessContext(i32 %18)
  br label %33

20:                                               ; preds = %12
  %21 = call i64 (...) @IsWindows8Point1OrGreater()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @PROCESS_PER_MONITOR_DPI_AWARE, align 4
  %25 = call i32 @SetProcessDpiAwareness(i32 %24)
  br label %32

26:                                               ; preds = %20
  %27 = call i64 (...) @IsWindowsVistaOrGreater()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (...) @SetProcessDPIAware()
  br label %31

31:                                               ; preds = %29, %26
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32, %17
  %34 = call i32 (...) @_glfwRegisterWindowClassWin32()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %37, i32* %1, align 4
  br label %48

38:                                               ; preds = %33
  %39 = call i32 (...) @createHelperWindow()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %42, i32* %1, align 4
  br label %48

43:                                               ; preds = %38
  %44 = call i32 (...) @_glfwInitTimerWin32()
  %45 = call i32 (...) @_glfwInitJoysticksWin32()
  %46 = call i32 (...) @_glfwPollMonitorsWin32()
  %47 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %43, %41, %36, %10
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32 @SystemParametersInfoW(i32, i32, i32*, i32) #1

declare dso_local i32* @UIntToPtr(i32) #1

declare dso_local i32 @loadLibraries(...) #1

declare dso_local i32 @createKeyTables(...) #1

declare dso_local i32 @_glfwUpdateKeyNamesWin32(...) #1

declare dso_local i64 @_glfwIsWindows10CreatorsUpdateOrGreaterWin32(...) #1

declare dso_local i32 @SetProcessDpiAwarenessContext(i32) #1

declare dso_local i64 @IsWindows8Point1OrGreater(...) #1

declare dso_local i32 @SetProcessDpiAwareness(i32) #1

declare dso_local i64 @IsWindowsVistaOrGreater(...) #1

declare dso_local i32 @SetProcessDPIAware(...) #1

declare dso_local i32 @_glfwRegisterWindowClassWin32(...) #1

declare dso_local i32 @createHelperWindow(...) #1

declare dso_local i32 @_glfwInitTimerWin32(...) #1

declare dso_local i32 @_glfwInitJoysticksWin32(...) #1

declare dso_local i32 @_glfwPollMonitorsWin32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
