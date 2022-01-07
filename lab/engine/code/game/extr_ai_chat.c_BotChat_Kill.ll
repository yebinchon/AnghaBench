; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_Kill.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_Kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i32, i32, i32 }

@bot_nochat = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@TIME_BETWEENCHATTING = common dso_local global i64 0, align 8
@CHARACTERISTIC_CHAT_KILL = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@bot_fastchat = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@CHAT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"kill_teammate\00", align 1
@CHAT_TEAM = common dso_local global i32 0, align 4
@MOD_GAUNTLET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"kill_gauntlet\00", align 1
@MOD_RAILGUN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"kill_rail\00", align 1
@MOD_TELEFRAG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"kill_telefrag\00", align 1
@CHARACTERISTIC_CHAT_INSULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"kill_insult\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"kill_praise\00", align 1
@qtrue = common dso_local global i32 0, align 4
@MOD_KAMIKAZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChat_Kill(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bot_nochat, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @qfalse, align 4
  store i32 %9, i32* %2, align 4
  br label %153

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 (...) @FloatTime()
  %15 = load i64, i64* @TIME_BETWEENCHATTING, align 8
  %16 = sub nsw i64 %14, %15
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* %2, align 4
  br label %153

20:                                               ; preds = %10
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CHARACTERISTIC_CHAT_KILL, align 4
  %25 = call float @trap_Characteristic_BFloat(i32 %23, i32 %24, i32 0, i32 1)
  store float %25, float* %5, align 4
  %26 = load i64, i64* @gametype, align 8
  %27 = load i64, i64* @GT_TOURNAMENT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %2, align 4
  br label %153

31:                                               ; preds = %20
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bot_fastchat, i32 0, i32 0), align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = call float (...) @random()
  %36 = load float, float* %5, align 4
  %37 = fcmp ogt float %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @qfalse, align 4
  store i32 %39, i32* %2, align 4
  br label %153

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %31
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @qfalse, align 4
  store i32 %50, i32* %2, align 4
  br label %153

51:                                               ; preds = %41
  %52 = call i32 (...) @BotNumActivePlayers()
  %53 = icmp sle i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @qfalse, align 4
  store i32 %55, i32* %2, align 4
  br label %153

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = call i32 @BotValidChatPosition(%struct.TYPE_9__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @qfalse, align 4
  store i32 %61, i32* %2, align 4
  br label %153

62:                                               ; preds = %56
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = call i64 @BotVisibleEnemies(%struct.TYPE_9__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @qfalse, align 4
  store i32 %67, i32* %2, align 4
  br label %153

68:                                               ; preds = %62
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %73 = call i32 @EasyClientName(i64 %71, i8* %72, i32 32)
  %74 = load i32, i32* @CHAT_ALL, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 8
  %77 = call i64 (...) @TeamPlayIsOn()
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %68
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @BotSameTeam(%struct.TYPE_9__* %80, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %89 = call i32 @BotAI_BotInitialChat(%struct.TYPE_9__* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %88, i32* null)
  %90 = load i32, i32* @CHAT_TEAM, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 8
  br label %148

93:                                               ; preds = %79, %68
  %94 = call i64 (...) @TeamPlayIsOn()
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* @qfalse, align 4
  store i32 %97, i32* %2, align 4
  br label %153

98:                                               ; preds = %93
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MOD_GAUNTLET, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %107 = call i32 @BotAI_BotInitialChat(%struct.TYPE_9__* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %106, i32* null)
  br label %147

108:                                              ; preds = %98
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @MOD_RAILGUN, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %117 = call i32 @BotAI_BotInitialChat(%struct.TYPE_9__* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %116, i32* null)
  br label %146

118:                                              ; preds = %108
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @MOD_TELEFRAG, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %127 = call i32 @BotAI_BotInitialChat(%struct.TYPE_9__* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %126, i32* null)
  br label %145

128:                                              ; preds = %118
  %129 = call float (...) @random()
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CHARACTERISTIC_CHAT_INSULT, align 4
  %134 = call float @trap_Characteristic_BFloat(i32 %132, i32 %133, i32 0, i32 1)
  %135 = fcmp olt float %129, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %139 = call i32 @BotAI_BotInitialChat(%struct.TYPE_9__* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %138, i32* null)
  br label %144

140:                                              ; preds = %128
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %143 = call i32 @BotAI_BotInitialChat(%struct.TYPE_9__* %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %142, i32* null)
  br label %144

144:                                              ; preds = %140, %136
  br label %145

145:                                              ; preds = %144, %124
  br label %146

146:                                              ; preds = %145, %114
  br label %147

147:                                              ; preds = %146, %104
  br label %148

148:                                              ; preds = %147, %86
  %149 = call i64 (...) @FloatTime()
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* @qtrue, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %148, %96, %66, %60, %54, %49, %38, %29, %18, %8
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i64 @FloatTime(...) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local float @random(...) #1

declare dso_local i32 @BotNumActivePlayers(...) #1

declare dso_local i32 @BotValidChatPosition(%struct.TYPE_9__*) #1

declare dso_local i64 @BotVisibleEnemies(%struct.TYPE_9__*) #1

declare dso_local i32 @EasyClientName(i64, i8*, i32) #1

declare dso_local i64 @TeamPlayIsOn(...) #1

declare dso_local i64 @BotSameTeam(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_9__*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
