; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_main.c_S_Init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_main.c_S_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@qfalse = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"------ Initializing Sound ------\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"s_volume\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"0.8\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@s_volume = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"s_musicvolume\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"0.25\00", align 1
@s_musicVolume = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"s_muted\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_ROM = common dso_local global i32 0, align 4
@s_muted = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"s_doppler\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@s_doppler = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"s_backend\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@s_backend = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"s_muteWhenMinimized\00", align 1
@s_muteWhenMinimized = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"s_muteWhenUnfocused\00", align 1
@s_muteWhenUnfocused = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [12 x i8] c"s_initsound\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Sound disabled.\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"music\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"stopmusic\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"s_list\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"s_stop\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"s_info\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"s_useOpenAL\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@si = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"OpenAL\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [24 x i8] c"Sound interface invalid\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Sound initialization successful.\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Sound initialization failed.\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"--------------------------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Init() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @qfalse, align 8
  store i64 %3, i64* %2, align 8
  %4 = call i32 @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @CVAR_ARCHIVE, align 4
  %6 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  store i8* %6, i8** @s_volume, align 8
  %7 = load i32, i32* @CVAR_ARCHIVE, align 4
  %8 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %7)
  store i8* %8, i8** @s_musicVolume, align 8
  %9 = load i32, i32* @CVAR_ROM, align 4
  %10 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %9)
  store i8* %10, i8** @s_muted, align 8
  %11 = load i32, i32* @CVAR_ARCHIVE, align 4
  %12 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %11)
  store i8* %12, i8** @s_doppler, align 8
  %13 = load i32, i32* @CVAR_ROM, align 4
  %14 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i32 %13)
  store i8* %14, i8** @s_backend, align 8
  %15 = load i32, i32* @CVAR_ARCHIVE, align 4
  %16 = call i8* @Cvar_Get(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %15)
  store i8* %16, i8** @s_muteWhenMinimized, align 8
  %17 = load i32, i32* @CVAR_ARCHIVE, align 4
  %18 = call i8* @Cvar_Get(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %17)
  store i8* %18, i8** @s_muteWhenUnfocused, align 8
  %19 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %1, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %0
  %26 = call i32 @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  br label %68

27:                                               ; preds = %0
  %28 = call i32 (...) @S_CodecInit()
  %29 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 (...)* @S_Play_f)
  %30 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 (...)* @S_Music_f)
  %31 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 (...)* @S_StopMusic_f)
  %32 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 (...)* @S_SoundList)
  %33 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 (...)* @S_StopAllSounds)
  %34 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 (...)* @S_SoundInfo)
  %35 = load i32, i32* @CVAR_ARCHIVE, align 4
  %36 = load i32, i32* @CVAR_LATCH, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %1, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %27
  %45 = call i64 @S_AL_Init(i32* @si)
  store i64 %45, i64* %2, align 8
  %46 = call i32 @Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %27
  %48 = load i64, i64* %2, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = call i64 @S_Base_Init(i32* @si)
  store i64 %51, i64* %2, align 8
  %52 = call i32 @Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i64, i64* %2, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = call i32 @S_ValidSoundInterface(i32* @si)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @ERR_FATAL, align 4
  %61 = call i32 @Com_Error(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56
  %63 = call i32 (...) @S_SoundInfo()
  %64 = call i32 @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0))
  br label %67

65:                                               ; preds = %53
  %66 = call i32 @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62
  br label %68

68:                                               ; preds = %67, %25
  %69 = call i32 @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0))
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @S_CodecInit(...) #1

declare dso_local i32 @Cmd_AddCommand(i8*, i32 (...)*) #1

declare dso_local i32 @S_Play_f(...) #1

declare dso_local i32 @S_Music_f(...) #1

declare dso_local i32 @S_StopMusic_f(...) #1

declare dso_local i32 @S_SoundList(...) #1

declare dso_local i32 @S_StopAllSounds(...) #1

declare dso_local i32 @S_SoundInfo(...) #1

declare dso_local i64 @S_AL_Init(i32*) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i64 @S_Base_Init(i32*) #1

declare dso_local i32 @S_ValidSoundInterface(i32*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
