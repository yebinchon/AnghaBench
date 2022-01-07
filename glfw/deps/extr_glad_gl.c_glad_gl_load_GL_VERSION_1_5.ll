; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_load_GL_VERSION_1_5.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_load_GL_VERSION_1_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GL_VERSION_1_5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glBeginQuery\00", align 1
@glBeginQuery = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"glBindBuffer\00", align 1
@glBindBuffer = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"glBufferData\00", align 1
@glBufferData = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"glBufferSubData\00", align 1
@glBufferSubData = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"glDeleteBuffers\00", align 1
@glDeleteBuffers = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"glDeleteQueries\00", align 1
@glDeleteQueries = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"glEndQuery\00", align 1
@glEndQuery = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"glGenBuffers\00", align 1
@glGenBuffers = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"glGenQueries\00", align 1
@glGenQueries = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"glGetBufferParameteriv\00", align 1
@glGetBufferParameteriv = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"glGetBufferPointerv\00", align 1
@glGetBufferPointerv = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"glGetBufferSubData\00", align 1
@glGetBufferSubData = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"glGetQueryObjectiv\00", align 1
@glGetQueryObjectiv = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"glGetQueryObjectuiv\00", align 1
@glGetQueryObjectuiv = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [13 x i8] c"glGetQueryiv\00", align 1
@glGetQueryiv = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"glIsBuffer\00", align 1
@glIsBuffer = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [10 x i8] c"glIsQuery\00", align 1
@glIsQuery = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"glMapBuffer\00", align 1
@glMapBuffer = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"glUnmapBuffer\00", align 1
@glUnmapBuffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*, i8*)*, i8*)* @glad_gl_load_GL_VERSION_1_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glad_gl_load_GL_VERSION_1_5(i64 (i8*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i64 (i8*, i8*)*, align 8
  %4 = alloca i8*, align 8
  store i64 (i8*, i8*)* %0, i64 (i8*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @GLAD_GL_VERSION_1_5, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %66

8:                                                ; preds = %2
  %9 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 %9(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i64 %11, i64* @glBeginQuery, align 8
  %12 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 %12(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i64 %14, i64* @glBindBuffer, align 8
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 %15(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  store i64 %17, i64* @glBufferData, align 8
  %18 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 %18(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  store i64 %20, i64* @glBufferSubData, align 8
  %21 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 %21(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %22)
  store i64 %23, i64* @glDeleteBuffers, align 8
  %24 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 %24(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %25)
  store i64 %26, i64* @glDeleteQueries, align 8
  %27 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 %27(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %28)
  store i64 %29, i64* @glEndQuery, align 8
  %30 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 %30(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %31)
  store i64 %32, i64* @glGenBuffers, align 8
  %33 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 %33(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %34)
  store i64 %35, i64* @glGenQueries, align 8
  %36 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 %36(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %37)
  store i64 %38, i64* @glGetBufferParameteriv, align 8
  %39 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 %39(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %40)
  store i64 %41, i64* @glGetBufferPointerv, align 8
  %42 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 %42(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %43)
  store i64 %44, i64* @glGetBufferSubData, align 8
  %45 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 %45(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %46)
  store i64 %47, i64* @glGetQueryObjectiv, align 8
  %48 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 %48(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %49)
  store i64 %50, i64* @glGetQueryObjectuiv, align 8
  %51 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i64 %51(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %52)
  store i64 %53, i64* @glGetQueryiv, align 8
  %54 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 %54(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %55)
  store i64 %56, i64* @glIsBuffer, align 8
  %57 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 %57(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* %58)
  store i64 %59, i64* @glIsQuery, align 8
  %60 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i64 %60(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* %61)
  store i64 %62, i64* @glMapBuffer, align 8
  %63 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i64 %63(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %64)
  store i64 %65, i64* @glUnmapBuffer, align 8
  br label %66

66:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
