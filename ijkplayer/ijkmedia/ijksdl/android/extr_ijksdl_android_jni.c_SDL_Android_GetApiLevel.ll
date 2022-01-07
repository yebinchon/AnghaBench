; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_android_jni.c_SDL_Android_GetApiLevel.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_android_jni.c_SDL_Android_GetApiLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDL_Android_GetApiLevel.SDK_INT = internal global i32 0, align 4
@JNI_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"SDL_Android_GetApiLevel: SetupThreadEnv failed\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"API-Level: %d\0A\00", align 1
@PROP_VALUE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDL_Android_GetApiLevel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @SDL_Android_GetApiLevel.SDK_INT, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @SDL_Android_GetApiLevel.SDK_INT, align 4
  store i32 %6, i32* %1, align 4
  br label %19

7:                                                ; preds = %0
  store i32* null, i32** %2, align 8
  %8 = load i64, i64* @JNI_OK, align 8
  %9 = call i64 @SDL_JNI_SetupThreadEnv(i32** %2)
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @ALOGE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %19

13:                                               ; preds = %7
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @J4AC_android_os_Build__VERSION__SDK_INT__get__catchAll(i32* %14)
  store i32 %15, i32* @SDL_Android_GetApiLevel.SDK_INT, align 4
  %16 = load i32, i32* @SDL_Android_GetApiLevel.SDK_INT, align 4
  %17 = call i32 @ALOGI(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @SDL_Android_GetApiLevel.SDK_INT, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %13, %11, %5
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @SDL_JNI_SetupThreadEnv(i32**) #1

declare dso_local i32 @ALOGE(i8*) #1

declare dso_local i32 @J4AC_android_os_Build__VERSION__SDK_INT__get__catchAll(i32*) #1

declare dso_local i32 @ALOGI(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
