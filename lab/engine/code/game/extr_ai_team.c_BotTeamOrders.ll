; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_team.c_BotTeamOrders.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_team.c_BotTeamOrders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@MAX_INFO_STRING = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@TEAM_SPECTATOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTeamOrders(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @MAX_CLIENTS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @MAX_INFO_STRING, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %52, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  %20 = load i64, i64* @CS_PLAYERS, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = trunc i64 %13 to i32
  %25 = call i32 @trap_GetConfigstring(i64 %23, i8* %14, i32 %24)
  %26 = call i32 @strlen(i8* %14)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = call i8* @Info_ValueForKey(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @strlen(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %19
  br label %52

33:                                               ; preds = %28
  %34 = call i8* @Info_ValueForKey(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i64 @atoi(i8* %34)
  %36 = load i64, i64* @TEAM_SPECTATOR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %52

39:                                               ; preds = %33
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @BotSameTeam(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %11, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %44, %39
  br label %52

52:                                               ; preds = %51, %38, %32
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %15

55:                                               ; preds = %15
  %56 = load i32, i32* %5, align 4
  switch i32 %56, label %74 [
    i32 1, label %57
    i32 2, label %58
    i32 3, label %59
    i32 4, label %62
    i32 5, label %68
  ]

57:                                               ; preds = %55
  br label %95

58:                                               ; preds = %55
  br label %95

59:                                               ; preds = %55
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @BotCreateGroup(i32* %60, i32* %11, i32 2)
  br label %95

62:                                               ; preds = %55
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @BotCreateGroup(i32* %63, i32* %11, i32 2)
  %65 = load i32*, i32** %2, align 8
  %66 = getelementptr inbounds i32, i32* %11, i64 2
  %67 = call i32 @BotCreateGroup(i32* %65, i32* %66, i32 2)
  br label %95

68:                                               ; preds = %55
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @BotCreateGroup(i32* %69, i32* %11, i32 2)
  %71 = load i32*, i32** %2, align 8
  %72 = getelementptr inbounds i32, i32* %11, i64 2
  %73 = call i32 @BotCreateGroup(i32* %71, i32* %72, i32 3)
  br label %95

74:                                               ; preds = %55
  %75 = load i32, i32* %5, align 4
  %76 = icmp sle i32 %75, 10
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sdiv i32 %80, 2
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load i32*, i32** %2, align 8
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %11, i64 %87
  %89 = call i32 @BotCreateGroup(i32* %84, i32* %88, i32 2)
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %78

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93, %74
  br label %95

95:                                               ; preds = %94, %68, %62, %59, %58, %57
  %96 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %96)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_GetConfigstring(i64, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local i64 @BotSameTeam(i32*, i32) #2

declare dso_local i32 @BotCreateGroup(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
