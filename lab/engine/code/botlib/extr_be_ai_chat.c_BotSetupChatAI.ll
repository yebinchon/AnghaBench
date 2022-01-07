; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotSetupChatAI.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotSetupChatAI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

@.str = private unnamed_addr constant [8 x i8] c"synfile\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"syn.c\00", align 1
@synonyms = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"rndfile\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rnd.c\00", align 1
@randomstrings = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"matchfile\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"match.c\00", align 1
@matchtemplates = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"nochat\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"rchatfile\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"rchat.c\00", align 1
@replychats = common dso_local global i32 0, align 4
@BLERR_NOERROR = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotSetupChatAI() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @LibVarString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 @BotLoadSynonyms(i8* %3)
  store i32 %4, i32* @synonyms, align 4
  %5 = call i8* @LibVarString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @BotLoadRandomStrings(i8* %6)
  store i32 %7, i32* @randomstrings, align 4
  %8 = call i8* @LibVarString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 @BotLoadMatchTemplates(i8* %9)
  store i32 %10, i32* @matchtemplates, align 4
  %11 = call i32 @LibVarValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %0
  %14 = call i8* @LibVarString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @BotLoadReplyChat(i8* %15)
  store i32 %16, i32* @replychats, align 4
  br label %17

17:                                               ; preds = %13, %0
  %18 = call i32 (...) @InitConsoleMessageHeap()
  %19 = load i32, i32* @BLERR_NOERROR, align 4
  ret i32 %19
}

declare dso_local i8* @LibVarString(i8*, i8*) #1

declare dso_local i32 @BotLoadSynonyms(i8*) #1

declare dso_local i32 @BotLoadRandomStrings(i8*) #1

declare dso_local i32 @BotLoadMatchTemplates(i8*) #1

declare dso_local i32 @LibVarValue(i8*, i8*) #1

declare dso_local i32 @BotLoadReplyChat(i8*) #1

declare dso_local i32 @InitConsoleMessageHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
