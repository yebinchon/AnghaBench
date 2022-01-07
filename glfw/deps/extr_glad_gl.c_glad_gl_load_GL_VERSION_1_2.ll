; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_load_GL_VERSION_1_2.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_load_GL_VERSION_1_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GL_VERSION_1_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"glCopyTexSubImage3D\00", align 1
@glCopyTexSubImage3D = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"glDrawRangeElements\00", align 1
@glDrawRangeElements = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"glTexImage3D\00", align 1
@glTexImage3D = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"glTexSubImage3D\00", align 1
@glTexSubImage3D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*, i8*)*, i8*)* @glad_gl_load_GL_VERSION_1_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glad_gl_load_GL_VERSION_1_2(i64 (i8*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i64 (i8*, i8*)*, align 8
  %4 = alloca i8*, align 8
  store i64 (i8*, i8*)* %0, i64 (i8*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @GLAD_GL_VERSION_1_2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %21

8:                                                ; preds = %2
  %9 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 %9(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i64 %11, i64* @glCopyTexSubImage3D, align 8
  %12 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 %12(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i64 %14, i64* @glDrawRangeElements, align 8
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 %15(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  store i64 %17, i64* @glTexImage3D, align 8
  %18 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 %18(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  store i64 %20, i64* @glTexSubImage3D, align 8
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
