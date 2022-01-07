; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_Random.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_Random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, double, i64, i64, i32, i32 }

@bot_nochat = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@TIME_BETWEENCHATTING = common dso_local global i64 0, align 8
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@LTG_TEAMHELP = common dso_local global i64 0, align 8
@LTG_TEAMACCOMPANY = common dso_local global i64 0, align 8
@LTG_RUSHBASE = common dso_local global i64 0, align 8
@CHARACTERISTIC_CHAT_RANDOM = common dso_local global i32 0, align 4
@bot_fastchat = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@CHARACTERISTIC_CHAT_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"random_misc\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"[invalid var]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"random_insult\00", align 1
@CHAT_ALL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChat_Random(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca float, align 4
  %5 = alloca [32 x i8], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bot_nochat, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @qfalse, align 4
  store i32 %9, i32* %2, align 4
  br label %156

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i64 @BotIsObserver(%struct.TYPE_10__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %2, align 4
  br label %156

16:                                               ; preds = %10
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 (...) @FloatTime()
  %21 = load i64, i64* @TIME_BETWEENCHATTING, align 8
  %22 = sub nsw i64 %20, %21
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* %2, align 4
  br label %156

26:                                               ; preds = %16
  %27 = load i64, i64* @gametype, align 8
  %28 = load i64, i64* @GT_TOURNAMENT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %2, align 4
  br label %156

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LTG_TEAMHELP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LTG_TEAMACCOMPANY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LTG_RUSHBASE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %38, %32
  %51 = load i32, i32* @qfalse, align 4
  store i32 %51, i32* %2, align 4
  br label %156

52:                                               ; preds = %44
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CHARACTERISTIC_CHAT_RANDOM, align 4
  %57 = call double @trap_Characteristic_BFloat(i32 %55, i32 %56, i32 0, i32 1)
  %58 = fptrunc double %57 to float
  store float %58, float* %4, align 4
  %59 = call double (...) @random()
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load double, double* %61, align 8
  %63 = fmul double %62, 1.000000e-01
  %64 = fcmp ogt double %59, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* @qfalse, align 4
  store i32 %66, i32* %2, align 4
  br label %156

67:                                               ; preds = %52
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bot_fastchat, i32 0, i32 0), align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %67
  %71 = call double (...) @random()
  %72 = load float, float* %4, align 4
  %73 = fpext float %72 to double
  %74 = fcmp ogt double %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @qfalse, align 4
  store i32 %76, i32* %2, align 4
  br label %156

77:                                               ; preds = %70
  %78 = call double (...) @random()
  %79 = fcmp ogt double %78, 2.500000e-01
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @qfalse, align 4
  store i32 %81, i32* %2, align 4
  br label %156

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %67
  %84 = call i32 (...) @BotNumActivePlayers()
  %85 = icmp sle i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @qfalse, align 4
  store i32 %87, i32* %2, align 4
  br label %156

88:                                               ; preds = %83
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = call i32 @BotValidChatPosition(%struct.TYPE_10__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @qfalse, align 4
  store i32 %93, i32* %2, align 4
  br label %156

94:                                               ; preds = %88
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = call i64 @BotVisibleEnemies(%struct.TYPE_10__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @qfalse, align 4
  store i32 %99, i32* %2, align 4
  br label %156

100:                                              ; preds = %94
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = call i32 @BotRandomOpponentName(%struct.TYPE_10__* %110)
  %112 = call i32 @strcpy(i8* %109, i32 %111)
  br label %119

113:                                              ; preds = %100
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %118 = call i32 @EasyClientName(i64 %116, i8* %117, i32 32)
  br label %119

119:                                              ; preds = %113, %108
  %120 = call i64 (...) @TeamPlayIsOn()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @qfalse, align 4
  store i32 %123, i32* %2, align 4
  br label %156

124:                                              ; preds = %119
  %125 = call double (...) @random()
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @CHARACTERISTIC_CHAT_MISC, align 4
  %130 = call double @trap_Characteristic_BFloat(i32 %128, i32 %129, i32 0, i32 1)
  %131 = fcmp olt double %125, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %124
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %135 = call i32 @BotRandomOpponentName(%struct.TYPE_10__* %134)
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %137 = call i32 (...) @BotMapTitle()
  %138 = call i32 (...) @BotRandomWeaponName()
  %139 = call i32 @BotAI_BotInitialChat(%struct.TYPE_10__* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %135, i8* %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %138, i32* null)
  br label %148

140:                                              ; preds = %124
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = call i32 @BotRandomOpponentName(%struct.TYPE_10__* %142)
  %144 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %145 = call i32 (...) @BotMapTitle()
  %146 = call i32 (...) @BotRandomWeaponName()
  %147 = call i32 @BotAI_BotInitialChat(%struct.TYPE_10__* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %143, i8* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %146, i32* null)
  br label %148

148:                                              ; preds = %140, %132
  %149 = call i64 (...) @FloatTime()
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* @CHAT_ALL, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @qtrue, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %148, %122, %98, %92, %86, %80, %75, %65, %50, %30, %24, %14, %8
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i64 @BotIsObserver(%struct.TYPE_10__*) #1

declare dso_local i64 @FloatTime(...) #1

declare dso_local double @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local double @random(...) #1

declare dso_local i32 @BotNumActivePlayers(...) #1

declare dso_local i32 @BotValidChatPosition(%struct.TYPE_10__*) #1

declare dso_local i64 @BotVisibleEnemies(%struct.TYPE_10__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @BotRandomOpponentName(%struct.TYPE_10__*) #1

declare dso_local i32 @EasyClientName(i64, i8*, i32) #1

declare dso_local i64 @TeamPlayIsOn(...) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_10__*, i8*, i32, i8*, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @BotMapTitle(...) #1

declare dso_local i32 @BotRandomWeaponName(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
