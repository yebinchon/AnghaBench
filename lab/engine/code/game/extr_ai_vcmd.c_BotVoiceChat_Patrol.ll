; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_vcmd.c_BotVoiceChat_Patrol.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_vcmd.c_BotVoiceChat_Patrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"dismissed\00", align 1
@CHAT_TELL = common dso_local global i32 0, align 4
@VOICECHAT_ONPATROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotVoiceChat_Patrol(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = call i32 @BotAI_BotInitialChat(%struct.TYPE_7__* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @CHAT_TELL, align 4
  %23 = call i32 @trap_BotEnterChat(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = load i32, i32* @VOICECHAT_ONPATROL, align 4
  %26 = call i32 @BotVoiceChatOnly(%struct.TYPE_7__* %24, i32 -1, i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = call i32 @BotSetTeamStatus(%struct.TYPE_7__* %27)
  ret void
}

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #1

declare dso_local i32 @BotVoiceChatOnly(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @BotSetTeamStatus(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
