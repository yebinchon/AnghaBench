; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/extr_ijkplayer_android.c_ijkmp_android_create.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/extr_ijkplayer_android.c_ijkmp_android_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ijkmp_android_create(i32 (i8*)* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32 (i8*)*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32 (i8*)* %0, i32 (i8*)** %3, align 8
  %5 = load i32 (i8*)*, i32 (i8*)** %3, align 8
  %6 = call %struct.TYPE_6__* @ijkmp_create(i32 (i8*)* %5)
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %52

10:                                               ; preds = %1
  %11 = call i32 (...) @SDL_VoutAndroid_CreateForAndroidSurface()
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  br label %52

23:                                               ; preds = %10
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = call i32 @ffpipeline_create_from_android(%struct.TYPE_7__* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %23
  br label %52

39:                                               ; preds = %23
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ffpipeline_set_vout(i32 %44, i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %2, align 8
  br label %54

52:                                               ; preds = %38, %22, %9
  %53 = call i32 @ijkmp_dec_ref_p(%struct.TYPE_6__** %4)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %54

54:                                               ; preds = %52, %39
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %55
}

declare dso_local %struct.TYPE_6__* @ijkmp_create(i32 (i8*)*) #1

declare dso_local i32 @SDL_VoutAndroid_CreateForAndroidSurface(...) #1

declare dso_local i32 @ffpipeline_create_from_android(%struct.TYPE_7__*) #1

declare dso_local i32 @ffpipeline_set_vout(i32, i32) #1

declare dso_local i32 @ijkmp_dec_ref_p(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
