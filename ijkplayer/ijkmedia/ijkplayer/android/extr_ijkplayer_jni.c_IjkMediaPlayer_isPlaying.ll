; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/extr_ijkplayer_jni.c_IjkMediaPlayer_isPlaying.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/extr_ijkplayer_jni.c_IjkMediaPlayer_isPlaying.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JNI_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mpjni: isPlaying: null mp\00", align 1
@LABEL_RETURN = common dso_local global i32 0, align 4
@JNI_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @IjkMediaPlayer_isPlaying to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IjkMediaPlayer_isPlaying(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @JNI_FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32* @jni_get_media_player(i32* %8, i32 %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @LABEL_RETURN, align 4
  %14 = call i32 @JNI_CHECK_GOTO(i32* %11, i32* %12, i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @ijkmp_is_playing(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @JNI_TRUE, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @JNI_FALSE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22
  %25 = call i32 @ijkmp_dec_ref_p(i32** %6)
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32* @jni_get_media_player(i32*, i32) #1

declare dso_local i32 @JNI_CHECK_GOTO(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i64 @ijkmp_is_playing(i32*) #1

declare dso_local i32 @ijkmp_dec_ref_p(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
