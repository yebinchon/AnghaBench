; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_find_extensions_gl.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_find_extensions_gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"GL_ARB_multisample\00", align 1
@GLAD_GL_ARB_multisample = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"GL_ARB_robustness\00", align 1
@GLAD_GL_ARB_robustness = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"GL_KHR_debug\00", align 1
@GLAD_GL_KHR_debug = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @glad_gl_find_extensions_gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glad_gl_find_extensions_gl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i8** null, i8*** %6, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @glad_gl_get_extensions(i32 %7, i8** %4, i32* %5, i8*** %6)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i8**, i8*** %6, align 8
  %16 = call i8* @glad_gl_has_extension(i32 %12, i8* %13, i32 %14, i8** %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** @GLAD_GL_ARB_multisample, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i8**, i8*** %6, align 8
  %21 = call i8* @glad_gl_has_extension(i32 %17, i8* %18, i32 %19, i8** %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** @GLAD_GL_ARB_robustness, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i8**, i8*** %6, align 8
  %26 = call i8* @glad_gl_has_extension(i32 %22, i8* %23, i32 %24, i8** %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %26, i8** @GLAD_GL_KHR_debug, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @glad_gl_free_extensions(i8** %27, i32 %28)
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %11, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @glad_gl_get_extensions(i32, i8**, i32*, i8***) #1

declare dso_local i8* @glad_gl_has_extension(i32, i8*, i32, i8**, i8*) #1

declare dso_local i32 @glad_gl_free_extensions(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
