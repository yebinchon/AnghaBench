; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotMatch_TaskPreference.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotMatch_TaskPreference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@MAX_NETNAME = common dso_local global i32 0, align 4
@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@NETNAME = common dso_local global i32 0, align 4
@TEAMTP_ATTACKER = common dso_local global i32 0, align 4
@TEAMTP_DEFENDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"keepinmind\00", align 1
@CHAT_TELL = common dso_local global i32 0, align 4
@VOICECHAT_YES = common dso_local global i32 0, align 4
@ACTION_AFFIRMATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotMatch_TaskPreference(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %11 = load i32, i32* @MAX_NETNAME, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = trunc i64 %12 to i32
  %22 = call i32 @ClientName(i32 %20, i8* %14, i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @Q_stricmp(i8* %14, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %93

29:                                               ; preds = %2
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = load i32, i32* @NETNAME, align 4
  %32 = trunc i64 %16 to i32
  %33 = call i32 @trap_BotMatchVariable(%struct.TYPE_11__* %30, i32 %31, i8* %17, i32 %32)
  %34 = call i32 @ClientFromName(i8* %17)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %93

38:                                               ; preds = %29
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @BotGetTeamMateTaskPreference(%struct.TYPE_10__* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %68 [
    i32 129, label %45
    i32 130, label %53
    i32 128, label %61
  ]

45:                                               ; preds = %38
  %46 = load i32, i32* @TEAMTP_ATTACKER, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @TEAMTP_DEFENDER, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %68

53:                                               ; preds = %38
  %54 = load i32, i32* @TEAMTP_DEFENDER, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @TEAMTP_ATTACKER, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %68

61:                                               ; preds = %38
  %62 = load i32, i32* @TEAMTP_ATTACKER, align 4
  %63 = load i32, i32* @TEAMTP_DEFENDER, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %38, %61, %53, %45
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @BotSetTeamMateTaskPreference(%struct.TYPE_10__* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = trunc i64 %16 to i32
  %75 = call i32 @EasyClientName(i32 %73, i8* %17, i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = call i32 @BotAI_BotInitialChat(%struct.TYPE_10__* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %17, i32* null)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @CHAT_TELL, align 4
  %83 = call i32 @trap_BotEnterChat(i32 %80, i32 %81, i32 %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @VOICECHAT_YES, align 4
  %87 = call i32 @BotVoiceChatOnly(%struct.TYPE_10__* %84, i32 %85, i32 %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ACTION_AFFIRMATIVE, align 4
  %92 = call i32 @trap_EA_Action(i32 %90, i32 %91)
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %68, %37, %28
  %94 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %10, align 4
  switch i32 %95, label %97 [
    i32 0, label %96
    i32 1, label %96
  ]

96:                                               ; preds = %93, %93
  ret void

97:                                               ; preds = %93
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i64 @Q_stricmp(i8*, i32) #2

declare dso_local i32 @trap_BotMatchVariable(%struct.TYPE_11__*, i32, i8*, i32) #2

declare dso_local i32 @ClientFromName(i8*) #2

declare dso_local i32 @BotGetTeamMateTaskPreference(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @BotSetTeamMateTaskPreference(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @EasyClientName(i32, i8*, i32) #2

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_10__*, i8*, i8*, i32*) #2

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #2

declare dso_local i32 @BotVoiceChatOnly(%struct.TYPE_10__*, i32, i32) #2

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
