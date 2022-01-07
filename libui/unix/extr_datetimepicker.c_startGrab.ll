; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_startGrab.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_startGrab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32 }
%struct.TYPE_8__ = type { i64 }

@GDK_DEVICE_TYPE_MASTER = common dso_local global i32 0, align 4
@GDK_SOURCE_KEYBOARD = common dso_local global i64 0, align 8
@GDK_OWNERSHIP_WINDOW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GDK_KEY_PRESS_MASK = common dso_local global i32 0, align 4
@GDK_KEY_RELEASE_MASK = common dso_local global i32 0, align 4
@GDK_GRAB_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@GDK_BUTTON_PRESS_MASK = common dso_local global i32 0, align 4
@GDK_BUTTON_RELEASE_MASK = common dso_local global i32 0, align 4
@GDK_POINTER_MOTION_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @startGrab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @startGrab(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %12 = call i32* (...) @gtk_get_current_event_device()
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = call i32 @GTK_WIDGET(%struct.TYPE_7__* %16)
  %18 = call i32* @gtk_widget_get_display(i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32* @gdk_display_get_device_manager(i32* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* @GDK_DEVICE_TYPE_MASTER, align 4
  %23 = call %struct.TYPE_8__* @gdk_device_manager_list_devices(i32* %21, i32 %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %11, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %4, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %29 = call i32 @g_list_free(%struct.TYPE_8__* %28)
  br label %30

30:                                               ; preds = %15, %1
  %31 = call i32 (...) @gtk_get_current_event_time()
  store i32 %31, i32* %5, align 4
  %32 = load i32*, i32** %4, align 8
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32* @gdk_device_get_associated_device(i32* %33)
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @gdk_device_get_source(i32* %35)
  %37 = load i64, i64* @GDK_SOURCE_KEYBOARD, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32*, i32** %8, align 8
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %7, align 8
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %4, align 8
  store i32* %42, i32** %7, align 8
  br label %43

43:                                               ; preds = %39, %30
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32* @gtk_widget_get_window(i32 %46)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @GDK_OWNERSHIP_WINDOW, align 4
  %54 = load i32, i32* @TRUE, align 4
  %55 = load i32, i32* @GDK_KEY_PRESS_MASK, align 4
  %56 = load i32, i32* @GDK_KEY_RELEASE_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @gdk_device_grab(i32* %51, i32* %52, i32 %53, i32 %54, i32 %57, i32* null, i32 %58)
  %60 = load i64, i64* @GDK_GRAB_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %2, align 4
  br label %106

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %43
  %66 = load i32*, i32** %8, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %92

68:                                               ; preds = %65
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @GDK_OWNERSHIP_WINDOW, align 4
  %72 = load i32, i32* @TRUE, align 4
  %73 = load i32, i32* @GDK_BUTTON_PRESS_MASK, align 4
  %74 = load i32, i32* @GDK_BUTTON_RELEASE_MASK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @GDK_POINTER_MOTION_MASK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @gdk_device_grab(i32* %69, i32* %70, i32 %71, i32 %72, i32 %77, i32* null, i32 %78)
  %80 = load i64, i64* @GDK_GRAB_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %68
  %83 = load i32*, i32** %7, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @gdk_device_ungrab(i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %2, align 4
  br label %106

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91, %65
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* @TRUE, align 4
  %98 = call i32 @gtk_device_grab_add(i32 %95, i32* %96, i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32* %99, i32** %101, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32* %102, i32** %104, align 8
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %92, %89, %62
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32* @gtk_get_current_event_device(...) #1

declare dso_local i32* @gtk_widget_get_display(i32) #1

declare dso_local i32 @GTK_WIDGET(%struct.TYPE_7__*) #1

declare dso_local i32* @gdk_display_get_device_manager(i32*) #1

declare dso_local %struct.TYPE_8__* @gdk_device_manager_list_devices(i32*, i32) #1

declare dso_local i32 @g_list_free(%struct.TYPE_8__*) #1

declare dso_local i32 @gtk_get_current_event_time(...) #1

declare dso_local i32* @gdk_device_get_associated_device(i32*) #1

declare dso_local i64 @gdk_device_get_source(i32*) #1

declare dso_local i32* @gtk_widget_get_window(i32) #1

declare dso_local i64 @gdk_device_grab(i32*, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @gdk_device_ungrab(i32*, i32) #1

declare dso_local i32 @gtk_device_grab_add(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
