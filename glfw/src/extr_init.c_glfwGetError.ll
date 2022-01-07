; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_init.c_glfwGetError.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_init.c_glfwGetError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i8* }

@GLFW_NO_ERROR = common dso_local global i8* null, align 8
@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@_glfwMainThreadError = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glfwGetError(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %5 = load i8*, i8** @GLFW_NO_ERROR, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %4, align 4
  %7 = load i8**, i8*** %2, align 8
  %8 = icmp ne i8** %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i8**, i8*** %2, align 8
  store i8* null, i8** %10, align 8
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call %struct.TYPE_5__* @_glfwPlatformGetTls(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0))
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %3, align 8
  br label %17

16:                                               ; preds = %11
  store %struct.TYPE_5__* @_glfwMainThreadError, %struct.TYPE_5__** %3, align 8
  br label %17

17:                                               ; preds = %16, %14
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %4, align 4
  %24 = load i8*, i8** @GLFW_NO_ERROR, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i8**, i8*** %2, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %2, align 8
  store i8* %36, i8** %37, align 8
  br label %38

38:                                               ; preds = %33, %30, %20
  br label %39

39:                                               ; preds = %38, %17
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_5__* @_glfwPlatformGetTls(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
