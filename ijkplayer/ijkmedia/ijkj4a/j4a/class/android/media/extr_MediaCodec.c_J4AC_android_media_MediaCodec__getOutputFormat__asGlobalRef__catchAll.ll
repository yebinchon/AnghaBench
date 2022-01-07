; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/media/extr_MediaCodec.c_J4AC_android_media_MediaCodec__getOutputFormat__asGlobalRef__catchAll.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/media/extr_MediaCodec.c_J4AC_android_media_MediaCodec__getOutputFormat__asGlobalRef__catchAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @J4AC_android_media_MediaCodec__getOutputFormat__asGlobalRef__catchAll(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @J4AC_android_media_MediaCodec__getOutputFormat__catchAll(i32* %7, i32* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @J4A_ExceptionCheck__catchAll(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  store i32* null, i32** %5, align 8
  br label %25

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @J4A_NewGlobalRef__catchAll(i32* %18, i32* %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32* null, i32** %5, align 8
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %23, %16
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @J4A_DeleteLocalRef__p(i32* %26, i32** %6)
  %28 = load i32*, i32** %5, align 8
  ret i32* %28
}

declare dso_local i32* @J4AC_android_media_MediaCodec__getOutputFormat__catchAll(i32*, i32*) #1

declare dso_local i64 @J4A_ExceptionCheck__catchAll(i32*) #1

declare dso_local i32* @J4A_NewGlobalRef__catchAll(i32*, i32*) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
