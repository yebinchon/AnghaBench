; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/media/extr_MediaFormat.c_J4AC_android_media_MediaFormat__createVideoFormat__asGlobalRef__catchAll.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/media/extr_MediaFormat.c_J4AC_android_media_MediaFormat__createVideoFormat__asGlobalRef__catchAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @J4AC_android_media_MediaFormat__createVideoFormat__asGlobalRef__catchAll(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32* @J4AC_android_media_MediaFormat__createVideoFormat__catchAll(i32* %11, i32 %12, i32 %13, i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @J4A_ExceptionCheck__catchAll(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %4
  store i32* null, i32** %9, align 8
  br label %31

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32* @J4A_NewGlobalRef__catchAll(i32* %24, i32* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32* null, i32** %9, align 8
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %29, %22
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @J4A_DeleteLocalRef__p(i32* %32, i32** %10)
  %34 = load i32*, i32** %9, align 8
  ret i32* %34
}

declare dso_local i32* @J4AC_android_media_MediaFormat__createVideoFormat__catchAll(i32*, i32, i32, i32) #1

declare dso_local i64 @J4A_ExceptionCheck__catchAll(i32*) #1

declare dso_local i32* @J4A_NewGlobalRef__catchAll(i32*, i32*) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
