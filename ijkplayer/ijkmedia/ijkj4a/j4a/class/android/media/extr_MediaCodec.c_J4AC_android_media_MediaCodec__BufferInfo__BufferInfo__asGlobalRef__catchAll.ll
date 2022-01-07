; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/media/extr_MediaCodec.c_J4AC_android_media_MediaCodec__BufferInfo__BufferInfo__asGlobalRef__catchAll.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/media/extr_MediaCodec.c_J4AC_android_media_MediaCodec__BufferInfo__BufferInfo__asGlobalRef__catchAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @J4AC_android_media_MediaCodec__BufferInfo__BufferInfo__asGlobalRef__catchAll(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32* @J4AC_android_media_MediaCodec__BufferInfo__BufferInfo__catchAll(i32* %5)
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @J4A_ExceptionCheck__catchAll(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %1
  store i32* null, i32** %3, align 8
  br label %22

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @J4A_NewGlobalRef__catchAll(i32* %15, i32* %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %22

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %20, %13
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @J4A_DeleteLocalRef__p(i32* %23, i32** %4)
  %25 = load i32*, i32** %3, align 8
  ret i32* %25
}

declare dso_local i32* @J4AC_android_media_MediaCodec__BufferInfo__BufferInfo__catchAll(i32*) #1

declare dso_local i64 @J4A_ExceptionCheck__catchAll(i32*) #1

declare dso_local i32* @J4A_NewGlobalRef__catchAll(i32*, i32*) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
