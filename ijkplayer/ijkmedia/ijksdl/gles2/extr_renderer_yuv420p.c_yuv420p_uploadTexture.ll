; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer_yuv420p.c_yuv420p_uploadTexture.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer_yuv420p.c_yuv420p_uploadTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32*, i32, i32, i32** }

@GL_FALSE = common dso_local global i32 0, align 4
@__const.yuv420p_uploadTexture.planes = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@.str = private unnamed_addr constant [32 x i8] c"[yuv420p] unexpected format %x\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_LUMINANCE = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*)* @yuv420p_uploadTexture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yuv420p_uploadTexture(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
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
  br label %124

19:                                               ; preds = %14
  %20 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast ([3 x i32]* @__const.yuv420p_uploadTexture.planes to i8*), i64 12, i1 false)
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %21, align 4
  %27 = getelementptr inbounds i32, i32* %21, i64 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %27, align 4
  %33 = getelementptr inbounds i32, i32* %27, i64 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %33, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %39, align 4
  %43 = getelementptr inbounds i32, i32* %39, i64 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %43, align 4
  %48 = getelementptr inbounds i32, i32* %43, i64 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 2
  store i32 %52, i32* %48, align 4
  %53 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %53, align 8
  %59 = getelementptr inbounds i32*, i32** %53, i64 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %59, align 8
  %65 = getelementptr inbounds i32*, i32** %59, i64 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 2
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %65, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %78 [
    i32 129, label %74
    i32 128, label %75
  ]

74:                                               ; preds = %19
  br label %84

75:                                               ; preds = %19
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 2, i32* %76, align 4
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 1, i32* %77, align 4
  br label %84

78:                                               ; preds = %19
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ALOGE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @GL_FALSE, align 4
  store i32 %83, i32* %3, align 4
  br label %124

84:                                               ; preds = %75, %74
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %119, %84
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 3
  br i1 %87, label %88, label %122

88:                                               ; preds = %85
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* @GL_TEXTURE_2D, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @glBindTexture(i32 %93, i32 %100)
  %102 = load i32, i32* @GL_TEXTURE_2D, align 4
  %103 = load i32, i32* @GL_LUMINANCE, align 4
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @GL_LUMINANCE, align 4
  %113 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @glTexImage2D(i32 %102, i32 0, i32 %103, i32 %107, i32 %111, i32 0, i32 %112, i32 %113, i32* %117)
  br label %119

119:                                              ; preds = %88
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %85

122:                                              ; preds = %85
  %123 = load i32, i32* @GL_TRUE, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %78, %17
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
