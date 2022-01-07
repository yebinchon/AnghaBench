; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_win32_window.c_updateWindowStyles.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_win32_window.c_updateWindowStyles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }

@GWL_STYLE = common dso_local global i32 0, align 4
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HWND_TOP = common dso_local global i32 0, align 4
@SWP_FRAMECHANGED = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @updateWindowStyles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateWindowStyles(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GWL_STYLE, align 4
  %10 = call i32 @GetWindowLongW(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %12 = load i32, i32* @WS_POPUP, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = call i32 @getWindowStyle(%struct.TYPE_11__* %17)
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GetClientRect(i32 %24, %struct.TYPE_12__* %3)
  %26 = call i64 (...) @_glfwIsWindows10AnniversaryUpdateOrGreaterWin32()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @FALSE, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = call i32 @getWindowExStyle(%struct.TYPE_11__* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @GetDpiForWindow(i32 %36)
  %38 = call i32 @AdjustWindowRectExForDpi(%struct.TYPE_12__* %3, i32 %29, i32 %30, i32 %32, i32 %37)
  br label %45

39:                                               ; preds = %1
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = call i32 @getWindowExStyle(%struct.TYPE_11__* %42)
  %44 = call i32 @AdjustWindowRectEx(%struct.TYPE_12__* %3, i32 %40, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %39, %28
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  %51 = bitcast i64* %50 to i32*
  %52 = call i32 @ClientToScreen(i32 %49, i32* %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  %58 = bitcast i64* %57 to i32*
  %59 = call i32 @ClientToScreen(i32 %56, i32* %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GWL_STYLE, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @SetWindowLongW(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HWND_TOP, align 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %77, %79
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %82, %84
  %86 = load i32, i32* @SWP_FRAMECHANGED, align 4
  %87 = load i32, i32* @SWP_NOACTIVATE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @SWP_NOZORDER, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @SetWindowPos(i32 %70, i32 %71, i64 %73, i64 %75, i64 %80, i64 %85, i32 %90)
  ret void
}

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @getWindowStyle(%struct.TYPE_11__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @_glfwIsWindows10AnniversaryUpdateOrGreaterWin32(...) #1

declare dso_local i32 @AdjustWindowRectExForDpi(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @getWindowExStyle(%struct.TYPE_11__*) #1

declare dso_local i32 @GetDpiForWindow(i32) #1

declare dso_local i32 @AdjustWindowRectEx(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @ClientToScreen(i32, i32*) #1

declare dso_local i32 @SetWindowLongW(i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
