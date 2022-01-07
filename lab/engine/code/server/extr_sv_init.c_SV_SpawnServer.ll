; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_init.c_SV_SpawnServer.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_init.c_SV_SpawnServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__*, i32, i64, i32 }
%struct.TYPE_20__ = type { i64, i32, i32, i64, %struct.TYPE_19__*, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"------ Server Initialization ------\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Server: %s\0A\00", align 1
@qfalse = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"sv_running\00", align 1
@sv_maxclients = common dso_local global %struct.TYPE_23__* null, align 8
@svs = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@h_high = common dso_local global i32 0, align 4
@SNAPFLAG_SERVERCOUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"nextmap\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"map_restart 0\00", align 1
@CS_CONNECTED = common dso_local global i64 0, align 8
@sv = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@MAX_CONFIGSTRINGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"cl_paused\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"maps/%s.bsp\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"sv_mapChecksum\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@com_frameTime = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"sv_serverid\00", align 1
@SS_LOADING = common dso_local global i32 0, align 4
@sv_gametype = common dso_local global %struct.TYPE_24__* null, align 8
@gvm = common dso_local global i32 0, align 4
@GAME_RUN_FRAME = common dso_local global i32 0, align 4
@NA_BOT = common dso_local global i64 0, align 8
@qtrue = common dso_local global i8* null, align 8
@GAME_CLIENT_CONNECT = common dso_local global i32 0, align 4
@CS_ACTIVE = common dso_local global i64 0, align 8
@GAME_CLIENT_BEGIN = common dso_local global i32 0, align 4
@sv_pure = common dso_local global %struct.TYPE_22__* null, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"sv_paks\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"WARNING: sv_pure set but no PK3 files loaded\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"sv_pakNames\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"vm/cgame.qvm\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"vm/ui.qvm\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"sv_referencedPaks\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"sv_referencedPakNames\00", align 1
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@CS_SYSTEMINFO = common dso_local global i32 0, align 4
@CS_SERVERINFO = common dso_local global i32 0, align 4
@CVAR_SERVERINFO = common dso_local global i32 0, align 4
@SS_GAME = common dso_local global i32 0, align 4
@com_dedicated = common dso_local global %struct.TYPE_15__* null, align 8
@.str.20 = private unnamed_addr constant [37 x i8] c"-----------------------------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_SpawnServer(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [16384 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = call i32 (...) @SV_ShutdownGameProgs()
  %14 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = call i32 (...) @CL_MapLoading()
  %18 = load i8*, i8** @qfalse, align 8
  %19 = call i32 @CL_ShutdownAll(i8* %18)
  %20 = call i32 (...) @Hunk_Clear()
  %21 = call i32 (...) @CM_ClearMap()
  %22 = call i32 @Cvar_VariableValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (...) @SV_Startup()
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sv_maxclients, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (...) @SV_ChangeMaxClients()
  br label %33

33:                                               ; preds = %31, %26
  br label %34

34:                                               ; preds = %33, %24
  %35 = call i32 @FS_ClearPakReferences(i32 0)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 0), align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @h_high, align 4
  %41 = call i32 @Hunk_Alloc(i32 %39, i32 %40)
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 4), align 8
  %42 = load i32, i32* @SNAPFLAG_SERVERCOUNT, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 3), align 8
  %44 = xor i32 %43, %42
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 3), align 8
  %45 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %69, %34
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sv_maxclients, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %46
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CS_CONNECTED, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 0), align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  store i32 %62, i32* %67, align 8
  br label %68

68:                                               ; preds = %61, %52
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %46

72:                                               ; preds = %46
  %73 = call i32 (...) @SV_ClearServer()
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %84, %72
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @MAX_CONFIGSTRINGS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = call i32 @CopyString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 6), align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %74

87:                                               ; preds = %74
  %88 = call i32 @Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %89 = call i64 (...) @rand()
  %90 = trunc i64 %89 to i32
  %91 = shl i32 %90, 16
  %92 = call i64 (...) @rand()
  %93 = trunc i64 %92 to i32
  %94 = xor i32 %91, %93
  %95 = call i32 (...) @Com_Milliseconds()
  %96 = xor i32 %94, %95
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 1), align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 1), align 4
  %98 = call i32 @FS_Restart(i32 %97)
  %99 = load i8*, i8** %3, align 8
  %100 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %99)
  %101 = load i8*, i8** @qfalse, align 8
  %102 = call i32 @CM_LoadMap(i8* %100, i8* %101, i32* %6)
  %103 = load i8*, i8** %3, align 8
  %104 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %6, align 4
  %106 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %105)
  %107 = call i32 @Cvar_Set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @com_frameTime, align 4
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 2), align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 2), align 8
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 3), align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 2), align 8
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 4), align 8
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 2), align 8
  %112 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %111)
  %113 = call i32 @Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %112)
  %114 = call i32 (...) @SV_ClearWorld()
  %115 = load i32, i32* @SS_LOADING, align 4
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 5), align 4
  %116 = call i32 (...) @SV_InitGameProgs()
  %117 = load i8*, i8** @qfalse, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** @sv_gametype, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %134, %87
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %121, 3
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load i32, i32* @gvm, align 4
  %125 = load i32, i32* @GAME_RUN_FRAME, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 0), align 8
  %127 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 0), align 8
  %129 = call i32 @SV_BotFrame(i32 %128)
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 0), align 8
  %131 = add nsw i32 %130, 100
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 0), align 8
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  %133 = add nsw i32 %132, 100
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  br label %134

134:                                              ; preds = %123
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %120

137:                                              ; preds = %120
  %138 = call i32 (...) @SV_CreateBaseline()
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %234, %137
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sv_maxclients, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %237

145:                                              ; preds = %139
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @CS_CONNECTED, align 8
  %153 = icmp sge i64 %151, %152
  br i1 %153, label %154, label %233

154:                                              ; preds = %145
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @NA_BOT, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %154
  %166 = load i8*, i8** %4, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i64 %171
  %173 = call i32 @SV_DropClient(%struct.TYPE_20__* %172, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %234

174:                                              ; preds = %165
  %175 = load i8*, i8** @qtrue, align 8
  store i8* %175, i8** %7, align 8
  br label %178

176:                                              ; preds = %154
  %177 = load i8*, i8** @qfalse, align 8
  store i8* %177, i8** %7, align 8
  br label %178

178:                                              ; preds = %176, %174
  %179 = load i32, i32* @gvm, align 4
  %180 = load i32, i32* @gvm, align 4
  %181 = load i32, i32* @GAME_CLIENT_CONNECT, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load i8*, i8** @qfalse, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %180, i32 %181, i32 %182, i8* %183, i8* %184)
  %186 = call i8* @VM_ExplicitArgPtr(i32 %179, i32 %185)
  store i8* %186, i8** %10, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %196

189:                                              ; preds = %178
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i64 %192
  %194 = load i8*, i8** %10, align 8
  %195 = call i32 @SV_DropClient(%struct.TYPE_20__* %193, i8* %194)
  br label %232

196:                                              ; preds = %178
  %197 = load i8*, i8** %7, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %206, label %199

199:                                              ; preds = %196
  %200 = load i64, i64* @CS_CONNECTED, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  store i64 %200, i64* %205, align 8
  br label %231

206:                                              ; preds = %196
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i64 %209
  store %struct.TYPE_20__* %210, %struct.TYPE_20__** %11, align 8
  %211 = load i64, i64* @CS_ACTIVE, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  store i64 %211, i64* %213, align 8
  %214 = load i32, i32* %5, align 4
  %215 = call %struct.TYPE_19__* @SV_GentityNum(i32 %214)
  store %struct.TYPE_19__* %215, %struct.TYPE_19__** %12, align 8
  %216 = load i32, i32* %5, align 4
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  store i32 %216, i32* %219, align 4
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 4
  store %struct.TYPE_19__* %220, %struct.TYPE_19__** %222, align 8
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 2
  store i32 -1, i32* %224, align 4
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 3
  store i64 0, i64* %226, align 8
  %227 = load i32, i32* @gvm, align 4
  %228 = load i32, i32* @GAME_CLIENT_BEGIN, align 4
  %229 = load i32, i32* %5, align 4
  %230 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %227, i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %206, %199
  br label %232

232:                                              ; preds = %231, %189
  br label %233

233:                                              ; preds = %232, %145
  br label %234

234:                                              ; preds = %233, %168
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %5, align 4
  br label %139

237:                                              ; preds = %139
  %238 = load i32, i32* @gvm, align 4
  %239 = load i32, i32* @GAME_RUN_FRAME, align 4
  %240 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 0), align 8
  %241 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %238, i32 %239, i32 %240)
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 0), align 8
  %243 = call i32 @SV_BotFrame(i32 %242)
  %244 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 0), align 8
  %245 = add nsw i32 %244, 100
  store i32 %245, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 0), align 8
  %246 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  %247 = add nsw i32 %246, 100
  store i32 %247, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** @sv_pure, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %267

252:                                              ; preds = %237
  %253 = call i8* (...) @FS_LoadedPakChecksums()
  store i8* %253, i8** %9, align 8
  %254 = load i8*, i8** %9, align 8
  %255 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %254)
  %256 = load i8*, i8** %9, align 8
  %257 = call i64 @strlen(i8* %256)
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  br label %261

261:                                              ; preds = %259, %252
  %262 = call i8* (...) @FS_LoadedPakNames()
  store i8* %262, i8** %9, align 8
  %263 = load i8*, i8** %9, align 8
  %264 = call i32 @Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* %263)
  %265 = call i32 @SV_TouchFile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %266 = call i32 @SV_TouchFile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %270

267:                                              ; preds = %237
  %268 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %269 = call i32 @Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %270

270:                                              ; preds = %267, %261
  %271 = call i8* (...) @FS_ReferencedPakChecksums()
  store i8* %271, i8** %9, align 8
  %272 = load i8*, i8** %9, align 8
  %273 = call i32 @Cvar_Set(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* %272)
  %274 = call i8* (...) @FS_ReferencedPakNames()
  store i8* %274, i8** %9, align 8
  %275 = load i8*, i8** %9, align 8
  %276 = call i32 @Cvar_Set(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8* %275)
  %277 = getelementptr inbounds [16384 x i8], [16384 x i8]* %8, i64 0, i64 0
  %278 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %279 = call i32 @Cvar_InfoString_Big(i32 %278)
  %280 = call i32 @Q_strncpyz(i8* %277, i32 %279, i32 16384)
  %281 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %282 = xor i32 %281, -1
  %283 = load i32, i32* @cvar_modifiedFlags, align 4
  %284 = and i32 %283, %282
  store i32 %284, i32* @cvar_modifiedFlags, align 4
  %285 = load i32, i32* @CS_SYSTEMINFO, align 4
  %286 = getelementptr inbounds [16384 x i8], [16384 x i8]* %8, i64 0, i64 0
  %287 = call i32 @SV_SetConfigstring(i32 %285, i8* %286)
  %288 = load i32, i32* @CS_SERVERINFO, align 4
  %289 = load i32, i32* @CVAR_SERVERINFO, align 4
  %290 = call i8* @Cvar_InfoString(i32 %289)
  %291 = call i32 @SV_SetConfigstring(i32 %288, i8* %290)
  %292 = load i32, i32* @CVAR_SERVERINFO, align 4
  %293 = xor i32 %292, -1
  %294 = load i32, i32* @cvar_modifiedFlags, align 4
  %295 = and i32 %294, %293
  store i32 %295, i32* @cvar_modifiedFlags, align 4
  %296 = load i32, i32* @SS_GAME, align 4
  store i32 %296, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 5), align 4
  %297 = call i32 (...) @SV_Heartbeat_f()
  %298 = call i32 (...) @Hunk_SetMark()
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** @com_dedicated, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %270
  %304 = load i8*, i8** @qtrue, align 8
  %305 = call i32 @CL_StartHunkUsers(i8* %304)
  br label %306

306:                                              ; preds = %303, %270
  %307 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SV_ShutdownGameProgs(...) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @CL_MapLoading(...) #1

declare dso_local i32 @CL_ShutdownAll(i8*) #1

declare dso_local i32 @Hunk_Clear(...) #1

declare dso_local i32 @CM_ClearMap(...) #1

declare dso_local i32 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @SV_Startup(...) #1

declare dso_local i32 @SV_ChangeMaxClients(...) #1

declare dso_local i32 @FS_ClearPakReferences(i32) #1

declare dso_local i32 @Hunk_Alloc(i32, i32) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @SV_ClearServer(...) #1

declare dso_local i32 @CopyString(i8*) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @Com_Milliseconds(...) #1

declare dso_local i32 @FS_Restart(i32) #1

declare dso_local i32 @CM_LoadMap(i8*, i8*, i32*) #1

declare dso_local i8* @va(i8*, ...) #1

declare dso_local i32 @SV_ClearWorld(...) #1

declare dso_local i32 @SV_InitGameProgs(...) #1

declare dso_local i32 @VM_Call(i32, i32, i32, ...) #1

declare dso_local i32 @SV_BotFrame(i32) #1

declare dso_local i32 @SV_CreateBaseline(...) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_20__*, i8*) #1

declare dso_local i8* @VM_ExplicitArgPtr(i32, i32) #1

declare dso_local %struct.TYPE_19__* @SV_GentityNum(i32) #1

declare dso_local i8* @FS_LoadedPakChecksums(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @FS_LoadedPakNames(...) #1

declare dso_local i32 @SV_TouchFile(i8*) #1

declare dso_local i8* @FS_ReferencedPakChecksums(...) #1

declare dso_local i8* @FS_ReferencedPakNames(...) #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #1

declare dso_local i32 @Cvar_InfoString_Big(i32) #1

declare dso_local i32 @SV_SetConfigstring(i32, i8*) #1

declare dso_local i8* @Cvar_InfoString(i32) #1

declare dso_local i32 @SV_Heartbeat_f(...) #1

declare dso_local i32 @Hunk_SetMark(...) #1

declare dso_local i32 @CL_StartHunkUsers(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
