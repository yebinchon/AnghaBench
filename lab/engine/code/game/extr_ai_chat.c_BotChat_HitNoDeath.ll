; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_HitNoDeath.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_HitNoDeath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32 }

@g_entities = common dso_local global %struct.TYPE_12__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@bot_nochat = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TIME_BETWEENCHATTING = common dso_local global i64 0, align 8
@CHARACTERISTIC_CHAT_HITNODEATH = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@bot_fastchat = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"hit_nodeath\00", align 1
@CHAT_ALL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChat_HitNoDeath(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_entities, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @qfalse, align 4
  store i32 %21, i32* %2, align 4
  br label %135

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %2, align 4
  br label %135

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MAX_CLIENTS, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %31
  %39 = load i32, i32* @qfalse, align 4
  store i32 %39, i32* %2, align 4
  br label %135

40:                                               ; preds = %34
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bot_nochat, i32 0, i32 0), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @qfalse, align 4
  store i32 %44, i32* %2, align 4
  br label %135

45:                                               ; preds = %40
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 (...) @FloatTime()
  %50 = load i64, i64* @TIME_BETWEENCHATTING, align 8
  %51 = sub nsw i64 %49, %50
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @qfalse, align 4
  store i32 %54, i32* %2, align 4
  br label %135

55:                                               ; preds = %45
  %56 = call i32 (...) @BotNumActivePlayers()
  %57 = icmp sle i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @qfalse, align 4
  store i32 %59, i32* %2, align 4
  br label %135

60:                                               ; preds = %55
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CHARACTERISTIC_CHAT_HITNODEATH, align 4
  %65 = call float @trap_Characteristic_BFloat(i32 %63, i32 %64, i32 0, i32 1)
  store float %65, float* %6, align 4
  %66 = call i64 (...) @TeamPlayIsOn()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @qfalse, align 4
  store i32 %69, i32* %2, align 4
  br label %135

70:                                               ; preds = %60
  %71 = load i64, i64* @gametype, align 8
  %72 = load i64, i64* @GT_TOURNAMENT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @qfalse, align 4
  store i32 %75, i32* %2, align 4
  br label %135

76:                                               ; preds = %70
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bot_fastchat, i32 0, i32 0), align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = call float (...) @random()
  %81 = fpext float %80 to double
  %82 = load float, float* %6, align 4
  %83 = fpext float %82 to double
  %84 = fmul double %83, 5.000000e-01
  %85 = fcmp ogt double %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @qfalse, align 4
  store i32 %87, i32* %2, align 4
  br label %135

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %76
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = call i32 @BotValidChatPosition(%struct.TYPE_11__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @qfalse, align 4
  store i32 %94, i32* %2, align 4
  br label %135

95:                                               ; preds = %89
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = call i64 @BotVisibleEnemies(%struct.TYPE_11__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @qfalse, align 4
  store i32 %100, i32* %2, align 4
  br label %135

101:                                              ; preds = %95
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @BotEntityInfo(i32 %104, i32* %8)
  %106 = call i64 @EntityIsShooting(i32* %8)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @qfalse, align 4
  store i32 %109, i32* %2, align 4
  br label %135

110:                                              ; preds = %101
  %111 = load i32, i32* %7, align 4
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %113 = call i32 @ClientName(i32 %111, i8* %112, i32 32)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_entities, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @BotWeaponNameForMeansOfDeath(i32 %122)
  store i8* %123, i8** %5, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 @BotAI_BotInitialChat(%struct.TYPE_11__* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %125, i8* %126, i32* null)
  %128 = call i64 (...) @FloatTime()
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* @CHAT_ALL, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @qtrue, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %110, %108, %99, %93, %86, %74, %68, %58, %53, %43, %38, %29, %20
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i64 @FloatTime(...) #1

declare dso_local i32 @BotNumActivePlayers(...) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i64 @TeamPlayIsOn(...) #1

declare dso_local float @random(...) #1

declare dso_local i32 @BotValidChatPosition(%struct.TYPE_11__*) #1

declare dso_local i64 @BotVisibleEnemies(%struct.TYPE_11__*) #1

declare dso_local i32 @BotEntityInfo(i32, i32*) #1

declare dso_local i64 @EntityIsShooting(i32*) #1

declare dso_local i32 @ClientName(i32, i8*, i32) #1

declare dso_local i8* @BotWeaponNameForMeansOfDeath(i32) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_11__*, i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
