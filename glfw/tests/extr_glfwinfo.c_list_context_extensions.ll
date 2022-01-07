; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_glfwinfo.c_list_context_extensions.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_glfwinfo.c_list_context_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"%s context extensions:\0A\00", align 1
@GLFW_OPENGL_API = common dso_local global i32 0, align 4
@GL_NUM_EXTENSIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@GL_EXTENSIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @list_context_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_context_extensions(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @get_api_name(i32 %10)
  %12 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GLFW_OPENGL_API, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i32, i32* @GL_NUM_EXTENSIONS, align 4
  %21 = call i32 @glGetIntegerv(i32 %20, i32* %7)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %32, %19
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, i32* @GL_EXTENSIONS, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @glGetStringi(i32 %27, i32 %28)
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %22

35:                                               ; preds = %22
  br label %76

36:                                               ; preds = %16, %3
  %37 = load i32, i32* @GL_EXTENSIONS, align 4
  %38 = call i8* @glGetString(i32 %37)
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %73, %36
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %39
  %45 = call i32 @putchar(i8 signext 32)
  br label %46

46:                                               ; preds = %58, %44
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 32
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ false, %46 ], [ %55, %51 ]
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @putchar(i8 signext %60)
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %9, align 8
  br label %46

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %70, %64
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  br label %65

73:                                               ; preds = %65
  %74 = call i32 @putchar(i8 signext 10)
  br label %39

75:                                               ; preds = %39
  br label %76

76:                                               ; preds = %75, %35
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @get_api_name(i32) #1

declare dso_local i32 @glGetIntegerv(i32, i32*) #1

declare dso_local i64 @glGetStringi(i32, i32) #1

declare dso_local i8* @glGetString(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
