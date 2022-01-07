; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer_rgb.c_rgb888_uploadTexture.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer_rgb.c_rgb888_uploadTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32*, i32, i32, i32** }

@GL_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[rgb888] unexpected format %x\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*)* @rgb888_uploadTexture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgb888_uploadTexture(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca [1 x i32], align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @GL_FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %102

19:                                               ; preds = %14
  %20 = bitcast [1 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 3
  store i32 %27, i32* %21, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds i32, i32* %28, i64 1
  %33 = getelementptr inbounds i32, i32* %28, i64 3
  br label %34

34:                                               ; preds = %34, %19
  %35 = phi i32* [ %32, %19 ], [ %36, %34 ]
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = icmp eq i32* %36, %33
  br i1 %37, label %38, label %34

38:                                               ; preds = %34
  %39 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %39, align 8
  %45 = getelementptr inbounds i32*, i32** %39, i64 1
  %46 = getelementptr inbounds i32*, i32** %39, i64 3
  br label %47

47:                                               ; preds = %47, %38
  %48 = phi i32** [ %45, %38 ], [ %49, %47 ]
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = icmp eq i32** %49, %46
  br i1 %50, label %51, label %47

51:                                               ; preds = %47
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %56 [
    i32 128, label %55
  ]

55:                                               ; preds = %51
  br label %62

56:                                               ; preds = %51
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ALOGE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @GL_FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %102

62:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %97, %62
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %66, label %100

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* @GL_TEXTURE_2D, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @glBindTexture(i32 %71, i32 %78)
  %80 = load i32, i32* @GL_TEXTURE_2D, align 4
  %81 = load i32, i32* @GL_RGB, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @GL_RGB, align 4
  %91 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @glTexImage2D(i32 %80, i32 0, i32 %81, i32 %85, i32 %89, i32 0, i32 %90, i32 %91, i32* %95)
  br label %97

97:                                               ; preds = %66
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %63

100:                                              ; preds = %63
  %101 = load i32, i32* @GL_TRUE, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %56, %17
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ALOGE(i8*, i32) #2

declare dso_local i32 @glBindTexture(i32, i32) #2

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
