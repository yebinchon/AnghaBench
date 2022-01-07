; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotRandomOpponentName.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotRandomOpponentName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@BotRandomOpponentName.name = internal global [32 x i8] zeroinitializer, align 16
@level = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@TEAM_SPECTATOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BotRandomOpponentName(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %11 = load i32, i32* @MAX_INFO_STRING, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @MAX_CLIENTS, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 0, i32* %18, align 16
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %63, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @level, i32 0, i32 0), align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %63

30:                                               ; preds = %23
  %31 = load i64, i64* @CS_PLAYERS, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = trunc i64 %12 to i32
  %36 = call i32 @trap_GetConfigstring(i64 %34, i8* %14, i32 %35)
  %37 = call i32 @strlen(i8* %14)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = call i8* @Info_ValueForKey(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @strlen(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %30
  br label %63

44:                                               ; preds = %39
  %45 = call i8* @Info_ValueForKey(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i64 @atoi(i8* %45)
  %47 = load i64, i64* @TEAM_SPECTATOR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %63

50:                                               ; preds = %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @BotSameTeam(%struct.TYPE_5__* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %63

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %17, i64 %59
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %56, %55, %49, %43, %29
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %19

66:                                               ; preds = %19
  %67 = call i32 (...) @random()
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %86, %66
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %17, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @EasyClientName(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @BotRandomOpponentName.name, i64 0, i64 0), i32 32)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @BotRandomOpponentName.name, i64 0, i64 0), i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %93

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %70

89:                                               ; preds = %70
  %90 = getelementptr inbounds i32, i32* %17, i64 0
  %91 = load i32, i32* %90, align 16
  %92 = call i32 @EasyClientName(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @BotRandomOpponentName.name, i64 0, i64 0), i32 32)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @BotRandomOpponentName.name, i64 0, i64 0), i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %93

93:                                               ; preds = %89, %79
  %94 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i8*, i8** %2, align 8
  ret i8* %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_GetConfigstring(i64, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local i64 @BotSameTeam(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @random(...) #2

declare dso_local i32 @EasyClientName(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
