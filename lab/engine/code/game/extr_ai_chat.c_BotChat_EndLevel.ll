; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_EndLevel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_EndLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }

@bot_nochat = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@TIME_BETWEENCHATTING = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@CHARACTERISTIC_CHAT_STARTENDLEVEL = common dso_local global i32 0, align 4
@bot_fastchat = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"level_end_victory\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"[invalid var]\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"level_end_lose\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"level_end\00", align 1
@CHAT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChat_EndLevel(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bot_nochat, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @qfalse, align 4
  store i32 %9, i32* %2, align 4
  br label %111

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i64 @BotIsObserver(%struct.TYPE_10__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %2, align 4
  br label %111

16:                                               ; preds = %10
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 (...) @FloatTime()
  %21 = load i64, i64* @TIME_BETWEENCHATTING, align 8
  %22 = sub nsw i64 %20, %21
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* %2, align 4
  br label %111

26:                                               ; preds = %16
  %27 = call i64 (...) @TeamPlayIsOn()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @qtrue, align 4
  store i32 %30, i32* %2, align 4
  br label %111

31:                                               ; preds = %26
  %32 = load i64, i64* @gametype, align 8
  %33 = load i64, i64* @GT_TOURNAMENT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* %2, align 4
  br label %111

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CHARACTERISTIC_CHAT_STARTENDLEVEL, align 4
  %42 = call float @trap_Characteristic_BFloat(i32 %40, i32 %41, i32 0, i32 1)
  store float %42, float* %5, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bot_fastchat, i32 0, i32 0), align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %37
  %46 = call float (...) @random()
  %47 = load float, float* %5, align 4
  %48 = fcmp ogt float %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @qfalse, align 4
  store i32 %50, i32* %2, align 4
  br label %111

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %37
  %53 = call i32 (...) @BotNumActivePlayers()
  %54 = icmp sle i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @qfalse, align 4
  store i32 %56, i32* %2, align 4
  br label %111

57:                                               ; preds = %52
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = call i64 @BotIsFirstInRankings(%struct.TYPE_10__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %67 = call i32 @EasyClientName(i32 %65, i8* %66, i32 32)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = call i32 @BotRandomOpponentName(%struct.TYPE_10__* %68)
  %70 = call i8* (...) @BotLastClientInRankings()
  %71 = call i32 (...) @BotMapTitle()
  %72 = call i32 @BotAI_BotInitialChat(%struct.TYPE_10__* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %70, i32 %71, i32* null)
  br label %103

73:                                               ; preds = %57
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = call i64 @BotIsLastInRankings(%struct.TYPE_10__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %83 = call i32 @EasyClientName(i32 %81, i8* %82, i32 32)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = call i32 @BotRandomOpponentName(%struct.TYPE_10__* %84)
  %86 = call i8* (...) @BotFirstClientInRankings()
  %87 = call i32 (...) @BotMapTitle()
  %88 = call i32 @BotAI_BotInitialChat(%struct.TYPE_10__* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %85, i8* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32* null)
  br label %102

89:                                               ; preds = %73
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %95 = call i32 @EasyClientName(i32 %93, i8* %94, i32 32)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = call i32 @BotRandomOpponentName(%struct.TYPE_10__* %96)
  %98 = call i8* (...) @BotFirstClientInRankings()
  %99 = call i8* (...) @BotLastClientInRankings()
  %100 = call i32 (...) @BotMapTitle()
  %101 = call i32 @BotAI_BotInitialChat(%struct.TYPE_10__* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %97, i8* %98, i8* %99, i32 %100, i32* null)
  br label %102

102:                                              ; preds = %89, %77
  br label %103

103:                                              ; preds = %102, %61
  %104 = call i64 (...) @FloatTime()
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* @CHAT_ALL, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @qtrue, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %103, %55, %49, %35, %29, %24, %14, %8
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @BotIsObserver(%struct.TYPE_10__*) #1

declare dso_local i64 @FloatTime(...) #1

declare dso_local i64 @TeamPlayIsOn(...) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local float @random(...) #1

declare dso_local i32 @BotNumActivePlayers(...) #1

declare dso_local i64 @BotIsFirstInRankings(%struct.TYPE_10__*) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_10__*, i8*, i32, i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @EasyClientName(i32, i8*, i32) #1

declare dso_local i32 @BotRandomOpponentName(%struct.TYPE_10__*) #1

declare dso_local i8* @BotLastClientInRankings(...) #1

declare dso_local i32 @BotMapTitle(...) #1

declare dso_local i64 @BotIsLastInRankings(%struct.TYPE_10__*) #1

declare dso_local i8* @BotFirstClientInRankings(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
