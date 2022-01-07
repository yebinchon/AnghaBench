; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/media/extr_MediaCodec.c_J4AC_android_media_MediaCodec__createByCodecName__withCString__catchAll.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/media/extr_MediaCodec.c_J4AC_android_media_MediaCodec__createByCodecName__withCString__catchAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @J4AC_android_media_MediaCodec__createByCodecName__withCString__catchAll(%struct.TYPE_7__** %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32* (%struct.TYPE_7__**, i8*)**
  %11 = load i32* (%struct.TYPE_7__**, i8*)*, i32* (%struct.TYPE_7__**, i8*)** %10, align 8
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* %11(%struct.TYPE_7__** %12, i8* %13)
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %16 = call i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_7__** %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  br label %34

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @J4AC_android_media_MediaCodec__createByCodecName__catchAll(%struct.TYPE_7__** %23, i32* %24)
  store i32* %25, i32** %5, align 8
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %27 = call i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_7__** %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %22
  store i32* null, i32** %5, align 8
  br label %34

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %32, %21
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %36 = call i32 @J4A_DeleteLocalRef__p(%struct.TYPE_7__** %35, i32** %6)
  %37 = load i32*, i32** %5, align 8
  ret i32* %37
}

declare dso_local i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_7__**) #1

declare dso_local i32* @J4AC_android_media_MediaCodec__createByCodecName__catchAll(%struct.TYPE_7__**, i32*) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(%struct.TYPE_7__**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
