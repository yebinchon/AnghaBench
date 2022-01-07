; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_spawn.c_SP_worldspawn.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_spawn.c_SP_worldspawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"worldspawn\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"SP_worldspawn: The first entity isn't 'worldspawn'\00", align 1
@CS_GAME_VERSION = common dso_local global i32 0, align 4
@GAME_VERSION = common dso_local global i8* null, align 8
@CS_LEVEL_START_TIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@level = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"music\00", align 1
@CS_MUSIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@CS_MESSAGE = common dso_local global i32 0, align 4
@CS_MOTD = common dso_local global i32 0, align 4
@g_motd = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"800\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"g_gravity\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"enableDust\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"g_enableDust\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"enableBreath\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"g_enableBreath\00", align 1
@ENTITYNUM_WORLD = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_13__* null, align 8
@ENTITYNUM_NONE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"nothing\00", align 1
@CS_WARMUP = common dso_local global i32 0, align 4
@g_restarted = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"g_restarted\00", align 1
@g_doWarmup = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"Warmup:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SP_worldspawn() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @G_SpawnString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %1)
  %3 = load i8*, i8** %1, align 8
  %4 = call i64 @Q_stricmp(i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @G_Error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, i32* @CS_GAME_VERSION, align 4
  %10 = load i8*, i8** @GAME_VERSION, align 8
  %11 = call i32 @trap_SetConfigstring(i32 %9, i8* %10)
  %12 = load i32, i32* @CS_LEVEL_START_TIME, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 0), align 4
  %14 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %13)
  %15 = call i32 @trap_SetConfigstring(i32 %12, i8* %14)
  %16 = call i32 @G_SpawnString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %1)
  %17 = load i32, i32* @CS_MUSIC, align 4
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 @trap_SetConfigstring(i32 %17, i8* %18)
  %20 = call i32 @G_SpawnString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %1)
  %21 = load i32, i32* @CS_MESSAGE, align 4
  %22 = load i8*, i8** %1, align 8
  %23 = call i32 @trap_SetConfigstring(i32 %21, i8* %22)
  %24 = load i32, i32* @CS_MOTD, align 4
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_motd, i32 0, i32 0), align 8
  %26 = call i32 @trap_SetConfigstring(i32 %24, i8* %25)
  %27 = call i32 @G_SpawnString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %1)
  %28 = load i8*, i8** %1, align 8
  %29 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %28)
  %30 = call i32 @G_SpawnString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %1)
  %31 = load i8*, i8** %1, align 8
  %32 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %31)
  %33 = call i32 @G_SpawnString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %1)
  %34 = load i8*, i8** %1, align 8
  %35 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %34)
  %36 = load i64, i64* @ENTITYNUM_WORLD, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_entities, align 8
  %38 = load i64, i64* @ENTITYNUM_WORLD, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i64 %36, i64* %41, align 8
  %42 = load i64, i64* @ENTITYNUM_NONE, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_entities, align 8
  %44 = load i64, i64* @ENTITYNUM_WORLD, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i64 %42, i64* %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_entities, align 8
  %49 = load i64, i64* @ENTITYNUM_WORLD, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %51, align 8
  %52 = load i64, i64* @ENTITYNUM_NONE, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_entities, align 8
  %54 = load i64, i64* @ENTITYNUM_NONE, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i64 %52, i64* %57, align 8
  %58 = load i64, i64* @ENTITYNUM_NONE, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_entities, align 8
  %60 = load i64, i64* @ENTITYNUM_NONE, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i64 %58, i64* %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_entities, align 8
  %65 = load i64, i64* @ENTITYNUM_NONE, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %67, align 8
  %68 = load i32, i32* @CS_WARMUP, align 4
  %69 = call i32 @trap_SetConfigstring(i32 %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_restarted, i32 0, i32 0), align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %8
  %73 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 1), align 4
  br label %84

74:                                               ; preds = %8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @g_doWarmup, i32 0, i32 0), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 1), align 4
  %78 = load i32, i32* @CS_WARMUP, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 1), align 4
  %80 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = call i32 @trap_SetConfigstring(i32 %78, i8* %80)
  %82 = call i32 @G_LogPrintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %83

83:                                               ; preds = %77, %74
  br label %84

84:                                               ; preds = %83, %72
  ret void
}

declare dso_local i32 @G_SpawnString(i8*, i8*, i8**) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @G_Error(i8*) #1

declare dso_local i32 @trap_SetConfigstring(i32, i8*) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i32 @G_LogPrintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
