; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_vcmd.c_BotVoiceChat_WantOnOffense.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_vcmd.c_BotVoiceChat_WantOnOffense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@MAX_NETNAME = common dso_local global i32 0, align 4
@TEAMTP_DEFENDER = common dso_local global i32 0, align 4
@TEAMTP_ATTACKER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"keepinmind\00", align 1
@CHAT_TELL = common dso_local global i32 0, align 4
@VOICECHAT_YES = common dso_local global i32 0, align 4
@ACTION_AFFIRMATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotVoiceChat_WantOnOffense(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @MAX_NETNAME, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @BotGetTeamMateTaskPreference(%struct.TYPE_7__* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @TEAMTP_DEFENDER, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @TEAMTP_ATTACKER, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @BotSetTeamMateTaskPreference(%struct.TYPE_7__* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = trunc i64 %11 to i32
  %30 = call i32 @EasyClientName(i32 %28, i8* %13, i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = call i32 @BotAI_BotInitialChat(%struct.TYPE_7__* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %13, i32* null)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @CHAT_TELL, align 4
  %38 = call i32 @trap_BotEnterChat(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @VOICECHAT_YES, align 4
  %42 = call i32 @BotVoiceChatOnly(%struct.TYPE_7__* %39, i32 %40, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ACTION_AFFIRMATIVE, align 4
  %47 = call i32 @trap_EA_Action(i32 %45, i32 %46)
  %48 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %48)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BotGetTeamMateTaskPreference(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @BotSetTeamMateTaskPreference(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @EasyClientName(i32, i8*, i32) #2

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_7__*, i8*, i8*, i32*) #2

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #2

declare dso_local i32 @BotVoiceChatOnly(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @trap_EA_Action(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
