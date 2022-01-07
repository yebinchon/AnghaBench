; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotGetPatrolWaypoints.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotGetPatrolWaypoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@KEYAREA = common dso_local global i32 0, align 4
@MTCONTEXT_PATROLKEYAREA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"what do you say?\00", align 1
@qfalse = common dso_local global i32 0, align 4
@ST_BACK = common dso_local global i32 0, align 4
@PATROL_LOOP = common dso_local global i32 0, align 4
@ST_REVERSE = common dso_local global i32 0, align 4
@PATROL_REVERSE = common dso_local global i32 0, align 4
@ST_MORE = common dso_local global i32 0, align 4
@MORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"I need more key points to patrol\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotGetPatrolWaypoints(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %15 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = load i32, i32* @KEYAREA, align 4
  %21 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %22 = call i32 @trap_BotMatchVariable(%struct.TYPE_15__* %19, i32 %20, i8* %18, i32 %21)
  br label %23

23:                                               ; preds = %122, %2
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @MTCONTEXT_PATROLKEYAREA, align 4
  %26 = call i32 @trap_BotFindMatch(i8* %18, %struct.TYPE_15__* %12, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @trap_EA_SayTeam(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %34 = call i32 @BotFreeWaypoints(%struct.TYPE_13__* %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %36, align 8
  %37 = load i32, i32* @qfalse, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %156

38:                                               ; preds = %24
  %39 = load i32, i32* @KEYAREA, align 4
  %40 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %41 = call i32 @trap_BotMatchVariable(%struct.TYPE_15__* %12, i32 %39, i8* %18, i32 %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = call i32 @BotGetMessageTeamGoal(%struct.TYPE_14__* %42, i8* %18, %struct.TYPE_16__* %13)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %47 = call i32 @BotFreeWaypoints(%struct.TYPE_13__* %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %49, align 8
  %50 = load i32, i32* @qfalse, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %156

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_13__* @BotCreateWayPoint(i8* %18, i32 %53, i32 %55)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %10, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %58 = icmp ne %struct.TYPE_13__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %123

60:                                               ; preds = %51
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %62, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %9, align 8
  br label %64

64:                                               ; preds = %75, %60
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %66 = icmp ne %struct.TYPE_13__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br label %72

72:                                               ; preds = %67, %64
  %73 = phi i1 [ false, %64 ], [ %71, %67 ]
  br i1 %73, label %74, label %79

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %9, align 8
  br label %64

79:                                               ; preds = %72
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = icmp ne %struct.TYPE_13__* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %11, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %85, align 8
  br label %93

86:                                               ; preds = %79
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %92, align 8
  br label %93

93:                                               ; preds = %86, %82
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ST_BACK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @PATROL_LOOP, align 4
  store i32 %100, i32* %8, align 4
  br label %123

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ST_REVERSE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @PATROL_REVERSE, align 4
  store i32 %108, i32* %8, align 4
  br label %123

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ST_MORE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* @MORE, align 4
  %117 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %118 = call i32 @trap_BotMatchVariable(%struct.TYPE_15__* %12, i32 %116, i8* %18, i32 %117)
  br label %120

119:                                              ; preds = %109
  br label %123

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  br label %23

123:                                              ; preds = %119, %107, %99, %59
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %125 = icmp ne %struct.TYPE_13__* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = icmp ne %struct.TYPE_13__* %129, null
  br i1 %130, label %139, label %131

131:                                              ; preds = %126, %123
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @trap_EA_SayTeam(i32 %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %137 = call i32 @BotFreeWaypoints(%struct.TYPE_13__* %136)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  %138 = load i32, i32* @qfalse, align 4
  store i32 %138, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %156

139:                                              ; preds = %126
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = call i32 @BotFreeWaypoints(%struct.TYPE_13__* %142)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  store %struct.TYPE_13__* %144, %struct.TYPE_13__** %146, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  store %struct.TYPE_13__* %149, %struct.TYPE_13__** %151, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @qtrue, align 4
  store i32 %155, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %156

156:                                              ; preds = %139, %131, %45, %28
  %157 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_BotMatchVariable(%struct.TYPE_15__*, i32, i8*, i32) #2

declare dso_local i32 @trap_BotFindMatch(i8*, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @trap_EA_SayTeam(i32, i8*) #2

declare dso_local i32 @BotFreeWaypoints(%struct.TYPE_13__*) #2

declare dso_local i32 @BotGetMessageTeamGoal(%struct.TYPE_14__*, i8*, %struct.TYPE_16__*) #2

declare dso_local %struct.TYPE_13__* @BotCreateWayPoint(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
