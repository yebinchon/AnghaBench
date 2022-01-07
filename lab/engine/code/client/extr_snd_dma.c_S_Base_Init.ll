; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_Base_Init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_Base_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (...)*, i32, i32, i32, i32, i32, i32 }

@qfalse = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"s_mixahead\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"0.2\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@s_mixahead = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"s_mixPreStep\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0.05\00", align 1
@s_mixPreStep = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"s_show\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_CHEAT = common dso_local global i32 0, align 4
@s_show = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"s_testsound\00", align 1
@s_testsound = common dso_local global i8* null, align 8
@s_soundStarted = common dso_local global i32 0, align 4
@s_soundMuted = common dso_local global i32 0, align 4
@sfxHash = common dso_local global i32 0, align 4
@LOOP_HASH = common dso_local global i32 0, align 4
@s_soundtime = common dso_local global i64 0, align 8
@s_paintedtime = common dso_local global i64 0, align 8
@S_Base_Shutdown = common dso_local global i32 0, align 4
@S_Base_StartSound = common dso_local global i32 0, align 4
@S_Base_StartLocalSound = common dso_local global i32 0, align 4
@S_Base_StartBackgroundTrack = common dso_local global i32 0, align 4
@S_Base_StopBackgroundTrack = common dso_local global i32 0, align 4
@S_Base_RawSamples = common dso_local global i32 0, align 4
@S_Base_ClearLoopingSounds = common dso_local global i32 0, align 4
@S_Base_AddLoopingSound = common dso_local global i32 0, align 4
@S_Base_AddRealLoopingSound = common dso_local global i32 0, align 4
@S_Base_StopLoopingSound = common dso_local global i32 0, align 4
@S_Base_Respatialize = common dso_local global i32 0, align 4
@S_Base_UpdateEntityPosition = common dso_local global i32 0, align 4
@S_Base_Update = common dso_local global i32 0, align 4
@S_Base_DisableSounds = common dso_local global i32 0, align 4
@S_Base_BeginRegistration = common dso_local global i32 0, align 4
@S_Base_RegisterSound = common dso_local global i32 0, align 4
@S_Base_ClearSoundBuffer = common dso_local global i32 0, align 4
@S_Base_SoundInfo = common dso_local global i32 0, align 4
@S_Base_SoundList = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@S_Base_AvailableCaptureSamples = common dso_local global i32 0, align 4
@S_Base_Capture = common dso_local global i32 0, align 4
@S_Base_MasterGain = common dso_local global i32 0, align 4
@S_Base_StartCapture = common dso_local global i32 0, align 4
@S_Base_StopCapture = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @S_Base_Init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @qfalse, align 8
  store i64 %8, i64* %2, align 8
  br label %92

9:                                                ; preds = %1
  %10 = load i32, i32* @CVAR_ARCHIVE, align 4
  %11 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  store i8* %11, i8** @s_mixahead, align 8
  %12 = load i32, i32* @CVAR_ARCHIVE, align 4
  %13 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  store i8* %13, i8** @s_mixPreStep, align 8
  %14 = load i32, i32* @CVAR_CHEAT, align 4
  %15 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %14)
  store i8* %15, i8** @s_show, align 8
  %16 = load i32, i32* @CVAR_CHEAT, align 4
  %17 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  store i8* %17, i8** @s_testsound, align 8
  %18 = call i64 (...) @SNDDMA_Init()
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %9
  store i32 1, i32* @s_soundStarted, align 4
  store i32 1, i32* @s_soundMuted, align 4
  %22 = load i32, i32* @sfxHash, align 4
  %23 = load i32, i32* @LOOP_HASH, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @Com_Memset(i32 %22, i32 0, i32 %26)
  store i64 0, i64* @s_soundtime, align 8
  store i64 0, i64* @s_paintedtime, align 8
  %28 = call i32 (...) @S_Base_StopAllSounds()
  br label %31

29:                                               ; preds = %9
  %30 = load i64, i64* @qfalse, align 8
  store i64 %30, i64* %2, align 8
  br label %92

31:                                               ; preds = %21
  %32 = load i32, i32* @S_Base_Shutdown, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 24
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @S_Base_StartSound, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 23
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @S_Base_StartLocalSound, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 22
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @S_Base_StartBackgroundTrack, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 21
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @S_Base_StopBackgroundTrack, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 20
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @S_Base_RawSamples, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 19
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 18
  store i32 (...)* @S_Base_StopAllSounds, i32 (...)** %51, align 8
  %52 = load i32, i32* @S_Base_ClearLoopingSounds, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 17
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @S_Base_AddLoopingSound, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 16
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @S_Base_AddRealLoopingSound, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 15
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @S_Base_StopLoopingSound, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 14
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @S_Base_Respatialize, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 13
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @S_Base_UpdateEntityPosition, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 12
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @S_Base_Update, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 11
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @S_Base_DisableSounds, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @S_Base_BeginRegistration, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @S_Base_RegisterSound, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @S_Base_ClearSoundBuffer, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @S_Base_SoundInfo, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @S_Base_SoundList, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* @qtrue, align 8
  store i64 %91, i64* %2, align 8
  br label %92

92:                                               ; preds = %31, %29, %7
  %93 = load i64, i64* %2, align 8
  ret i64 %93
}

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i64 @SNDDMA_Init(...) #1

declare dso_local i32 @Com_Memset(i32, i32, i32) #1

declare dso_local i32 @S_Base_StopAllSounds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
