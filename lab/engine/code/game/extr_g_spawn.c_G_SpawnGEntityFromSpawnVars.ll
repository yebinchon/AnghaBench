; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_spawn.c_G_SpawnGEntityFromSpawnVars.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_spawn.c_G_SpawnGEntityFromSpawnVars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32** }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@G_SpawnGEntityFromSpawnVars.gametypeNames = internal global [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"ffa\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tournament\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"team\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ctf\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"oneflag\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"obelisk\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"harvester\00", align 1
@level = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@g_gametype = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"notsingle\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@GT_TEAM = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"notteam\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"notfree\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"notq3a\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"gametype\00", align 1
@GT_FFA = common dso_local global i64 0, align 8
@GT_MAX_GAME_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @G_SpawnGEntityFromSpawnVars() #0 {
  %1 = alloca %struct.TYPE_15__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = call %struct.TYPE_15__* (...) @G_Spawn()
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %3, align 8
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %29, %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 0), align 8
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 1), align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 1), align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = call i32 @G_ParseField(i32 %19, i32 %26, %struct.TYPE_15__* %27)
  br label %29

29:                                               ; preds = %12
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %8

32:                                               ; preds = %8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_gametype, i32 0, i32 0), align 8
  %34 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = call i32 @G_SpawnInt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32* %2)
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i32 (...) @ADJUST_AREAPORTAL()
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = call i32 @G_FreeEntity(%struct.TYPE_15__* %42)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %1, align 8
  br label %129

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_gametype, i32 0, i32 0), align 8
  %47 = load i64, i64* @GT_TEAM, align 8
  %48 = icmp uge i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = call i32 @G_SpawnInt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32* %2)
  %51 = load i32, i32* %2, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = call i32 (...) @ADJUST_AREAPORTAL()
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = call i32 @G_FreeEntity(%struct.TYPE_15__* %55)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %1, align 8
  br label %129

57:                                               ; preds = %49
  br label %67

58:                                               ; preds = %45
  %59 = call i32 @G_SpawnInt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32* %2)
  %60 = load i32, i32* %2, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call i32 (...) @ADJUST_AREAPORTAL()
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %65 = call i32 @G_FreeEntity(%struct.TYPE_15__* %64)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %1, align 8
  br label %129

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %57
  %68 = call i32 @G_SpawnInt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32* %2)
  %69 = load i32, i32* %2, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = call i32 (...) @ADJUST_AREAPORTAL()
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = call i32 @G_FreeEntity(%struct.TYPE_15__* %73)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %1, align 8
  br label %129

75:                                               ; preds = %67
  %76 = call i64 @G_SpawnString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32* null, i8** %5)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_gametype, i32 0, i32 0), align 8
  %80 = load i64, i64* @GT_FFA, align 8
  %81 = icmp uge i64 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_gametype, i32 0, i32 0), align 8
  %84 = load i64, i64* @GT_MAX_GAME_TYPE, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_gametype, i32 0, i32 0), align 8
  %88 = getelementptr inbounds [8 x i8*], [8 x i8*]* @G_SpawnGEntityFromSpawnVars.gametypeNames, i64 0, i64 %87
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %6, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i8* @strstr(i8* %90, i8* %91)
  store i8* %92, i8** %4, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %86
  %96 = call i32 (...) @ADJUST_AREAPORTAL()
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = call i32 @G_FreeEntity(%struct.TYPE_15__* %97)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %1, align 8
  br label %129

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %82, %78
  br label %101

101:                                              ; preds = %100, %75
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @VectorCopy(i32 %105, i32 %110)
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @VectorCopy(i32 %115, i32 %119)
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %122 = call i32 @G_CallSpawn(%struct.TYPE_15__* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %101
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %126 = call i32 @G_FreeEntity(%struct.TYPE_15__* %125)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %1, align 8
  br label %129

127:                                              ; preds = %101
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_15__* %128, %struct.TYPE_15__** %1, align 8
  br label %129

129:                                              ; preds = %127, %124, %95, %71, %62, %53, %40
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  ret %struct.TYPE_15__* %130
}

declare dso_local %struct.TYPE_15__* @G_Spawn(...) #1

declare dso_local i32 @G_ParseField(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @G_SpawnInt(i8*, i8*, i32*) #1

declare dso_local i32 @ADJUST_AREAPORTAL(...) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_15__*) #1

declare dso_local i64 @G_SpawnString(i8*, i32*, i8**) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @G_CallSpawn(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
