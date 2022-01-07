; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_sound.c_UI_SoundOptionsMenu_Event.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_sound.c_UI_SoundOptionsMenu_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"s_volume\00", align 1
@soundOptionsInfo = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"s_musicvolume\00", align 1
@DEFAULT_SDL_SND_SPEED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"s_sdlSpeed\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"s_useOpenAL\00", align 1
@UISND_OPENAL = common dso_local global i32 0, align 4
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"snd_restart\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @UI_SoundOptionsMenu_Event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SoundOptionsMenu_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @QM_ACTIVATED, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %68

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_11__*
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %68 [
    i32 130, label %15
    i32 131, label %18
    i32 128, label %21
    i32 129, label %22
    i32 132, label %25
    i32 133, label %27
  ]

15:                                               ; preds = %10
  %16 = call i32 (...) @UI_PopMenu()
  %17 = call i32 (...) @UI_GraphicsOptionsMenu()
  br label %68

18:                                               ; preds = %10
  %19 = call i32 (...) @UI_PopMenu()
  %20 = call i32 (...) @UI_DisplayOptionsMenu()
  br label %68

21:                                               ; preds = %10
  br label %68

22:                                               ; preds = %10
  %23 = call i32 (...) @UI_PopMenu()
  %24 = call i32 (...) @UI_NetworkOptionsMenu()
  br label %68

25:                                               ; preds = %10
  %26 = call i32 (...) @UI_PopMenu()
  br label %68

27:                                               ; preds = %10
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 7, i32 0), align 4
  %29 = sdiv i32 %28, 10
  %30 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 7, i32 0), align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 0), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 6, i32 0), align 4
  %33 = sdiv i32 %32, 10
  %34 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 6, i32 0), align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 1), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 5), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 4, i32 0), align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 3), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 2, i32 0), align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39, %27
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 4, i32 0), align 4
  switch i32 %44, label %45 [
    i32 0, label %46
    i32 1, label %47
    i32 2, label %48
  ]

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %43, %45
  store i32 11025, i32* %5, align 4
  br label %49

47:                                               ; preds = %43
  store i32 22050, i32* %5, align 4
  br label %49

48:                                               ; preds = %43
  store i32 44100, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %47, %46
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @DEFAULT_SDL_SND_SPEED, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 4, i32 0), align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 5), align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 2, i32 0), align 4
  %59 = load i32, i32* @UISND_OPENAL, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 2, i32 0), align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soundOptionsInfo, i32 0, i32 3), align 4
  %64 = call i32 (...) @UI_ForceMenuOff()
  %65 = load i32, i32* @EXEC_APPEND, align 4
  %66 = call i32 @trap_Cmd_ExecuteText(i32 %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %54, %39
  br label %68

68:                                               ; preds = %9, %10, %67, %25, %22, %21, %18, %15
  ret void
}

declare dso_local i32 @UI_PopMenu(...) #1

declare dso_local i32 @UI_GraphicsOptionsMenu(...) #1

declare dso_local i32 @UI_DisplayOptionsMenu(...) #1

declare dso_local i32 @UI_NetworkOptionsMenu(...) #1

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @UI_ForceMenuOff(...) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
