; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_init.c_SV_Init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_init.c_SV_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"dmflags\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_SERVERINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"fraglimit\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"timelimit\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@sv_gametype = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"sv_keywords\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"nomap\00", align 1
@CVAR_ROM = common dso_local global i32 0, align 4
@sv_mapname = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"sv_privateClients\00", align 1
@sv_privateClients = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"sv_hostname\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"noname\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@sv_hostname = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@sv_maxclients = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c"sv_rateLimit\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@sv_rateLimit = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"sv_minRate\00", align 1
@sv_minRate = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [11 x i8] c"sv_maxRate\00", align 1
@sv_maxRate = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"sv_dlRate\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@sv_dlRate = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"sv_minPing\00", align 1
@sv_minPing = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"sv_maxPing\00", align 1
@sv_maxPing = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [16 x i8] c"sv_floodProtect\00", align 1
@sv_floodProtect = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [10 x i8] c"sv_cheats\00", align 1
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"sv_serverid\00", align 1
@sv_serverid = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [8 x i8] c"sv_pure\00", align 1
@sv_pure = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [8 x i8] c"sv_paks\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"sv_pakNames\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"sv_referencedPaks\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"sv_referencedPakNames\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"rconPassword\00", align 1
@CVAR_TEMP = common dso_local global i32 0, align 4
@sv_rconPassword = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [19 x i8] c"sv_privatePassword\00", align 1
@sv_privatePassword = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [7 x i8] c"sv_fps\00", align 1
@sv_fps = common dso_local global i8* null, align 8
@.str.34 = private unnamed_addr constant [11 x i8] c"sv_timeout\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@sv_timeout = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [14 x i8] c"sv_zombietime\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@sv_zombietime = common dso_local global i8* null, align 8
@.str.38 = private unnamed_addr constant [8 x i8] c"nextmap\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"sv_allowDownload\00", align 1
@sv_allowDownload = common dso_local global i8* null, align 8
@.str.40 = private unnamed_addr constant [9 x i8] c"sv_dlURL\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"sv_master1\00", align 1
@MASTER_SERVER_NAME = common dso_local global i8* null, align 8
@sv_master = common dso_local global i8** null, align 8
@.str.42 = private unnamed_addr constant [11 x i8] c"sv_master2\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"master.ioquake3.org\00", align 1
@MAX_MASTER_SERVERS = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [12 x i8] c"sv_master%d\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"sv_reconnectlimit\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@sv_reconnectlimit = common dso_local global i8* null, align 8
@.str.47 = private unnamed_addr constant [12 x i8] c"sv_showloss\00", align 1
@sv_showloss = common dso_local global i8* null, align 8
@.str.48 = private unnamed_addr constant [14 x i8] c"sv_padPackets\00", align 1
@sv_padPackets = common dso_local global i8* null, align 8
@.str.49 = private unnamed_addr constant [14 x i8] c"sv_killserver\00", align 1
@sv_killserver = common dso_local global i8* null, align 8
@.str.50 = private unnamed_addr constant [15 x i8] c"sv_mapChecksum\00", align 1
@sv_mapChecksum = common dso_local global i8* null, align 8
@.str.51 = private unnamed_addr constant [16 x i8] c"sv_lanForceRate\00", align 1
@sv_lanForceRate = common dso_local global i8* null, align 8
@.str.52 = private unnamed_addr constant [14 x i8] c"sv_strictAuth\00", align 1
@sv_strictAuth = common dso_local global i8* null, align 8
@.str.53 = private unnamed_addr constant [11 x i8] c"sv_banFile\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"serverbans.dat\00", align 1
@sv_banFile = common dso_local global i8* null, align 8
@.str.55 = private unnamed_addr constant [12 x i8] c"rehashbans\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@sv_voip = common dso_local global %struct.TYPE_3__* null, align 8
@sv_voipProtocol = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_Init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @SV_AddOperatorCommands()
  %3 = load i32, i32* @CVAR_SERVERINFO, align 4
  %4 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @CVAR_SERVERINFO, align 4
  %6 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @CVAR_SERVERINFO, align 4
  %8 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @CVAR_SERVERINFO, align 4
  %10 = load i32, i32* @CVAR_LATCH, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  store i8* %12, i8** @sv_gametype, align 8
  %13 = load i32, i32* @CVAR_SERVERINFO, align 4
  %14 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @CVAR_SERVERINFO, align 4
  %16 = load i32, i32* @CVAR_ROM, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %17)
  store i8* %18, i8** @sv_mapname, align 8
  %19 = load i32, i32* @CVAR_SERVERINFO, align 4
  %20 = call i8* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i8* %20, i8** @sv_privateClients, align 8
  %21 = load i32, i32* @CVAR_SERVERINFO, align 4
  %22 = load i32, i32* @CVAR_ARCHIVE, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %23)
  store i8* %24, i8** @sv_hostname, align 8
  %25 = load i32, i32* @CVAR_SERVERINFO, align 4
  %26 = load i32, i32* @CVAR_LATCH, align 4
  %27 = or i32 %25, %26
  %28 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 %27)
  store i8* %28, i8** @sv_maxclients, align 8
  %29 = load i32, i32* @CVAR_ARCHIVE, align 4
  %30 = load i32, i32* @CVAR_SERVERINFO, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %31)
  store i8* %32, i8** @sv_rateLimit, align 8
  %33 = load i32, i32* @CVAR_ARCHIVE, align 4
  %34 = load i32, i32* @CVAR_SERVERINFO, align 4
  %35 = or i32 %33, %34
  %36 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i8* %36, i8** @sv_minRate, align 8
  %37 = load i32, i32* @CVAR_ARCHIVE, align 4
  %38 = load i32, i32* @CVAR_SERVERINFO, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i8* %40, i8** @sv_minRate, align 8
  %41 = load i32, i32* @CVAR_ARCHIVE, align 4
  %42 = load i32, i32* @CVAR_SERVERINFO, align 4
  %43 = or i32 %41, %42
  %44 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i8* %44, i8** @sv_maxRate, align 8
  %45 = load i32, i32* @CVAR_ARCHIVE, align 4
  %46 = load i32, i32* @CVAR_SERVERINFO, align 4
  %47 = or i32 %45, %46
  %48 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %47)
  store i8* %48, i8** @sv_dlRate, align 8
  %49 = load i32, i32* @CVAR_ARCHIVE, align 4
  %50 = load i32, i32* @CVAR_SERVERINFO, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i8* %52, i8** @sv_minPing, align 8
  %53 = load i32, i32* @CVAR_ARCHIVE, align 4
  %54 = load i32, i32* @CVAR_SERVERINFO, align 4
  %55 = or i32 %53, %54
  %56 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  store i8* %56, i8** @sv_maxPing, align 8
  %57 = load i32, i32* @CVAR_ARCHIVE, align 4
  %58 = load i32, i32* @CVAR_SERVERINFO, align 4
  %59 = or i32 %57, %58
  %60 = call i8* @Cvar_Get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %59)
  store i8* %60, i8** @sv_floodProtect, align 8
  %61 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %62 = load i32, i32* @CVAR_ROM, align 4
  %63 = or i32 %61, %62
  %64 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %66 = load i32, i32* @CVAR_ROM, align 4
  %67 = or i32 %65, %66
  %68 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i8* %68, i8** @sv_serverid, align 8
  %69 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %70 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %69)
  store i8* %70, i8** @sv_pure, align 8
  %71 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %72 = load i32, i32* @CVAR_ROM, align 4
  %73 = or i32 %71, %72
  %74 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %76 = load i32, i32* @CVAR_ROM, align 4
  %77 = or i32 %75, %76
  %78 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %80 = load i32, i32* @CVAR_ROM, align 4
  %81 = or i32 %79, %80
  %82 = call i8* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %84 = load i32, i32* @CVAR_ROM, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @Cvar_Get(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @CVAR_TEMP, align 4
  %88 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  store i8* %88, i8** @sv_rconPassword, align 8
  %89 = load i32, i32* @CVAR_TEMP, align 4
  %90 = call i8* @Cvar_Get(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  store i8* %90, i8** @sv_privatePassword, align 8
  %91 = load i32, i32* @CVAR_TEMP, align 4
  %92 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  store i8* %92, i8** @sv_fps, align 8
  %93 = load i32, i32* @CVAR_TEMP, align 4
  %94 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i32 %93)
  store i8* %94, i8** @sv_timeout, align 8
  %95 = load i32, i32* @CVAR_TEMP, align 4
  %96 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i32 %95)
  store i8* %96, i8** @sv_zombietime, align 8
  %97 = load i32, i32* @CVAR_TEMP, align 4
  %98 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @CVAR_SERVERINFO, align 4
  %100 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  store i8* %100, i8** @sv_allowDownload, align 8
  %101 = load i32, i32* @CVAR_SERVERINFO, align 4
  %102 = load i32, i32* @CVAR_ARCHIVE, align 4
  %103 = or i32 %101, %102
  %104 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  %105 = load i8*, i8** @MASTER_SERVER_NAME, align 8
  %106 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* %105, i32 0)
  %107 = load i8**, i8*** @sv_master, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  store i8* %106, i8** %108, align 8
  %109 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i32 0)
  %110 = load i8**, i8*** @sv_master, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  store i8* %109, i8** %111, align 8
  store i32 2, i32* %1, align 4
  br label %112

112:                                              ; preds = %126, %0
  %113 = load i32, i32* %1, align 4
  %114 = load i32, i32* @MAX_MASTER_SERVERS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load i32, i32* %1, align 4
  %118 = add nsw i32 %117, 1
  %119 = call i8* @va(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @CVAR_ARCHIVE, align 4
  %121 = call i8* @Cvar_Get(i8* %119, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  %122 = load i8**, i8*** @sv_master, align 8
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  store i8* %121, i8** %125, align 8
  br label %126

126:                                              ; preds = %116
  %127 = load i32, i32* %1, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %1, align 4
  br label %112

129:                                              ; preds = %112
  %130 = call i8* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i32 0)
  store i8* %130, i8** @sv_reconnectlimit, align 8
  %131 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %131, i8** @sv_showloss, align 8
  %132 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %132, i8** @sv_padPackets, align 8
  %133 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %133, i8** @sv_killserver, align 8
  %134 = load i32, i32* @CVAR_ROM, align 4
  %135 = call i8* @Cvar_Get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  store i8* %135, i8** @sv_mapChecksum, align 8
  %136 = load i32, i32* @CVAR_ARCHIVE, align 4
  %137 = call i8* @Cvar_Get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %136)
  store i8* %137, i8** @sv_lanForceRate, align 8
  %138 = load i32, i32* @CVAR_ARCHIVE, align 4
  %139 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %138)
  store i8* %139, i8** @sv_strictAuth, align 8
  %140 = load i32, i32* @CVAR_ARCHIVE, align 4
  %141 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i32 %140)
  store i8* %141, i8** @sv_banFile, align 8
  %142 = call i32 (...) @SV_BotInitCvars()
  %143 = call i32 (...) @SV_BotInitBotLib()
  %144 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SV_AddOperatorCommands(...) #1

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @SV_BotInitCvars(...) #1

declare dso_local i32 @SV_BotInitBotLib(...) #1

declare dso_local i32 @Cbuf_AddText(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
