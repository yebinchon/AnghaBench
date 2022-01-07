; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_vout_android_nativewindow.c_func_free_l.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_vout_android_nativewindow.c_func_free_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @func_free_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @func_free_l(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %62

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %59

15:                                               ; preds = %9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = call i64 @ISDL_Array__begin(i32* %17)
  %19 = inttoptr i64 %18 to i32**
  store i32** %19, i32*** %4, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = call i64 @ISDL_Array__end(i32* %21)
  %23 = inttoptr i64 %22 to i32**
  store i32** %23, i32*** %5, align 8
  br label %24

24:                                               ; preds = %31, %15
  %25 = load i32**, i32*** %4, align 8
  %26 = load i32**, i32*** %5, align 8
  %27 = icmp ult i32** %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32**, i32*** %4, align 8
  %30 = call i32 @SDL_AMediaCodecBufferProxy_destroyP(i32** %29)
  br label %31

31:                                               ; preds = %28
  %32 = load i32**, i32*** %4, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i32 1
  store i32** %33, i32*** %4, align 8
  br label %24

34:                                               ; preds = %24
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = call i32 @ISDL_Array__clear(i32* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = call i32 @ISDL_Array__clear(i32* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ANativeWindow_release(i32* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %34
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = call i32 @IJK_EGL_freep(i32* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @SDL_AMediaCodec_decreaseReferenceP(i32* %57)
  br label %59

59:                                               ; preds = %52, %9
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = call i32 @SDL_Vout_FreeInternal(%struct.TYPE_6__* %60)
  br label %62

62:                                               ; preds = %59, %8
  ret void
}

declare dso_local i64 @ISDL_Array__begin(i32*) #1

declare dso_local i64 @ISDL_Array__end(i32*) #1

declare dso_local i32 @SDL_AMediaCodecBufferProxy_destroyP(i32**) #1

declare dso_local i32 @ISDL_Array__clear(i32*) #1

declare dso_local i32 @ANativeWindow_release(i32*) #1

declare dso_local i32 @IJK_EGL_freep(i32*) #1

declare dso_local i32 @SDL_AMediaCodec_decreaseReferenceP(i32*) #1

declare dso_local i32 @SDL_Vout_FreeInternal(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
