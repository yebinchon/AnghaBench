; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformSetClipboardString.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformSetClipboardString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i32, i32*, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Wayland: Impossible to allocate clipboard string\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Wayland: Impossible to create clipboard source\00", align 1
@dataSourceListener = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"text/plain;charset=utf-8\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetClipboardString(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %7 = call i32 @wl_data_source_destroy(i32* %6)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %13 = call i32 @free(i32* %12)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32* @strdup(i8* %15)
  store i32* %16, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %21 = call i32 @_glfwInputError(i32 %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %43

22:                                               ; preds = %14
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 5), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %26 = call i32* @wl_data_device_manager_create_data_source(i32 %25)
  store i32* %26, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %31 = call i32 @_glfwInputError(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %33 = call i32 @free(i32* %32)
  br label %43

34:                                               ; preds = %22
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %36 = call i32 @wl_data_source_add_listener(i32* %35, i32* @dataSourceListener, i32* null)
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %38 = call i32 @wl_data_source_offer(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %42 = call i32 @wl_data_device_set_selection(i32 %39, i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %29, %19
  ret void
}

declare dso_local i32 @wl_data_source_destroy(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @wl_data_device_manager_create_data_source(i32) #1

declare dso_local i32 @wl_data_source_add_listener(i32*, i32*, i32*) #1

declare dso_local i32 @wl_data_source_offer(i32*, i8*) #1

declare dso_local i32 @wl_data_device_set_selection(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
