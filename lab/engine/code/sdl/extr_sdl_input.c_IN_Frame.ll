; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_Frame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@clc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"r_fullscreen\00", align 1
@cls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@KEYCATCH_CONSOLE = common dso_local global i32 0, align 4
@SDL_window = common dso_local global i32 0, align 4
@SDL_WINDOW_INPUT_FOCUS = common dso_local global i32 0, align 4
@in_eventTime = common dso_local global i64 0, align 8
@vidRestartTime = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"vid_restart\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_Frame() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @IN_JoyMove()
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 0), align 8
  %4 = load i64, i64* @CA_DISCONNECTED, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 0), align 8
  %8 = load i64, i64* @CA_ACTIVE, align 8
  %9 = icmp ne i64 %7, %8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i1 [ false, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %1, align 4
  %13 = call i64 @Cvar_VariableIntegerValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0, i32 0), align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = call i32 (...) @Key_GetCatcher()
  %20 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0, i32 0), align 4
  %25 = call i32 @IN_DeactivateMouse(i32 %24)
  br label %49

26:                                               ; preds = %18, %10
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0, i32 0), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %1, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0, i32 0), align 4
  %34 = call i32 @IN_DeactivateMouse(i32 %33)
  br label %48

35:                                               ; preds = %29, %26
  %36 = load i32, i32* @SDL_window, align 4
  %37 = call i32 @SDL_GetWindowFlags(i32 %36)
  %38 = load i32, i32* @SDL_WINDOW_INPUT_FOCUS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0, i32 0), align 4
  %43 = call i32 @IN_DeactivateMouse(i32 %42)
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0, i32 0), align 4
  %46 = call i32 @IN_ActivateMouse(i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %32
  br label %49

49:                                               ; preds = %48, %23
  %50 = call i32 (...) @IN_ProcessEvents()
  %51 = call i64 (...) @Sys_Milliseconds()
  store i64 %51, i64* @in_eventTime, align 8
  %52 = load i64, i64* @vidRestartTime, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i64, i64* @vidRestartTime, align 8
  %56 = call i64 (...) @Sys_Milliseconds()
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  store i64 0, i64* @vidRestartTime, align 8
  %59 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54, %49
  ret void
}

declare dso_local i32 @IN_JoyMove(...) #1

declare dso_local i64 @Cvar_VariableIntegerValue(i8*) #1

declare dso_local i32 @Key_GetCatcher(...) #1

declare dso_local i32 @IN_DeactivateMouse(i32) #1

declare dso_local i32 @SDL_GetWindowFlags(i32) #1

declare dso_local i32 @IN_ActivateMouse(i32) #1

declare dso_local i32 @IN_ProcessEvents(...) #1

declare dso_local i64 @Sys_Milliseconds(...) #1

declare dso_local i32 @Cbuf_AddText(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
