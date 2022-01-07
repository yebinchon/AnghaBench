; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_ServerOptions_Start.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_ServerOptions_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i8**, i32, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_29__, %struct.TYPE_27__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32* }

@s_serveroptions = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@PLAYER_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ui_ffa_fraglimit\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ui_ffa_timelimit\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ui_tourney_fraglimit\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ui_tourney_timelimit\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ui_team_fraglimit\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ui_team_timelimit\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ui_team_friendly\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"ui_ctf_capturelimit\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ui_ctf_timelimit\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"ui_ctf_friendly\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"dedicated\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"timelimit\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"fraglimit\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"capturelimit\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"g_friendlyfire\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"sv_pure\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"sv_hostname\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"sv_punkbuster\00", align 1
@s_startserver = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [22 x i8] c"wait ; wait ; map %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"wait 3\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"addbot %s %i %s\0A\00", align 1
@playerTeam_list = common dso_local global i32* null, align 8
@.str.23 = private unnamed_addr constant [14 x i8] c"addbot %s %i\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"wait 5; team %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"g_localTeamPref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ServerOptions_Start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ServerOptions_Start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 12, i32 0, i32 0), align 8
  %13 = call i32 @atoi(i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 11, i32 0, i32 0), align 4
  %15 = call i32 @atoi(i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 10, i32 0, i32 0), align 8
  %17 = call i32 @atoi(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 9, i32 0), align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 8, i32 0), align 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 7, i32 0), align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 6, i32 0), align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %58, %0
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PLAYER_SLOTS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 3), align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %58

36:                                               ; preds = %27
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 3), align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 0), align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %58

55:                                               ; preds = %44, %36
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %54, %35
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %23

61:                                               ; preds = %23
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 1), align 8
  switch i32 %62, label %64 [
    i32 130, label %63
    i32 128, label %69
    i32 129, label %74
    i32 131, label %81
  ]

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %61, %63
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %88

69:                                               ; preds = %61
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %88

74:                                               ; preds = %61
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  br label %88

81:                                               ; preds = %61
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %81, %74, %69, %64
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @Com_Clamp(i32 0, i32 12, i32 %89)
  %91 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @Com_Clamp(i32 0, i32 2, i32 %92)
  %94 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* %1, align 4
  %97 = call i32 @Com_Clamp(i32 0, i32 %95, i32 %96)
  %98 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @Com_Clamp(i32 0, i32 %99, i32 %100)
  %102 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @Com_Clamp(i32 0, i32 %103, i32 %104)
  %106 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 5, i32 0, i32 0), align 4
  %112 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 4, i32 0), align 8
  %114 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @s_startserver, i32 0, i32 1), align 8
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @s_startserver, i32 0, i32 0), align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @UI_GetArenaInfoByNumber(i32 %118)
  store i8* %119, i8** %11, align 8
  %120 = load i32, i32* @EXEC_APPEND, align 4
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @Info_ValueForKey(i8* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %123 = call i8* @va(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %122)
  %124 = call i32 @trap_Cmd_ExecuteText(i32 %120, i8* %123)
  %125 = load i32, i32* @EXEC_APPEND, align 4
  %126 = call i32 @trap_Cmd_ExecuteText(i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %127

127:                                              ; preds = %196, %88
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @PLAYER_SLOTS, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %199

131:                                              ; preds = %127
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 3), align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %196

140:                                              ; preds = %131
  %141 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 0), align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %196

151:                                              ; preds = %140
  %152 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 0), align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 45
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  br label %196

162:                                              ; preds = %151
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 1), align 8
  %164 = icmp sge i32 %163, 129
  br i1 %164, label %165, label %183

165:                                              ; preds = %162
  %166 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %167 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 0), align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load i32*, i32** @playerTeam_list, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 2), align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i32, i32* %173, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, i32, i8*, i8*, i32, ...) @Com_sprintf(i8* %166, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* %171, i32 %172, i32 %181)
  br label %192

183:                                              ; preds = %162
  %184 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %185 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 0), align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 (i8*, i32, i8*, i8*, i32, ...) @Com_sprintf(i8* %184, i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %189, i32 %190)
  br label %192

192:                                              ; preds = %183, %165
  %193 = load i32, i32* @EXEC_APPEND, align 4
  %194 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %195 = call i32 @trap_Cmd_ExecuteText(i32 %193, i8* %194)
  br label %196

196:                                              ; preds = %192, %161, %150, %139
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %127

199:                                              ; preds = %127
  %200 = load i32, i32* %4, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %224

202:                                              ; preds = %199
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 1), align 8
  %204 = icmp sge i32 %203, 129
  br i1 %204, label %205, label %224

205:                                              ; preds = %202
  %206 = load i32, i32* @EXEC_APPEND, align 4
  %207 = load i32*, i32** @playerTeam_list, align 8
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 2), align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i32, i32* %207, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i8* @va(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 %213)
  %215 = call i32 @trap_Cmd_ExecuteText(i32 %206, i8* %214)
  %216 = load i32*, i32** @playerTeam_list, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 2), align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i64 0
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds i32, i32* %216, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %205, %202, %199
  ret void
}

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @Com_Clamp(i32, i32, i32) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #1

declare dso_local i8* @UI_GetArenaInfoByNumber(i32) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
