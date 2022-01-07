; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_HitNoKill.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_HitNoKill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }

@bot_nochat = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@TIME_BETWEENCHATTING = common dso_local global i64 0, align 8
@CHARACTERISTIC_CHAT_HITNOKILL = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@bot_fastchat = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@g_entities = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"hit_nokill\00", align 1
@CHAT_ALL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChat_HitNoKill(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bot_nochat, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @qfalse, align 4
  store i32 %11, i32* %2, align 4
  br label %104

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 (...) @FloatTime()
  %17 = load i64, i64* @TIME_BETWEENCHATTING, align 8
  %18 = sub nsw i64 %16, %17
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @qfalse, align 4
  store i32 %21, i32* %2, align 4
  br label %104

22:                                               ; preds = %12
  %23 = call i32 (...) @BotNumActivePlayers()
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %2, align 4
  br label %104

27:                                               ; preds = %22
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CHARACTERISTIC_CHAT_HITNOKILL, align 4
  %32 = call float @trap_Characteristic_BFloat(i32 %30, i32 %31, i32 0, i32 1)
  store float %32, float* %6, align 4
  %33 = call i64 (...) @TeamPlayIsOn()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* %2, align 4
  br label %104

37:                                               ; preds = %27
  %38 = load i64, i64* @gametype, align 8
  %39 = load i64, i64* @GT_TOURNAMENT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @qfalse, align 4
  store i32 %42, i32* %2, align 4
  br label %104

43:                                               ; preds = %37
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bot_fastchat, i32 0, i32 0), align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = call float (...) @random()
  %48 = fpext float %47 to double
  %49 = load float, float* %6, align 4
  %50 = fpext float %49 to double
  %51 = fmul double %50, 5.000000e-01
  %52 = fcmp ogt double %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @qfalse, align 4
  store i32 %54, i32* %2, align 4
  br label %104

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = call i32 @BotValidChatPosition(%struct.TYPE_11__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @qfalse, align 4
  store i32 %61, i32* %2, align 4
  br label %104

62:                                               ; preds = %56
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = call i64 @BotVisibleEnemies(%struct.TYPE_11__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @qfalse, align 4
  store i32 %67, i32* %2, align 4
  br label %104

68:                                               ; preds = %62
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @BotEntityInfo(i64 %71, i32* %7)
  %73 = call i64 @EntityIsShooting(i32* %7)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @qfalse, align 4
  store i32 %76, i32* %2, align 4
  br label %104

77:                                               ; preds = %68
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %82 = call i32 @ClientName(i64 %80, i8* %81, i32 32)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_entities, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @BotWeaponNameForMeansOfDeath(i32 %91)
  store i8* %92, i8** %5, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @BotAI_BotInitialChat(%struct.TYPE_11__* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %94, i8* %95, i32* null)
  %97 = call i64 (...) @FloatTime()
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* @CHAT_ALL, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @qtrue, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %77, %75, %66, %60, %53, %41, %35, %25, %20, %10
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @FloatTime(...) #1

declare dso_local i32 @BotNumActivePlayers(...) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i64 @TeamPlayIsOn(...) #1

declare dso_local float @random(...) #1

declare dso_local i32 @BotValidChatPosition(%struct.TYPE_11__*) #1

declare dso_local i64 @BotVisibleEnemies(%struct.TYPE_11__*) #1

declare dso_local i32 @BotEntityInfo(i64, i32*) #1

declare dso_local i64 @EntityIsShooting(i32*) #1

declare dso_local i32 @ClientName(i64, i8*, i32) #1

declare dso_local i8* @BotWeaponNameForMeansOfDeath(i32) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_11__*, i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
