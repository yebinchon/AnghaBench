; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_Init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SDL_INIT_VIDEO = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"IN_Init called before SDL_Init( SDL_INIT_VIDEO )\00", align 1
@SDL_window = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"\0A------- Input Initialization -------\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"in_keyboardDebug\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@in_keyboardDebug = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"in_mouse\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@in_mouse = common dso_local global %struct.TYPE_2__* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"in_nograb\00", align 1
@in_nograb = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"in_joystick\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@in_joystick = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"joy_threshold\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"0.15\00", align 1
@in_joystickThreshold = common dso_local global i8* null, align 8
@mouseAvailable = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"r_fullscreen\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"com_unfocused\00", align 1
@SDL_WINDOW_INPUT_FOCUS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"com_minimized\00", align 1
@SDL_WINDOW_MINIMIZED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"------------------------------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_Init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %5 = call i32 @SDL_WasInit(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ERR_FATAL, align 4
  %9 = call i32 @Com_Error(i32 %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %52

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** @SDL_window, align 8
  %13 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @CVAR_ARCHIVE, align 4
  %15 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  store i8* %15, i8** @in_keyboardDebug, align 8
  %16 = load i32, i32* @CVAR_ARCHIVE, align 4
  %17 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  %18 = bitcast i8* %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** @in_mouse, align 8
  %19 = load i32, i32* @CVAR_ARCHIVE, align 4
  %20 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  store i8* %20, i8** @in_nograb, align 8
  %21 = load i32, i32* @CVAR_ARCHIVE, align 4
  %22 = load i32, i32* @CVAR_LATCH, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  store i8* %24, i8** @in_joystick, align 8
  %25 = load i32, i32* @CVAR_ARCHIVE, align 4
  %26 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %25)
  store i8* %26, i8** @in_joystickThreshold, align 8
  %27 = call i32 (...) @SDL_StartTextInput()
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @in_mouse, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* @mouseAvailable, align 4
  %33 = call i64 @Cvar_VariableIntegerValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @IN_DeactivateMouse(i32 %35)
  %37 = load i32*, i32** @SDL_window, align 8
  %38 = call i32 @SDL_GetWindowFlags(i32* %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SDL_WINDOW_INPUT_FOCUS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @SDL_WINDOW_MINIMIZED, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %48)
  %50 = call i32 (...) @IN_InitJoystick()
  %51 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  br label %52

52:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @SDL_WasInit(i32) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @SDL_StartTextInput(...) #1

declare dso_local i32 @IN_DeactivateMouse(i32) #1

declare dso_local i64 @Cvar_VariableIntegerValue(i8*) #1

declare dso_local i32 @SDL_GetWindowFlags(i32*) #1

declare dso_local i32 @Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @IN_InitJoystick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
