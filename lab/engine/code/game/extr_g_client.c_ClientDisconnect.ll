; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_client.c_ClientDisconnect.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_client.c_ClientDisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i8*, %struct.TYPE_28__, %struct.TYPE_27__*, i32, %struct.TYPE_23__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i64*, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32, i32*, i64, i32*, i32, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64, i32, i32 }
%struct.TYPE_20__ = type { i64 }

@g_entities = common dso_local global %struct.TYPE_29__* null, align 8
@CON_DISCONNECTED = common dso_local global i64 0, align 8
@level = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@SPECTATOR_FOLLOW = common dso_local global i64 0, align 8
@CON_CONNECTED = common dso_local global i64 0, align 8
@EV_PLAYER_TELEPORT_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ClientDisconnect: %i\0A\00", align 1
@g_gametype = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@TEAM_FREE = common dso_local global i64 0, align 8
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"map_restart 0\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@PERS_TEAM = common dso_local global i64 0, align 8
@CS_PLAYERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVF_BOT = common dso_local global i32 0, align 4
@GT_HARVESTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientDisconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @G_RemoveQueuedBotBegin(i32 %6)
  %8 = load %struct.TYPE_29__*, %struct.TYPE_29__** @g_entities, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i64 %10
  store %struct.TYPE_29__* %11, %struct.TYPE_29__** %3, align 8
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %15 = icmp ne %struct.TYPE_27__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CON_DISCONNECTED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %1
  br label %209

26:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %68, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 0), align 8
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %27
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 5), align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TEAM_SPECTATOR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %31
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 5), align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SPECTATOR_FOLLOW, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %41
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 5), align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** @g_entities, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i64 %64
  %66 = call i32 @StopFollowing(%struct.TYPE_29__* %65)
  br label %67

67:                                               ; preds = %61, %51, %41, %31
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %27

71:                                               ; preds = %27
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CON_CONNECTED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %71
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TEAM_SPECTATOR, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %80
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @EV_PLAYER_TELEPORT_OUT, align 4
  %97 = call %struct.TYPE_29__* @G_TempEntity(i32 %95, i32 %96)
  store %struct.TYPE_29__* %97, %struct.TYPE_29__** %4, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 8
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %106 = call i32 @TossClientItems(%struct.TYPE_29__* %105)
  br label %107

107:                                              ; preds = %89, %80, %71
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @G_LogPrintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_gametype, i32 0, i32 0), align 8
  %111 = load i64, i64* @GT_TOURNAMENT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %107
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 2), align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %141, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 6), align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %141, label %119

119:                                              ; preds = %116
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 1), align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %2, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %119
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 5), align 8
  %127 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 1), align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 1), align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = call i32 @ClientUserinfoChanged(i64 %139)
  br label %141

141:                                              ; preds = %125, %119, %116, %113, %107
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_gametype, i32 0, i32 0), align 8
  %143 = load i64, i64* @GT_TOURNAMENT, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %141
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @TEAM_FREE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %145
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 2), align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* @EXEC_APPEND, align 4
  %159 = call i32 @trap_SendConsoleCommand(i32 %158, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %160 = load i32, i32* @qtrue, align 4
  store i32 %160, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 2), align 8
  br label %161

161:                                              ; preds = %157, %154, %145, %141
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %163 = call i32 @trap_UnlinkEntity(%struct.TYPE_29__* %162)
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  store i64 0, i64* %166, align 8
  %167 = load i32, i32* @qfalse, align 4
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %171, align 8
  %172 = load i64, i64* @CON_DISCONNECTED, align 8
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  store i64 %172, i64* %177, align 8
  %178 = load i64, i64* @TEAM_FREE, align 8
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = load i64, i64* @PERS_TEAM, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  store i64 %178, i64* %186, align 8
  %187 = load i64, i64* @TEAM_FREE, align 8
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 0
  store i64 %187, i64* %192, align 8
  %193 = load i32, i32* @CS_PLAYERS, align 4
  %194 = load i32, i32* %2, align 4
  %195 = add nsw i32 %193, %194
  %196 = call i32 @trap_SetConfigstring(i32 %195, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %197 = call i32 (...) @CalculateRanks()
  %198 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @SVF_BOT, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %161
  %206 = load i32, i32* %2, align 4
  %207 = load i32, i32* @qfalse, align 4
  %208 = call i32 @BotAIShutdownClient(i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %25, %205, %161
  ret void
}

declare dso_local i32 @G_RemoveQueuedBotBegin(i32) #1

declare dso_local i32 @StopFollowing(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @G_TempEntity(i32, i32) #1

declare dso_local i32 @TossClientItems(%struct.TYPE_29__*) #1

declare dso_local i32 @G_LogPrintf(i8*, i32) #1

declare dso_local i32 @ClientUserinfoChanged(i64) #1

declare dso_local i32 @trap_SendConsoleCommand(i32, i8*) #1

declare dso_local i32 @trap_UnlinkEntity(%struct.TYPE_29__*) #1

declare dso_local i32 @trap_SetConfigstring(i32, i8*) #1

declare dso_local i32 @CalculateRanks(...) #1

declare dso_local i32 @BotAIShutdownClient(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
