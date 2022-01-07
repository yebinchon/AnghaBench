; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotFreeChatState.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotFreeChatState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PRT_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"chat state handle %d out of range\0A\00", align 1
@botchatstates = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid chat state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"bot_reloadcharacters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotFreeChatState(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @MAX_CLIENTS, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %7, %1
  %12 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %13 = load i32, i32* @PRT_FATAL, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 %12(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %58

16:                                               ; preds = %7
  %17 = load i32**, i32*** @botchatstates, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %25 = load i32, i32* @PRT_FATAL, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 %24(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %58

28:                                               ; preds = %16
  %29 = call i64 @LibVarGetValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @BotFreeChatFile(i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @BotNextConsoleMessage(i32 %35, i32* %3)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %44, %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @BotRemoveConsoleMessage(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @BotNextConsoleMessage(i32 %45, i32* %3)
  store i32 %46, i32* %4, align 4
  br label %37

47:                                               ; preds = %37
  %48 = load i32**, i32*** @botchatstates, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @FreeMemory(i32* %52)
  %54 = load i32**, i32*** @botchatstates, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %47, %23, %11
  ret void
}

declare dso_local i64 @LibVarGetValue(i8*) #1

declare dso_local i32 @BotFreeChatFile(i32) #1

declare dso_local i32 @BotNextConsoleMessage(i32, i32*) #1

declare dso_local i32 @BotRemoveConsoleMessage(i32, i32) #1

declare dso_local i32 @FreeMemory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
