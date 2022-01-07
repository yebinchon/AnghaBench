; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_tearing.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_tearing.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@GLFW_PRESS = common dso_local global i32 0, align 4
@swap_interval = common dso_local global i32 0, align 4
@swap_tear = common dso_local global i32 0, align 4
@key_callback.x = internal global i32 0, align 4
@key_callback.y = internal global i32 0, align 4
@key_callback.width = internal global i32 0, align 4
@key_callback.height = internal global i32 0, align 4
@GLFW_MOD_ALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_callback(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @GLFW_PRESS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %95

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %95 [
    i32 128, label %19
    i32 132, label %30
    i32 130, label %55
    i32 129, label %58
    i32 131, label %58
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @swap_interval, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @swap_interval, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @swap_interval, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @set_swap_interval(i32* %25, i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  br label %95

30:                                               ; preds = %17
  %31 = load i32, i32* @swap_tear, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* @swap_interval, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* @swap_interval, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @swap_interval, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @set_swap_interval(i32* %39, i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  br label %54

44:                                               ; preds = %30
  %45 = load i32, i32* @swap_interval, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @swap_interval, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @set_swap_interval(i32* %49, i32 %51)
  br label %53

53:                                               ; preds = %48, %44
  br label %54

54:                                               ; preds = %53, %43
  br label %95

55:                                               ; preds = %17
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @glfwSetWindowShouldClose(i32* %56, i32 1)
  br label %95

58:                                               ; preds = %17, %17
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @GLFW_MOD_ALT, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %95

63:                                               ; preds = %58
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @glfwGetWindowMonitor(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @key_callback.x, align 4
  %70 = load i32, i32* @key_callback.y, align 4
  %71 = load i32, i32* @key_callback.width, align 4
  %72 = load i32, i32* @key_callback.height, align 4
  %73 = call i32 @glfwSetWindowMonitor(i32* %68, i32* null, i32 %69, i32 %70, i32 %71, i32 %72, i32 0)
  br label %94

74:                                               ; preds = %63
  %75 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %75, i32** %11, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call %struct.TYPE_3__* @glfwGetVideoMode(i32* %76)
  store %struct.TYPE_3__* %77, %struct.TYPE_3__** %12, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @glfwGetWindowPos(i32* %78, i32* @key_callback.x, i32* @key_callback.y)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @glfwGetWindowSize(i32* %80, i32* @key_callback.width, i32* @key_callback.height)
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @glfwSetWindowMonitor(i32* %82, i32* %83, i32 0, i32 0, i32 %86, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %74, %67
  br label %95

95:                                               ; preds = %16, %62, %17, %94, %55, %54, %29
  ret void
}

declare dso_local i32 @set_swap_interval(i32*, i32) #1

declare dso_local i32 @glfwSetWindowShouldClose(i32*, i32) #1

declare dso_local i32 @glfwGetWindowMonitor(i32*) #1

declare dso_local i32 @glfwSetWindowMonitor(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local %struct.TYPE_3__* @glfwGetVideoMode(i32*) #1

declare dso_local i32 @glfwGetWindowPos(i32*, i32*, i32*) #1

declare dso_local i32 @glfwGetWindowSize(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
