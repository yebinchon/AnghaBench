; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_ActivateMouse.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_ActivateMouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@mouseAvailable = common dso_local global i32 0, align 4
@SDL_INIT_VIDEO = common dso_local global i32 0, align 4
@mouseActive = common dso_local global i64 0, align 8
@SDL_TRUE = common dso_local global i32 0, align 4
@SDL_window = common dso_local global i32 0, align 4
@in_nograb = common dso_local global %struct.TYPE_2__* null, align 8
@SDL_FALSE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @IN_ActivateMouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IN_ActivateMouse(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @mouseAvailable, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %7 = call i32 @SDL_WasInit(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %1
  br label %55

10:                                               ; preds = %5
  %11 = load i64, i64* @mouseActive, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @SDL_TRUE, align 4
  %15 = call i32 @SDL_SetRelativeMouseMode(i32 %14)
  %16 = load i32, i32* @SDL_window, align 4
  %17 = load i32, i32* @SDL_TRUE, align 4
  %18 = call i32 @SDL_SetWindowGrab(i32 %16, i32 %17)
  %19 = call i32 (...) @IN_GobbleMotionEvents()
  br label %20

20:                                               ; preds = %13, %10
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %53, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @in_nograb, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* @mouseActive, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @in_nograb, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @SDL_FALSE, align 4
  %38 = call i32 @SDL_SetRelativeMouseMode(i32 %37)
  %39 = load i32, i32* @SDL_window, align 4
  %40 = load i32, i32* @SDL_FALSE, align 4
  %41 = call i32 @SDL_SetWindowGrab(i32 %39, i32 %40)
  br label %48

42:                                               ; preds = %31
  %43 = load i32, i32* @SDL_TRUE, align 4
  %44 = call i32 @SDL_SetRelativeMouseMode(i32 %43)
  %45 = load i32, i32* @SDL_window, align 4
  %46 = load i32, i32* @SDL_TRUE, align 4
  %47 = call i32 @SDL_SetWindowGrab(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i64, i64* @qfalse, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @in_nograb, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %28
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i64, i64* @qtrue, align 8
  store i64 %54, i64* @mouseActive, align 8
  br label %55

55:                                               ; preds = %53, %9
  ret void
}

declare dso_local i32 @SDL_WasInit(i32) #1

declare dso_local i32 @SDL_SetRelativeMouseMode(i32) #1

declare dso_local i32 @SDL_SetWindowGrab(i32, i32) #1

declare dso_local i32 @IN_GobbleMotionEvents(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
