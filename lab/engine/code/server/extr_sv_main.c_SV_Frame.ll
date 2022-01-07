; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SV_Frame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SV_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64 }

@sv_killserver = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Server was killed\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sv_killserver\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@com_sv_running = common dso_local global %struct.TYPE_14__* null, align 8
@sv_fps = common dso_local global %struct.TYPE_11__* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"sv_fps\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@com_timescale = common dso_local global %struct.TYPE_13__* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"timescale\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@sv = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@com_dedicated = common dso_local global %struct.TYPE_16__* null, align 8
@svs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Restarting server due to time wrapping\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"map %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"Restarting server due to numSnapshotEntities wrapping\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"map_restart 0\0A\00", align 1
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@CVAR_SERVERINFO = common dso_local global i32 0, align 4
@CS_SERVERINFO = common dso_local global i32 0, align 4
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@CS_SYSTEMINFO = common dso_local global i32 0, align 4
@com_speeds = common dso_local global %struct.TYPE_15__* null, align 8
@gvm = common dso_local global i32 0, align 4
@GAME_RUN_FRAME = common dso_local global i32 0, align 4
@time_game = common dso_local global i32 0, align 4
@HEARTBEAT_FOR_MASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_Frame(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sv_killserver, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 @SV_Shutdown(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %168

12:                                               ; preds = %1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** @com_sv_running, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %168

18:                                               ; preds = %12
  %19 = call i64 (...) @SV_CheckPaused()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %168

22:                                               ; preds = %18
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sv_fps, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @Cvar_Set(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sv_fps, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 1000, %32
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** @com_timescale, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %48

40:                                               ; preds = %29
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sv_fps, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %44, 1.000000e+03
  %46 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), float %45)
  %47 = call i32 @Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %29
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 0), align 8
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 0), align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** @com_dedicated, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %48
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 1), align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 0), align 8
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @SV_BotFrame(i64 %60)
  br label %62

62:                                               ; preds = %56, %48
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @svs, i32 0, i32 0), align 4
  %64 = icmp sgt i32 %63, 1879048192
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = call i32 @SV_Shutdown(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %67 = call float @Cvar_VariableString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %68 = call i8* @va(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), float %67)
  %69 = call i32 @Cbuf_AddText(i8* %68)
  br label %168

70:                                               ; preds = %62
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @svs, i32 0, i32 1), align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @svs, i32 0, i32 2), align 4
  %73 = sub nsw i32 2147483646, %72
  %74 = icmp sge i32 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = call i32 @SV_Shutdown(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0))
  %77 = call float @Cvar_VariableString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %78 = call i8* @va(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), float %77)
  %79 = call i32 @Cbuf_AddText(i8* %78)
  br label %168

80:                                               ; preds = %70
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 2), align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 1), align 8
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 2), align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 2), align 8
  %88 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %168

89:                                               ; preds = %83, %80
  %90 = load i32, i32* @cvar_modifiedFlags, align 4
  %91 = load i32, i32* @CVAR_SERVERINFO, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32, i32* @CS_SERVERINFO, align 4
  %96 = load i32, i32* @CVAR_SERVERINFO, align 4
  %97 = call i32 @Cvar_InfoString(i32 %96)
  %98 = call i32 @SV_SetConfigstring(i32 %95, i32 %97)
  %99 = load i32, i32* @CVAR_SERVERINFO, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* @cvar_modifiedFlags, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* @cvar_modifiedFlags, align 4
  br label %103

103:                                              ; preds = %94, %89
  %104 = load i32, i32* @cvar_modifiedFlags, align 4
  %105 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load i32, i32* @CS_SYSTEMINFO, align 4
  %110 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %111 = call i32 @Cvar_InfoString_Big(i32 %110)
  %112 = call i32 @SV_SetConfigstring(i32 %109, i32 %111)
  %113 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* @cvar_modifiedFlags, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* @cvar_modifiedFlags, align 4
  br label %117

117:                                              ; preds = %108, %103
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** @com_speeds, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 (...) @Sys_Milliseconds()
  store i32 %123, i32* %4, align 4
  br label %125

124:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %122
  %126 = call i32 (...) @SV_CalcPings()
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** @com_dedicated, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 1), align 8
  %133 = call i32 @SV_BotFrame(i64 %132)
  br label %134

134:                                              ; preds = %131, %125
  br label %135

135:                                              ; preds = %139, %134
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 0), align 8
  %137 = load i32, i32* %3, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 0), align 8
  %142 = sub nsw i32 %141, %140
  store i32 %142, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 0), align 8
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @svs, i32 0, i32 0), align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @svs, i32 0, i32 0), align 4
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 1), align 8
  %149 = add nsw i64 %148, %147
  store i64 %149, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 1), align 8
  %150 = load i32, i32* @gvm, align 4
  %151 = load i32, i32* @GAME_RUN_FRAME, align 4
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 1), align 8
  %153 = call i32 @VM_Call(i32 %150, i32 %151, i64 %152)
  br label %135

154:                                              ; preds = %135
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** @com_speeds, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = call i32 (...) @Sys_Milliseconds()
  %161 = load i32, i32* %4, align 4
  %162 = sub nsw i32 %160, %161
  store i32 %162, i32* @time_game, align 4
  br label %163

163:                                              ; preds = %159, %154
  %164 = call i32 (...) @SV_CheckTimeouts()
  %165 = call i32 (...) @SV_SendClientMessages()
  %166 = load i32, i32* @HEARTBEAT_FOR_MASTER, align 4
  %167 = call i32 @SV_MasterHeartbeat(i32 %166)
  br label %168

168:                                              ; preds = %163, %87, %75, %65, %21, %17, %9
  ret void
}

declare dso_local i32 @SV_Shutdown(i8*) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i64 @SV_CheckPaused(...) #1

declare dso_local i8* @va(i8*, float) #1

declare dso_local i32 @SV_BotFrame(i64) #1

declare dso_local i32 @Cbuf_AddText(i8*) #1

declare dso_local float @Cvar_VariableString(i8*) #1

declare dso_local i32 @SV_SetConfigstring(i32, i32) #1

declare dso_local i32 @Cvar_InfoString(i32) #1

declare dso_local i32 @Cvar_InfoString_Big(i32) #1

declare dso_local i32 @Sys_Milliseconds(...) #1

declare dso_local i32 @SV_CalcPings(...) #1

declare dso_local i32 @VM_Call(i32, i32, i64) #1

declare dso_local i32 @SV_CheckTimeouts(...) #1

declare dso_local i32 @SV_SendClientMessages(...) #1

declare dso_local i32 @SV_MasterHeartbeat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
