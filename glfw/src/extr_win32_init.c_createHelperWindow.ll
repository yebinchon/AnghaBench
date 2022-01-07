; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_win32_init.c_createHelperWindow.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_win32_init.c_createHelperWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@WS_EX_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@_GLFW_WNDCLASSNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i32] [i32 71, i32 76, i32 70, i32 87, i32 32, i32 109, i32 101, i32 115, i32 115, i32 97, i32 103, i32 101, i32 32, i32 119, i32 105, i32 110, i32 100, i32 111, i32 119, i32 0], align 4
@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Win32: Failed to create helper window\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@DBT_DEVTYP_DEVICEINTERFACE = common dso_local global i32 0, align 4
@GUID_DEVINTERFACE_HID = common dso_local global i32 0, align 4
@DEVICE_NOTIFY_WINDOW_HANDLE = common dso_local global i32 0, align 4
@PM_REMOVE = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @createHelperWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createHelperWindow() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = load i32, i32* @WS_EX_OVERLAPPEDWINDOW, align 4
  %5 = load i32, i32* @_GLFW_WNDCLASSNAME, align 4
  %6 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %7 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @GetModuleHandleW(i32* null)
  %10 = call i32 @CreateWindowExW(i32 %4, i32 %5, i8* bitcast ([20 x i32]* @.str to i8*), i32 %8, i32 0, i32 0, i32 1, i32 1, i32* null, i32* null, i32 %9, i32* null)
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %15 = call i32 @_glfwInputErrorWin32(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %16, i32* %1, align 4
  br label %41

17:                                               ; preds = %0
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 4
  %19 = load i32, i32* @SW_HIDE, align 4
  %20 = call i32 @ShowWindow(i32 %18, i32 %19)
  %21 = call i32 @ZeroMemory(%struct.TYPE_6__* %3, i32 12)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 12, i32* %22, align 4
  %23 = load i32, i32* @DBT_DEVTYP_DEVICEINTERFACE, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @GUID_DEVINTERFACE_HID, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 4
  %28 = bitcast %struct.TYPE_6__* %3 to i32*
  %29 = load i32, i32* @DEVICE_NOTIFY_WINDOW_HANDLE, align 4
  %30 = call i32 @RegisterDeviceNotificationW(i32 %27, i32* %28, i32 %29)
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 1), align 4
  br label %31

31:                                               ; preds = %36, %17
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 4
  %33 = load i32, i32* @PM_REMOVE, align 4
  %34 = call i64 @PeekMessageW(i32* %2, i32 %32, i32 0, i32 0, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = call i32 @TranslateMessage(i32* %2)
  %38 = call i32 @DispatchMessageW(i32* %2)
  br label %31

39:                                               ; preds = %31
  %40 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %39, %13
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @CreateWindowExW(i32, i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @GetModuleHandleW(i32*) #1

declare dso_local i32 @_glfwInputErrorWin32(i32, i8*) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @RegisterDeviceNotificationW(i32, i32*, i32) #1

declare dso_local i64 @PeekMessageW(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessageW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
