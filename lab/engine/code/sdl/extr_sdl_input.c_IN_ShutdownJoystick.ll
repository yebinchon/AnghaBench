; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_ShutdownJoystick.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_ShutdownJoystick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDL_INIT_GAMECONTROLLER = common dso_local global i32 0, align 4
@SDL_INIT_JOYSTICK = common dso_local global i32 0, align 4
@gamepad = common dso_local global i32* null, align 8
@stick = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @IN_ShutdownJoystick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IN_ShutdownJoystick() #0 {
  %1 = load i32, i32* @SDL_INIT_GAMECONTROLLER, align 4
  %2 = call i32 @SDL_WasInit(i32 %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %27

5:                                                ; preds = %0
  %6 = load i32, i32* @SDL_INIT_JOYSTICK, align 4
  %7 = call i32 @SDL_WasInit(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  br label %27

10:                                               ; preds = %5
  %11 = load i32*, i32** @gamepad, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** @gamepad, align 8
  %15 = call i32 @SDL_GameControllerClose(i32* %14)
  store i32* null, i32** @gamepad, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32*, i32** @stick, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** @stick, align 8
  %21 = call i32 @SDL_JoystickClose(i32* %20)
  store i32* null, i32** @stick, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @SDL_INIT_GAMECONTROLLER, align 4
  %24 = call i32 @SDL_QuitSubSystem(i32 %23)
  %25 = load i32, i32* @SDL_INIT_JOYSTICK, align 4
  %26 = call i32 @SDL_QuitSubSystem(i32 %25)
  br label %27

27:                                               ; preds = %22, %9, %4
  ret void
}

declare dso_local i32 @SDL_WasInit(i32) #1

declare dso_local i32 @SDL_GameControllerClose(i32*) #1

declare dso_local i32 @SDL_JoystickClose(i32*) #1

declare dso_local i32 @SDL_QuitSubSystem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
