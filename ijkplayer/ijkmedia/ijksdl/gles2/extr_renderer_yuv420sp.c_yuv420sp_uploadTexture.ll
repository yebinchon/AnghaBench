; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer_yuv420sp.c_yuv420sp_uploadTexture.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer_yuv420sp.c_yuv420sp_uploadTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32*, i32, i32, i32** }

@GL_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[yuv420sp] unexpected format %x\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RED_EXT = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_RG_EXT = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*)* @yuv420sp_uploadTexture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yuv420sp_uploadTexture(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32*], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @GL_FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %99

16:                                               ; preds = %11
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %17, align 4
  %23 = getelementptr inbounds i32, i32* %17, i64 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %23, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %30, align 4
  %34 = getelementptr inbounds i32, i32* %30, i64 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %34, align 4
  %39 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %39, align 8
  %45 = getelementptr inbounds i32*, i32** %39, i64 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %45, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %55 [
    i32 128, label %54
  ]

54:                                               ; preds = %16
  br label %61

55:                                               ; preds = %16
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ALOGE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @GL_FALSE, align 4
  store i32 %60, i32* %3, align 4
  br label %99

61:                                               ; preds = %54
  %62 = load i32, i32* @GL_TEXTURE_2D, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @glBindTexture(i32 %62, i32 %67)
  %69 = load i32, i32* @GL_TEXTURE_2D, align 4
  %70 = load i32, i32* @GL_RED_EXT, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @GL_RED_EXT, align 4
  %76 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %77 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %78 = load i32*, i32** %77, align 16
  %79 = call i32 @glTexImage2D(i32 %69, i32 0, i32 %70, i32 %72, i32 %74, i32 0, i32 %75, i32 %76, i32* %78)
  %80 = load i32, i32* @GL_TEXTURE_2D, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @glBindTexture(i32 %80, i32 %85)
  %87 = load i32, i32* @GL_TEXTURE_2D, align 4
  %88 = load i32, i32* @GL_RG_EXT, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @GL_RG_EXT, align 4
  %94 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %95 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @glTexImage2D(i32 %87, i32 0, i32 %88, i32 %90, i32 %92, i32 0, i32 %93, i32 %94, i32* %96)
  %98 = load i32, i32* @GL_TRUE, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %61, %55, %14
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @ALOGE(i8*, i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
