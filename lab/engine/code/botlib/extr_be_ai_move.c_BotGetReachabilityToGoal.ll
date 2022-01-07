; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotGetReachabilityToGoal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotGetReachabilityToGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_8__ = type { i32 }
%struct.bot_avoidspot_s = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }

@TFL_DONOTENTER = common dso_local global i32 0, align 4
@MOVERESULT_BLOCKEDBYAVOIDSPOT = common dso_local global i32 0, align 4
@AVOIDREACH_TRIES = common dso_local global i32 0, align 4
@MAX_AVOIDREACH = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@botDeveloper = common dso_local global i64 0, align 8
@botimport = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotGetReachabilityToGoal(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, float* %5, i32* %6, %struct.TYPE_8__* %7, i32 %8, %struct.bot_avoidspot_s* %9, i32 %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.bot_avoidspot_s*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %14, align 4
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store float* %5, float** %19, align 8
  store i32* %6, i32** %20, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %21, align 8
  store i32 %8, i32* %22, align 4
  store %struct.bot_avoidspot_s* %9, %struct.bot_avoidspot_s** %23, align 8
  store i32 %10, i32* %24, align 4
  store i32* %11, i32** %25, align 8
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %12
  store i32 0, i32* %13, align 4
  br label %126

35:                                               ; preds = %12
  %36 = load i32, i32* %15, align 4
  %37 = call i64 @AAS_AreaDoNotEnter(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @AAS_AreaDoNotEnter(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39, %35
  %46 = load i32, i32* @TFL_DONOTENTER, align 4
  %47 = load i32, i32* %22, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %22, align 4
  br label %49

49:                                               ; preds = %45, %39
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @AAS_NextAreaReachability(i32 %50, i32 0)
  store i32 %51, i32* %30, align 4
  br label %52

52:                                               ; preds = %120, %49
  %53 = load i32, i32* %30, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %124

55:                                               ; preds = %52
  %56 = load i32, i32* %30, align 4
  %57 = call i32 @AAS_ReachabilityFromNum(i32 %56, %struct.TYPE_9__* %31)
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %17, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %120

69:                                               ; preds = %63, %55
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %22, align 4
  %72 = call i32 @BotValidTravel(i32 %70, %struct.TYPE_9__* %31, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %120

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %22, align 4
  %84 = call i32 @AAS_AreaTravelTimeToGoalArea(i32 %77, i32 %79, i32 %82, i32 %83)
  store i32 %84, i32* %27, align 4
  %85 = load i32, i32* %27, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %75
  br label %120

88:                                               ; preds = %75
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.bot_avoidspot_s*, %struct.bot_avoidspot_s** %23, align 8
  %91 = load i32, i32* %24, align 4
  %92 = call i64 @BotAvoidSpots(i32 %89, %struct.TYPE_9__* %31, %struct.bot_avoidspot_s* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load i32*, i32** %25, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* @MOVERESULT_BLOCKEDBYAVOIDSPOT, align 4
  %99 = load i32*, i32** %25, align 8
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %98
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %97, %94
  br label %120

103:                                              ; preds = %88
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %27, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %27, align 4
  %110 = load i32, i32* %28, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load i32, i32* %27, align 4
  %114 = load i32, i32* %28, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112, %103
  %117 = load i32, i32* %27, align 4
  store i32 %117, i32* %28, align 4
  %118 = load i32, i32* %30, align 4
  store i32 %118, i32* %29, align 4
  br label %119

119:                                              ; preds = %116, %112
  br label %120

120:                                              ; preds = %119, %102, %87, %74, %68
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %30, align 4
  %123 = call i32 @AAS_NextAreaReachability(i32 %121, i32 %122)
  store i32 %123, i32* %30, align 4
  br label %52

124:                                              ; preds = %52
  %125 = load i32, i32* %29, align 4
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %124, %34
  %127 = load i32, i32* %13, align 4
  ret i32 %127
}

declare dso_local i64 @AAS_AreaDoNotEnter(i32) #1

declare dso_local i32 @AAS_NextAreaReachability(i32, i32) #1

declare dso_local i32 @AAS_ReachabilityFromNum(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @BotValidTravel(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @AAS_AreaTravelTimeToGoalArea(i32, i32, i32, i32) #1

declare dso_local i64 @BotAvoidSpots(i32, %struct.TYPE_9__*, %struct.bot_avoidspot_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
