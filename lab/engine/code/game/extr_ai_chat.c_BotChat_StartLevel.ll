; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_StartLevel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_StartLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }

@bot_nochat = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@TIME_BETWEENCHATTING = common dso_local global i64 0, align 8
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@CHARACTERISTIC_CHAT_STARTENDLEVEL = common dso_local global i32 0, align 4
@bot_fastchat = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"level_start\00", align 1
@CHAT_ALL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChat_StartLevel(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bot_nochat, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @qfalse, align 4
  store i32 %9, i32* %2, align 4
  br label %72

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call i64 @BotIsObserver(%struct.TYPE_7__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %2, align 4
  br label %72

16:                                               ; preds = %10
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 (...) @FloatTime()
  %21 = load i64, i64* @TIME_BETWEENCHATTING, align 8
  %22 = sub nsw i64 %20, %21
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* %2, align 4
  br label %72

26:                                               ; preds = %16
  %27 = call i64 (...) @TeamPlayIsOn()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %2, align 4
  br label %72

31:                                               ; preds = %26
  %32 = load i64, i64* @gametype, align 8
  %33 = load i64, i64* @GT_TOURNAMENT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* %2, align 4
  br label %72

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CHARACTERISTIC_CHAT_STARTENDLEVEL, align 4
  %42 = call float @trap_Characteristic_BFloat(i32 %40, i32 %41, i32 0, i32 1)
  store float %42, float* %5, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bot_fastchat, i32 0, i32 0), align 4
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
  br label %72

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %37
  %53 = call i32 (...) @BotNumActivePlayers()
  %54 = icmp sle i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @qfalse, align 4
  store i32 %56, i32* %2, align 4
  br label %72

57:                                               ; preds = %52
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %63 = call i32 @EasyClientName(i32 %61, i8* %62, i32 32)
  %64 = call i32 @BotAI_BotInitialChat(%struct.TYPE_7__* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %63, i32* null)
  %65 = call i64 (...) @FloatTime()
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @CHAT_ALL, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @qtrue, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %57, %55, %49, %35, %29, %24, %14, %8
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @BotIsObserver(%struct.TYPE_7__*) #1

declare dso_local i64 @FloatTime(...) #1

declare dso_local i64 @TeamPlayIsOn(...) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local float @random(...) #1

declare dso_local i32 @BotNumActivePlayers(...) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_7__*, i8*, i32, i32*) #1

declare dso_local i32 @EasyClientName(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
