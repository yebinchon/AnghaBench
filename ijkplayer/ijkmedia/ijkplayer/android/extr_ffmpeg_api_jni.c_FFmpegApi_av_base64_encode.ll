; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/extr_ffmpeg_api_jni.c_FFmpegApi_av_base64_encode.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/extr_ffmpeg_api_jni.c_FFmpegApi_av_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__**, i32)*, i32 (%struct.TYPE_7__**, i32, i32*, i32)*, i32* (%struct.TYPE_7__**, i8*)*, i32* (%struct.TYPE_7__**, i32, i32*)* }

@JNI_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__**, i32, i32)* @FFmpegApi_av_base64_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @FFmpegApi_av_base64_encode(%struct.TYPE_7__** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64 (%struct.TYPE_7__**, i32)*, i64 (%struct.TYPE_7__**, i32)** %14, align 8
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 %15(%struct.TYPE_7__** %16, i32 %17)
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %62

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i32* (%struct.TYPE_7__**, i32, i32*)*, i32* (%struct.TYPE_7__**, i32, i32*)** %25, align 8
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32* %26(%struct.TYPE_7__** %27, i32 %28, i32* null)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %62

33:                                               ; preds = %22
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @AV_BASE64_SIZE(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i8* @malloc(i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %62

42:                                               ; preds = %33
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @av_base64_encode(i8* %47, i32 %48, i32* %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %62

54:                                               ; preds = %42
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32* (%struct.TYPE_7__**, i8*)*, i32* (%struct.TYPE_7__**, i8*)** %57, align 8
  %59 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32* %58(%struct.TYPE_7__** %59, i8* %60)
  store i32* %61, i32** %7, align 8
  br label %62

62:                                               ; preds = %54, %53, %41, %32, %21
  %63 = load i32*, i32** %10, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32 (%struct.TYPE_7__**, i32, i32*, i32)*, i32 (%struct.TYPE_7__**, i32, i32*, i32)** %68, align 8
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* @JNI_ABORT, align 4
  %74 = call i32 %69(%struct.TYPE_7__** %70, i32 %71, i32* %72, i32 %73)
  store i32* null, i32** %10, align 8
  br label %75

75:                                               ; preds = %65, %62
  %76 = load i8*, i8** %8, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @free(i8* %79)
  store i8* null, i8** %8, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32*, i32** %7, align 8
  ret i32* %82
}

declare dso_local i32 @AV_BASE64_SIZE(i64) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @av_base64_encode(i8*, i32, i32*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
