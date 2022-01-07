; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/extr_ijkplayer_jni.c_ijkMediaPlayer_setStreamSelected.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/extr_ijkplayer_jni.c_ijkMediaPlayer_setStreamSelected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"mpjni: setStreamSelected: null mp\00", align 1
@LABEL_RETURN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"failed to %s %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @ijkMediaPlayer_setStreamSelected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ijkMediaPlayer_setStreamSelected(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32* @jni_get_media_player(i32* %11, i32 %12)
  store i32* %13, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @LABEL_RETURN, align 4
  %17 = call i32 @JNI_CHECK_GOTO(i32* %14, i32* %15, i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ijkmp_set_stream_selected(i32* %18, i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ALOGE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %29)
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %24
  %33 = call i32 @ijkmp_dec_ref_p(i32** %9)
  ret void
}

declare dso_local i32* @jni_get_media_player(i32*, i32) #1

declare dso_local i32 @JNI_CHECK_GOTO(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @ijkmp_set_stream_selected(i32*, i32, i32) #1

declare dso_local i32 @ALOGE(i8*, i8*, i32) #1

declare dso_local i32 @ijkmp_dec_ref_p(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
