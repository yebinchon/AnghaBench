; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_context.c__glfwStringInExtensionString.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_context.c__glfwStringInExtensionString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwStringInExtensionString(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %45, %2
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strstr(i8* %11, i8* %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %10
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %18
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 -1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %33, label %45

33:                                               ; preds = %27, %18
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %33
  br label %47

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i8*, i8** %8, align 8
  store i8* %46, i8** %6, align 8
  br label %10

47:                                               ; preds = %43
  %48 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
