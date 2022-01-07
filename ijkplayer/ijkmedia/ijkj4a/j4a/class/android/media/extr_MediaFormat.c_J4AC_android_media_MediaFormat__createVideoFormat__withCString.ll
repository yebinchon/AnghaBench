; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/media/extr_MediaFormat.c_J4AC_android_media_MediaFormat__createVideoFormat__withCString.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/media/extr_MediaFormat.c_J4AC_android_media_MediaFormat__createVideoFormat__withCString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* (%struct.TYPE_7__**, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @J4AC_android_media_MediaFormat__createVideoFormat__withCString(%struct.TYPE_7__** %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32* (%struct.TYPE_7__**, i8*)*, i32* (%struct.TYPE_7__**, i8*)** %13, align 8
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32* %14(%struct.TYPE_7__** %15, i8* %16)
  store i32* %17, i32** %10, align 8
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %19 = call i64 @J4A_ExceptionCheck__throwAny(%struct.TYPE_7__** %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %4
  br label %39

25:                                               ; preds = %21
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32* @J4AC_android_media_MediaFormat__createVideoFormat(%struct.TYPE_7__** %26, i32* %27, i32 %28, i32 %29)
  store i32* %30, i32** %9, align 8
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %32 = call i64 @J4A_ExceptionCheck__throwAny(%struct.TYPE_7__** %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %25
  store i32* null, i32** %9, align 8
  br label %39

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %37, %24
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %41 = call i32 @J4A_DeleteLocalRef__p(%struct.TYPE_7__** %40, i32** %10)
  %42 = load i32*, i32** %9, align 8
  ret i32* %42
}

declare dso_local i64 @J4A_ExceptionCheck__throwAny(%struct.TYPE_7__**) #1

declare dso_local i32* @J4AC_android_media_MediaFormat__createVideoFormat(%struct.TYPE_7__**, i32*, i32, i32) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(%struct.TYPE_7__**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
