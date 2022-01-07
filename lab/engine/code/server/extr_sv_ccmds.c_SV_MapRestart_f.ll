; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_MapRestart_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_MapRestart_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i8*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@com_frameTime = common dso_local global i64 0, align 8
@sv = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@com_sv_running = common dso_local global %struct.TYPE_19__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Server is not running.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"g_doWarmup\00", align 1
@CS_WARMUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@sv_maxclients = common dso_local global %struct.TYPE_16__* null, align 8
@sv_gametype = common dso_local global %struct.TYPE_17__* null, align 8
@MAX_QPATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"variable change -- restarting.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@qfalse = common dso_local global i8* null, align 8
@SNAPFLAG_SERVERCOUNT = common dso_local global i32 0, align 4
@svs = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"sv_serverid\00", align 1
@CS_PRIMED = common dso_local global i64 0, align 8
@SS_LOADING = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@gvm = common dso_local global i32 0, align 4
@GAME_RUN_FRAME = common dso_local global i32 0, align 4
@SS_GAME = common dso_local global i32 0, align 4
@CS_CONNECTED = common dso_local global i64 0, align 8
@NA_BOT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"map_restart\0A\00", align 1
@GAME_CLIENT_CONNECT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"SV_MapRestart_f(%d): dropped client %i - denied!\0A\00", align 1
@CS_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SV_MapRestart_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_MapRestart_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = load i64, i64* @com_frameTime, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 0), align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %200

12:                                               ; preds = %0
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** @com_sv_running, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %200

19:                                               ; preds = %12
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 1), align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %200

23:                                               ; preds = %19
  %24 = call i32 (...) @Cmd_Argc()
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i32 @Cmd_Argv(i32 1)
  %28 = call i32 @atoi(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %23
  store i32 5, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = call i32 @Cvar_VariableValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 2), align 4
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 1000
  %40 = add nsw i32 %37, %39
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 1), align 8
  %41 = load i32, i32* @CS_WARMUP, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 1), align 8
  %43 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = call i32 @SV_SetConfigstring(i32 %41, i32 %43)
  br label %200

45:                                               ; preds = %33, %30
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sv_maxclients, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** @sv_gametype, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50, %45
  %56 = load i32, i32* @MAX_QPATH, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %6, align 8
  %59 = alloca i8, i64 %57, align 16
  store i64 %57, i64* %7, align 8
  %60 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %62 = trunc i64 %57 to i32
  %63 = call i32 @Q_strncpyz(i8* %59, i32 %61, i32 %62)
  %64 = load i8*, i8** @qfalse, align 8
  %65 = call i32 @SV_SpawnServer(i8* %59, i8* %64)
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  br label %200

67:                                               ; preds = %50
  %68 = load i32, i32* @SNAPFLAG_SERVERCOUNT, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 2), align 8
  %70 = xor i32 %69, %68
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 2), align 8
  %71 = load i64, i64* @com_frameTime, align 8
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 0), align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 0), align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = call i32 @Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %99, %67
  %77 = load i32, i32* %1, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sv_maxclients, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 1), align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CS_PRIMED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %82
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 1), align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 1), align 8
  %94 = load i32, i32* %1, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  store i32 %92, i32* %97, align 8
  br label %98

98:                                               ; preds = %91, %82
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %1, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %1, align 4
  br label %76

102:                                              ; preds = %76
  %103 = load i32, i32* @SS_LOADING, align 4
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 4), align 8
  %104 = load i8*, i8** @qtrue, align 8
  store i8* %104, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 3), align 8
  %105 = call i32 (...) @SV_RestartGameProgs()
  store i32 0, i32* %1, align 4
  br label %106

106:                                              ; preds = %118, %102
  %107 = load i32, i32* %1, align 4
  %108 = icmp slt i32 %107, 3
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load i32, i32* @gvm, align 4
  %111 = load i32, i32* @GAME_RUN_FRAME, align 4
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 2), align 4
  %113 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 2), align 4
  %115 = add nsw i32 %114, 100
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 2), align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 0), align 8
  %117 = add nsw i32 %116, 100
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 0), align 8
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %1, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %1, align 4
  br label %106

121:                                              ; preds = %106
  %122 = load i32, i32* @SS_GAME, align 4
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 4), align 8
  %123 = load i8*, i8** @qfalse, align 8
  store i8* %123, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 3), align 8
  store i32 0, i32* %1, align 4
  br label %124

124:                                              ; preds = %188, %121
  %125 = load i32, i32* %1, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sv_maxclients, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %191

130:                                              ; preds = %124
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 1), align 8
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i64 %133
  store %struct.TYPE_14__* %134, %struct.TYPE_14__** %2, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CS_CONNECTED, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %188

141:                                              ; preds = %130
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @NA_BOT, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i8*, i8** @qtrue, align 8
  store i8* %150, i8** %4, align 8
  br label %153

151:                                              ; preds = %141
  %152 = load i8*, i8** @qfalse, align 8
  store i8* %152, i8** %4, align 8
  br label %153

153:                                              ; preds = %151, %149
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %155 = call i32 @SV_AddServerCommand(%struct.TYPE_14__* %154, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %156 = load i32, i32* @gvm, align 4
  %157 = load i32, i32* @gvm, align 4
  %158 = load i32, i32* @GAME_CLIENT_CONNECT, align 4
  %159 = load i32, i32* %1, align 4
  %160 = load i8*, i8** @qfalse, align 8
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %157, i32 %158, i32 %159, i8* %160, i8* %161)
  %163 = call i8* @VM_ExplicitArgPtr(i32 %156, i32 %162)
  store i8* %163, i8** %3, align 8
  %164 = load i8*, i8** %3, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %153
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %168 = load i8*, i8** %3, align 8
  %169 = call i32 @SV_DropClient(%struct.TYPE_14__* %167, i8* %168)
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %1, align 4
  %172 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %170, i32 %171)
  br label %188

173:                                              ; preds = %153
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @CS_ACTIVE, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %173
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 2
  %183 = call i32 @SV_ClientEnterWorld(%struct.TYPE_14__* %180, i32* %182)
  br label %187

184:                                              ; preds = %173
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %186 = call i32 @SV_ClientEnterWorld(%struct.TYPE_14__* %185, i32* null)
  br label %187

187:                                              ; preds = %184, %179
  br label %188

188:                                              ; preds = %187, %166, %140
  %189 = load i32, i32* %1, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %1, align 4
  br label %124

191:                                              ; preds = %124
  %192 = load i32, i32* @gvm, align 4
  %193 = load i32, i32* @GAME_RUN_FRAME, align 4
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 2), align 4
  %195 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %192, i32 %193, i32 %194)
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 2), align 4
  %197 = add nsw i32 %196, 100
  store i32 %197, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sv, i32 0, i32 2), align 4
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 0), align 8
  %199 = add nsw i32 %198, 100
  store i32 %199, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @svs, i32 0, i32 0), align 8
  br label %200

200:                                              ; preds = %191, %55, %36, %22, %17, %11
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @SV_SetConfigstring(i32, i32) #1

declare dso_local i32 @va(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #1

declare dso_local i32 @Cvar_VariableString(i8*) #1

declare dso_local i32 @SV_SpawnServer(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Cvar_Set(i8*, i32) #1

declare dso_local i32 @SV_RestartGameProgs(...) #1

declare dso_local i32 @VM_Call(i32, i32, i32, ...) #1

declare dso_local i32 @SV_AddServerCommand(%struct.TYPE_14__*, i8*) #1

declare dso_local i8* @VM_ExplicitArgPtr(i32, i32) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @SV_ClientEnterWorld(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
