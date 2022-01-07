; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformWindowMaximized.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformWindowMaximized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@GLFW_FALSE = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@XA_ATOM = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformWindowMaximized(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 2), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 1), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %11, %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %60

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 2), align 8
  %25 = load i32, i32* @XA_ATOM, align 4
  %26 = bitcast i64** %4 to i8**
  %27 = call i64 @_glfwGetWindowPropertyX11(i32 %23, i32 %24, i32 %25, i8** %26)
  store i64 %27, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %28

28:                                               ; preds = %49, %19
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load i64*, i64** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 1), align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39, %32
  %47 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %47, i32* %6, align 4
  br label %52

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %28

52:                                               ; preds = %46, %28
  %53 = load i64*, i64** %4, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64*, i64** %4, align 8
  %57 = call i32 @XFree(i64* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %17
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @_glfwGetWindowPropertyX11(i32, i32, i32, i8**) #1

declare dso_local i32 @XFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
