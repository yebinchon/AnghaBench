; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_load_GL_VERSION_1_1.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_load_GL_VERSION_1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GL_VERSION_1_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"glAreTexturesResident\00", align 1
@glAreTexturesResident = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"glArrayElement\00", align 1
@glArrayElement = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"glBindTexture\00", align 1
@glBindTexture = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"glColorPointer\00", align 1
@glColorPointer = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"glCopyTexImage1D\00", align 1
@glCopyTexImage1D = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"glCopyTexImage2D\00", align 1
@glCopyTexImage2D = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"glCopyTexSubImage1D\00", align 1
@glCopyTexSubImage1D = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"glCopyTexSubImage2D\00", align 1
@glCopyTexSubImage2D = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"glDeleteTextures\00", align 1
@glDeleteTextures = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"glDisableClientState\00", align 1
@glDisableClientState = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"glDrawArrays\00", align 1
@glDrawArrays = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"glDrawElements\00", align 1
@glDrawElements = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"glEdgeFlagPointer\00", align 1
@glEdgeFlagPointer = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"glEnableClientState\00", align 1
@glEnableClientState = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"glGenTextures\00", align 1
@glGenTextures = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"glGetPointerv\00", align 1
@glGetPointerv = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"glIndexPointer\00", align 1
@glIndexPointer = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"glIndexub\00", align 1
@glIndexub = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [11 x i8] c"glIndexubv\00", align 1
@glIndexubv = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"glInterleavedArrays\00", align 1
@glInterleavedArrays = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [12 x i8] c"glIsTexture\00", align 1
@glIsTexture = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"glNormalPointer\00", align 1
@glNormalPointer = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [16 x i8] c"glPolygonOffset\00", align 1
@glPolygonOffset = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [18 x i8] c"glPopClientAttrib\00", align 1
@glPopClientAttrib = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [21 x i8] c"glPrioritizeTextures\00", align 1
@glPrioritizeTextures = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [19 x i8] c"glPushClientAttrib\00", align 1
@glPushClientAttrib = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [18 x i8] c"glTexCoordPointer\00", align 1
@glTexCoordPointer = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [16 x i8] c"glTexSubImage1D\00", align 1
@glTexSubImage1D = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [16 x i8] c"glTexSubImage2D\00", align 1
@glTexSubImage2D = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [16 x i8] c"glVertexPointer\00", align 1
@glVertexPointer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*, i8*)*, i8*)* @glad_gl_load_GL_VERSION_1_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glad_gl_load_GL_VERSION_1_1(i64 (i8*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i64 (i8*, i8*)*, align 8
  %4 = alloca i8*, align 8
  store i64 (i8*, i8*)* %0, i64 (i8*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @GLAD_GL_VERSION_1_1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %99

8:                                                ; preds = %2
  %9 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 %9(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i64 %11, i64* @glAreTexturesResident, align 8
  %12 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 %12(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i64 %14, i64* @glArrayElement, align 8
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 %15(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  store i64 %17, i64* @glBindTexture, align 8
  %18 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 %18(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  store i64 %20, i64* @glColorPointer, align 8
  %21 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 %21(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %22)
  store i64 %23, i64* @glCopyTexImage1D, align 8
  %24 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 %24(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %25)
  store i64 %26, i64* @glCopyTexImage2D, align 8
  %27 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 %27(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %28)
  store i64 %29, i64* @glCopyTexSubImage1D, align 8
  %30 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 %30(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %31)
  store i64 %32, i64* @glCopyTexSubImage2D, align 8
  %33 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 %33(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %34)
  store i64 %35, i64* @glDeleteTextures, align 8
  %36 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 %36(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %37)
  store i64 %38, i64* @glDisableClientState, align 8
  %39 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 %39(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %40)
  store i64 %41, i64* @glDrawArrays, align 8
  %42 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 %42(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %43)
  store i64 %44, i64* @glDrawElements, align 8
  %45 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 %45(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %46)
  store i64 %47, i64* @glEdgeFlagPointer, align 8
  %48 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 %48(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %49)
  store i64 %50, i64* @glEnableClientState, align 8
  %51 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i64 %51(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %52)
  store i64 %53, i64* @glGenTextures, align 8
  %54 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 %54(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %55)
  store i64 %56, i64* @glGetPointerv, align 8
  %57 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 %57(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* %58)
  store i64 %59, i64* @glIndexPointer, align 8
  %60 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i64 %60(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %61)
  store i64 %62, i64* @glIndexub, align 8
  %63 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i64 %63(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %64)
  store i64 %65, i64* @glIndexubv, align 8
  %66 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 %66(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* %67)
  store i64 %68, i64* @glInterleavedArrays, align 8
  %69 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = call i64 %69(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* %70)
  store i64 %71, i64* @glIsTexture, align 8
  %72 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = call i64 %72(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %73)
  store i64 %74, i64* @glNormalPointer, align 8
  %75 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = call i64 %75(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* %76)
  store i64 %77, i64* @glPolygonOffset, align 8
  %78 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i64 %78(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* %79)
  store i64 %80, i64* @glPopClientAttrib, align 8
  %81 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = call i64 %81(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* %82)
  store i64 %83, i64* @glPrioritizeTextures, align 8
  %84 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 %84(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i8* %85)
  store i64 %86, i64* @glPushClientAttrib, align 8
  %87 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = call i64 %87(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* %88)
  store i64 %89, i64* @glTexCoordPointer, align 8
  %90 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = call i64 %90(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8* %91)
  store i64 %92, i64* @glTexSubImage1D, align 8
  %93 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = call i64 %93(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %94)
  store i64 %95, i64* @glTexSubImage2D, align 8
  %96 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = call i64 %96(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* %97)
  store i64 %98, i64* @glVertexPointer, align 8
  br label %99

99:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
