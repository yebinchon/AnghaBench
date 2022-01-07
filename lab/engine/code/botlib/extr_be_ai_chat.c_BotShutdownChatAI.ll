; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotShutdownChatAI.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotShutdownChatAI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@botchatstates = common dso_local global i64* null, align 8
@ichatdata = common dso_local global %struct.TYPE_6__** null, align 8
@consolemessageheap = common dso_local global %struct.TYPE_6__* null, align 8
@matchtemplates = common dso_local global i32* null, align 8
@randomstrings = common dso_local global %struct.TYPE_6__* null, align 8
@synonyms = common dso_local global %struct.TYPE_6__* null, align 8
@replychats = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotShutdownChatAI() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %17, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @MAX_CLIENTS, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = load i64*, i64** @botchatstates, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @BotFreeChatState(i32 %14)
  br label %16

16:                                               ; preds = %13, %6
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %2

20:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @MAX_CLIENTS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @ichatdata, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @ichatdata, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %33, i64 %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = call i32 @FreeMemory(%struct.TYPE_6__* %39)
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @ichatdata, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @FreeMemory(%struct.TYPE_6__* %45)
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @ichatdata, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 %49
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %50, align 8
  br label %51

51:                                               ; preds = %32, %25
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %21

55:                                               ; preds = %21
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @consolemessageheap, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @consolemessageheap, align 8
  %60 = call i32 @FreeMemory(%struct.TYPE_6__* %59)
  br label %61

61:                                               ; preds = %58, %55
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @consolemessageheap, align 8
  %62 = load i32*, i32** @matchtemplates, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** @matchtemplates, align 8
  %66 = call i32 @BotFreeMatchTemplates(i32* %65)
  br label %67

67:                                               ; preds = %64, %61
  store i32* null, i32** @matchtemplates, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @randomstrings, align 8
  %69 = icmp ne %struct.TYPE_6__* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @randomstrings, align 8
  %72 = call i32 @FreeMemory(%struct.TYPE_6__* %71)
  br label %73

73:                                               ; preds = %70, %67
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @randomstrings, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @synonyms, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @synonyms, align 8
  %78 = call i32 @FreeMemory(%struct.TYPE_6__* %77)
  br label %79

79:                                               ; preds = %76, %73
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @synonyms, align 8
  %80 = load i32*, i32** @replychats, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** @replychats, align 8
  %84 = call i32 @BotFreeReplyChat(i32* %83)
  br label %85

85:                                               ; preds = %82, %79
  store i32* null, i32** @replychats, align 8
  ret void
}

declare dso_local i32 @BotFreeChatState(i32) #1

declare dso_local i32 @FreeMemory(%struct.TYPE_6__*) #1

declare dso_local i32 @BotFreeMatchTemplates(i32*) #1

declare dso_local i32 @BotFreeReplyChat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
