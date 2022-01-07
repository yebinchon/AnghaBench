; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotMatch_WhatAreYouDoing.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotMatch_WhatAreYouDoing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"helping\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"accompanying\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"defending\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"gettingitem\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"killing\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"camping\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"patrolling\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"capturingflag\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"rushingbase\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"returningflag\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"roaming\00", align 1
@NETNAME = common dso_local global i32 0, align 4
@CHAT_TELL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotMatch_WhatAreYouDoing(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @BotAddressedToBot(%struct.TYPE_7__* %17, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %99

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %84 [
    i32 128, label %26
    i32 129, label %34
    i32 137, label %42
    i32 135, label %51
    i32 133, label %60
    i32 139, label %69
    i32 138, label %69
    i32 132, label %72
    i32 136, label %75
    i32 130, label %78
    i32 131, label %81
  ]

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = trunc i64 %11 to i32
  %31 = call i32 @EasyClientName(i32 %29, i8* %13, i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %13, i8* null)
  br label %87

34:                                               ; preds = %22
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = trunc i64 %11 to i32
  %39 = call i32 @EasyClientName(i32 %37, i8* %13, i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_7__* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %13, i8* null)
  br label %87

42:                                               ; preds = %22
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = trunc i64 %15 to i32
  %48 = call i32 @trap_BotGoalName(i32 %46, i8* %16, i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_7__* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %16, i8* null)
  br label %87

51:                                               ; preds = %22
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = trunc i64 %15 to i32
  %57 = call i32 @trap_BotGoalName(i32 %55, i8* %16, i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_7__* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %16, i8* null)
  br label %87

60:                                               ; preds = %22
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = trunc i64 %11 to i32
  %66 = call i32 @ClientName(i32 %64, i8* %13, i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_7__* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %13, i8* null)
  br label %87

69:                                               ; preds = %22, %22
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_7__* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* null)
  br label %87

72:                                               ; preds = %22
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_7__* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* null)
  br label %87

75:                                               ; preds = %22
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_7__* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* null)
  br label %87

78:                                               ; preds = %22
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_7__* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* null)
  br label %87

81:                                               ; preds = %22
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_7__* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* null)
  br label %87

84:                                               ; preds = %22
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_7__* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* null)
  br label %87

87:                                               ; preds = %84, %81, %78, %75, %72, %69, %60, %51, %42, %34, %26
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* @NETNAME, align 4
  %90 = trunc i64 %11 to i32
  %91 = call i32 @trap_BotMatchVariable(i32* %88, i32 %89, i8* %13, i32 %90)
  %92 = call i32 @ClientFromName(i8* %13)
  store i32 %92, i32* %8, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @CHAT_TELL, align 4
  %98 = call i32 @trap_BotEnterChat(i32 %95, i32 %96, i32 %97)
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %87, %21
  %100 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %9, align 4
  switch i32 %101, label %103 [
    i32 0, label %102
    i32 1, label %102
  ]

102:                                              ; preds = %99, %99
  ret void

103:                                              ; preds = %99
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BotAddressedToBot(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @EasyClientName(i32, i8*, i32) #2

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_7__*, i8*, i8*, ...) #2

declare dso_local i32 @trap_BotGoalName(i32, i8*, i32) #2

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i32 @trap_BotMatchVariable(i32*, i32, i8*, i32) #2

declare dso_local i32 @ClientFromName(i8*) #2

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
