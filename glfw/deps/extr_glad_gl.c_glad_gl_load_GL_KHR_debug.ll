; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_load_GL_KHR_debug.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_load_GL_KHR_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GL_KHR_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"glDebugMessageCallback\00", align 1
@glDebugMessageCallback = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"glDebugMessageControl\00", align 1
@glDebugMessageControl = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"glDebugMessageInsert\00", align 1
@glDebugMessageInsert = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"glGetDebugMessageLog\00", align 1
@glGetDebugMessageLog = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"glGetObjectLabel\00", align 1
@glGetObjectLabel = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"glGetObjectPtrLabel\00", align 1
@glGetObjectPtrLabel = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"glGetPointerv\00", align 1
@glGetPointerv = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"glObjectLabel\00", align 1
@glObjectLabel = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"glObjectPtrLabel\00", align 1
@glObjectPtrLabel = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"glPopDebugGroup\00", align 1
@glPopDebugGroup = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"glPushDebugGroup\00", align 1
@glPushDebugGroup = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*, i8*)*, i8*)* @glad_gl_load_GL_KHR_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glad_gl_load_GL_KHR_debug(i64 (i8*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i64 (i8*, i8*)*, align 8
  %4 = alloca i8*, align 8
  store i64 (i8*, i8*)* %0, i64 (i8*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @GLAD_GL_KHR_debug, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %42

8:                                                ; preds = %2
  %9 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 %9(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i64 %11, i64* @glDebugMessageCallback, align 8
  %12 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 %12(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i64 %14, i64* @glDebugMessageControl, align 8
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 %15(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  store i64 %17, i64* @glDebugMessageInsert, align 8
  %18 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 %18(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  store i64 %20, i64* @glGetDebugMessageLog, align 8
  %21 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 %21(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %22)
  store i64 %23, i64* @glGetObjectLabel, align 8
  %24 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 %24(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %25)
  store i64 %26, i64* @glGetObjectPtrLabel, align 8
  %27 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 %27(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %28)
  store i64 %29, i64* @glGetPointerv, align 8
  %30 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 %30(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %31)
  store i64 %32, i64* @glObjectLabel, align 8
  %33 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 %33(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %34)
  store i64 %35, i64* @glObjectPtrLabel, align 8
  %36 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 %36(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %37)
  store i64 %38, i64* @glPopDebugGroup, align 8
  %39 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 %39(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %40)
  store i64 %41, i64* @glPushDebugGroup, align 8
  br label %42

42:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
