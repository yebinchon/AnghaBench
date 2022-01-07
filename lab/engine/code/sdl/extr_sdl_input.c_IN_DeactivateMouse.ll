; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_DeactivateMouse.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_DeactivateMouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SDL_INIT_VIDEO = common dso_local global i32 0, align 4
@SDL_TRUE = common dso_local global i32 0, align 4
@mouseAvailable = common dso_local global i32 0, align 4
@mouseActive = common dso_local global i64 0, align 8
@SDL_window = common dso_local global i32 0, align 4
@SDL_FALSE = common dso_local global i32 0, align 4
@SDL_WINDOW_MOUSE_FOCUS = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@qfalse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @IN_DeactivateMouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IN_DeactivateMouse(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %4 = call i32 @SDL_WasInit(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %41

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @SDL_TRUE, align 4
  %12 = call i32 @SDL_ShowCursor(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @mouseAvailable, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %41

17:                                               ; preds = %13
  %18 = load i64, i64* @mouseActive, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = call i32 (...) @IN_GobbleMotionEvents()
  %22 = load i32, i32* @SDL_window, align 4
  %23 = load i32, i32* @SDL_FALSE, align 4
  %24 = call i32 @SDL_SetWindowGrab(i32 %22, i32 %23)
  %25 = load i32, i32* @SDL_FALSE, align 4
  %26 = call i32 @SDL_SetRelativeMouseMode(i32 %25)
  %27 = load i32, i32* @SDL_window, align 4
  %28 = call i32 @SDL_GetWindowFlags(i32 %27)
  %29 = load i32, i32* @SDL_WINDOW_MOUSE_FOCUS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load i32, i32* @SDL_window, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0, i32 0), align 4
  %35 = sdiv i32 %34, 2
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0, i32 1), align 4
  %37 = sdiv i32 %36, 2
  %38 = call i32 @SDL_WarpMouseInWindow(i32 %33, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %32, %20
  %40 = load i64, i64* @qfalse, align 8
  store i64 %40, i64* @mouseActive, align 8
  br label %41

41:                                               ; preds = %6, %16, %39, %17
  ret void
}

declare dso_local i32 @SDL_WasInit(i32) #1

declare dso_local i32 @SDL_ShowCursor(i32) #1

declare dso_local i32 @IN_GobbleMotionEvents(...) #1

declare dso_local i32 @SDL_SetWindowGrab(i32, i32) #1

declare dso_local i32 @SDL_SetRelativeMouseMode(i32) #1

declare dso_local i32 @SDL_GetWindowFlags(i32) #1

declare dso_local i32 @SDL_WarpMouseInWindow(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
