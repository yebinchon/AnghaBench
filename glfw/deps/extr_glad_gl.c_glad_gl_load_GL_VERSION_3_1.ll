; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_load_GL_VERSION_3_1.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_load_GL_VERSION_3_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GL_VERSION_3_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"glBindBufferBase\00", align 1
@glBindBufferBase = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"glBindBufferRange\00", align 1
@glBindBufferRange = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"glCopyBufferSubData\00", align 1
@glCopyBufferSubData = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"glDrawArraysInstanced\00", align 1
@glDrawArraysInstanced = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"glDrawElementsInstanced\00", align 1
@glDrawElementsInstanced = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"glGetActiveUniformBlockName\00", align 1
@glGetActiveUniformBlockName = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"glGetActiveUniformBlockiv\00", align 1
@glGetActiveUniformBlockiv = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"glGetActiveUniformName\00", align 1
@glGetActiveUniformName = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"glGetActiveUniformsiv\00", align 1
@glGetActiveUniformsiv = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"glGetIntegeri_v\00", align 1
@glGetIntegeri_v = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"glGetUniformBlockIndex\00", align 1
@glGetUniformBlockIndex = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"glGetUniformIndices\00", align 1
@glGetUniformIndices = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"glPrimitiveRestartIndex\00", align 1
@glPrimitiveRestartIndex = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [12 x i8] c"glTexBuffer\00", align 1
@glTexBuffer = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [22 x i8] c"glUniformBlockBinding\00", align 1
@glUniformBlockBinding = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*, i8*)*, i8*)* @glad_gl_load_GL_VERSION_3_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glad_gl_load_GL_VERSION_3_1(i64 (i8*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i64 (i8*, i8*)*, align 8
  %4 = alloca i8*, align 8
  store i64 (i8*, i8*)* %0, i64 (i8*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @GLAD_GL_VERSION_3_1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %54

8:                                                ; preds = %2
  %9 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 %9(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i64 %11, i64* @glBindBufferBase, align 8
  %12 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 %12(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i64 %14, i64* @glBindBufferRange, align 8
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 %15(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  store i64 %17, i64* @glCopyBufferSubData, align 8
  %18 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 %18(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  store i64 %20, i64* @glDrawArraysInstanced, align 8
  %21 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 %21(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %22)
  store i64 %23, i64* @glDrawElementsInstanced, align 8
  %24 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 %24(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %25)
  store i64 %26, i64* @glGetActiveUniformBlockName, align 8
  %27 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 %27(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %28)
  store i64 %29, i64* @glGetActiveUniformBlockiv, align 8
  %30 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 %30(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %31)
  store i64 %32, i64* @glGetActiveUniformName, align 8
  %33 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 %33(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %34)
  store i64 %35, i64* @glGetActiveUniformsiv, align 8
  %36 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 %36(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %37)
  store i64 %38, i64* @glGetIntegeri_v, align 8
  %39 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 %39(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %40)
  store i64 %41, i64* @glGetUniformBlockIndex, align 8
  %42 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 %42(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %43)
  store i64 %44, i64* @glGetUniformIndices, align 8
  %45 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 %45(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %46)
  store i64 %47, i64* @glPrimitiveRestartIndex, align 8
  %48 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 %48(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* %49)
  store i64 %50, i64* @glTexBuffer, align 8
  %51 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i64 %51(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %52)
  store i64 %53, i64* @glUniformBlockBinding, align 8
  br label %54

54:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
