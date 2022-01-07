; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_clipboard.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_clipboard.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_PRESS = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@MODIFIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Clipboard contains \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Clipboard does not contain a string\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Hello GLFW World!\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Setting clipboard to \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_callback(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
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
  br label %48

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %48 [
    i32 129, label %19
    i32 128, label %23
    i32 130, label %38
  ]

19:                                               ; preds = %17
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @GLFW_TRUE, align 4
  %22 = call i32 @glfwSetWindowShouldClose(i32* %20, i32 %21)
  br label %48

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @MODIFIER, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = call i8* @glfwGetClipboardString(i32* null)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %36

34:                                               ; preds = %27
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %23
  br label %48

38:                                               ; preds = %17
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @MODIFIER, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @glfwSetClipboardString(i32* null, i8* %43)
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %16, %17, %47, %37, %19
  ret void
}

declare dso_local i32 @glfwSetWindowShouldClose(i32*, i32) #1

declare dso_local i8* @glfwGetClipboardString(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @glfwSetClipboardString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
