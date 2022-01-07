; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_Startup.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_Startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i8* }

@.str = private unnamed_addr constant [24 x i8] c"----- FS_Startup -----\0A\00", align 1
@fs_packFiles = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"fs_debug\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@fs_debug = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"fs_basepath\00", align 1
@CVAR_INIT = common dso_local global i32 0, align 4
@CVAR_PROTECTED = common dso_local global i32 0, align 4
@fs_basepath = common dso_local global %struct.TYPE_15__* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"fs_basegame\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fs_basegame = common dso_local global %struct.TYPE_16__* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"fs_homepath\00", align 1
@fs_homepath = common dso_local global %struct.TYPE_12__* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@fs_gamedirvar = common dso_local global %struct.TYPE_14__* null, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"com_basegame\00", align 1
@ERR_DROP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Invalid com_basegame '%s'\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Invalid fs_basegame '%s'\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Invalid fs_game '%s'\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"fs_gogpath\00", align 1
@fs_gogpath = common dso_local global %struct.TYPE_13__* null, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"fs_temporarypath\00", align 1
@fs_temporarypath = common dso_local global %struct.TYPE_10__* null, align 8
@.str.14 = private unnamed_addr constant [13 x i8] c"fs_steampath\00", align 1
@fs_steampath = common dso_local global %struct.TYPE_11__* null, align 8
@com_standalone = common dso_local global %struct.TYPE_18__* null, align 8
@BASEGAME = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"fdir\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"touchFile\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"which\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"----------------------\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"%d files in pk3 files\0A\00", align 1
@fs_apppath = common dso_local global %struct.TYPE_17__* null, align 8
@missingFiles = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @FS_Startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FS_Startup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @fs_packFiles, align 8
  %5 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %5, i8** @fs_debug, align 8
  %6 = call i8* (...) @Sys_DefaultInstallPath()
  %7 = load i32, i32* @CVAR_INIT, align 4
  %8 = load i32, i32* @CVAR_PROTECTED, align 4
  %9 = or i32 %7, %8
  %10 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %6, i32 %9)
  %11 = bitcast i8* %10 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** @fs_basepath, align 8
  %12 = load i32, i32* @CVAR_INIT, align 4
  %13 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 %12)
  %14 = bitcast i8* %13 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** @fs_basegame, align 8
  %15 = call i8* (...) @Sys_DefaultHomePath()
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fs_basepath, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* @CVAR_INIT, align 4
  %30 = load i32, i32* @CVAR_PROTECTED, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %28, i32 %31)
  %33 = bitcast i8* %32 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** @fs_homepath, align 8
  %34 = load i32, i32* @CVAR_INIT, align 4
  %35 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %36 = or i32 %34, %35
  %37 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %27
  %44 = call i32 @Cvar_ForceReset(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %27
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 @FS_FilenameCompare(i8* %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = call i32 @Cvar_ForceReset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %45
  %55 = load i8*, i8** %2, align 8
  %56 = call i64 @FS_InvalidGameDir(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @ERR_DROP, align 4
  %60 = load i8*, i8** %2, align 8
  %61 = call i32 @Com_Error(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fs_basegame, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @FS_InvalidGameDir(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32, i32* @ERR_DROP, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fs_basegame, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @Com_Error(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @FS_InvalidGameDir(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32, i32* @ERR_DROP, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @Com_Error(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %80, %74
  %87 = call i8* (...) @Sys_GogPath()
  %88 = load i32, i32* @CVAR_INIT, align 4
  %89 = load i32, i32* @CVAR_PROTECTED, align 4
  %90 = or i32 %88, %89
  %91 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* %87, i32 %90)
  %92 = bitcast i8* %91 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** @fs_gogpath, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fs_gogpath, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %86
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fs_gogpath, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %2, align 8
  %104 = call i32 @FS_AddGameDirectory(i8* %102, i8* %103)
  br label %105

105:                                              ; preds = %99, %86
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_homepath, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* @CVAR_INIT, align 4
  %110 = load i32, i32* @CVAR_PROTECTED, align 4
  %111 = or i32 %109, %110
  %112 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %108, i32 %111)
  %113 = bitcast i8* %112 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %113, %struct.TYPE_10__** @fs_temporarypath, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs_temporarypath, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %105
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs_temporarypath, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** %2, align 8
  %125 = call i32 @FS_AddGameDirectory(i8* %123, i8* %124)
  br label %126

126:                                              ; preds = %120, %105
  %127 = call i8* (...) @Sys_SteamPath()
  %128 = load i32, i32* @CVAR_INIT, align 4
  %129 = load i32, i32* @CVAR_PROTECTED, align 4
  %130 = or i32 %128, %129
  %131 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %127, i32 %130)
  %132 = bitcast i8* %131 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** @fs_steampath, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_steampath, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %126
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_steampath, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i8*, i8** %2, align 8
  %144 = call i32 @FS_AddGameDirectory(i8* %142, i8* %143)
  br label %145

145:                                              ; preds = %139, %126
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fs_basepath, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = icmp ne i8 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fs_basepath, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** %2, align 8
  %157 = call i32 @FS_AddGameDirectory(i8* %155, i8* %156)
  br label %158

158:                                              ; preds = %152, %145
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_homepath, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %158
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_homepath, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fs_basepath, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @Q_stricmp(i8* %169, i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %166
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_homepath, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @FS_CreatePath(i8* %178)
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_homepath, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load i8*, i8** %2, align 8
  %184 = call i32 @FS_AddGameDirectory(i8* %182, i8* %183)
  br label %185

185:                                              ; preds = %175, %166, %158
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fs_basegame, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %271

193:                                              ; preds = %185
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fs_basegame, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load i8*, i8** %2, align 8
  %198 = call i64 @Q_stricmp(i8* %196, i8* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %271

200:                                              ; preds = %193
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fs_gogpath, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = icmp ne i8 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %200
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fs_gogpath, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fs_basegame, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @FS_AddGameDirectory(i8* %210, i8* %213)
  br label %215

215:                                              ; preds = %207, %200
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_steampath, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 0
  %220 = load i8, i8* %219, align 1
  %221 = icmp ne i8 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %215
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_steampath, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fs_basegame, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @FS_AddGameDirectory(i8* %225, i8* %228)
  br label %230

230:                                              ; preds = %222, %215
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fs_basepath, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  %235 = load i8, i8* %234, align 1
  %236 = icmp ne i8 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %230
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fs_basepath, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fs_basegame, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @FS_AddGameDirectory(i8* %240, i8* %243)
  br label %245

245:                                              ; preds = %237, %230
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_homepath, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 0
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %270

253:                                              ; preds = %245
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_homepath, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fs_basepath, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = call i64 @Q_stricmp(i8* %256, i8* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %253
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_homepath, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fs_basegame, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @FS_AddGameDirectory(i8* %265, i8* %268)
  br label %270

270:                                              ; preds = %262, %253, %245
  br label %271

271:                                              ; preds = %270, %193, %185
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 0
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %357

279:                                              ; preds = %271
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = load i8*, i8** %2, align 8
  %284 = call i64 @Q_stricmp(i8* %282, i8* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %357

286:                                              ; preds = %279
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fs_gogpath, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 0
  %291 = load i8, i8* %290, align 1
  %292 = icmp ne i8 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %286
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fs_gogpath, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @FS_AddGameDirectory(i8* %296, i8* %299)
  br label %301

301:                                              ; preds = %293, %286
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_steampath, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 0
  %306 = load i8, i8* %305, align 1
  %307 = icmp ne i8 %306, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %301
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_steampath, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @FS_AddGameDirectory(i8* %311, i8* %314)
  br label %316

316:                                              ; preds = %308, %301
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fs_basepath, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 0
  %321 = load i8, i8* %320, align 1
  %322 = icmp ne i8 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %316
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fs_basepath, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = call i32 @FS_AddGameDirectory(i8* %326, i8* %329)
  br label %331

331:                                              ; preds = %323, %316
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_homepath, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 0
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %356

339:                                              ; preds = %331
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_homepath, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fs_basepath, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = call i64 @Q_stricmp(i8* %342, i8* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %339
  %349 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_homepath, align 8
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 0
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 @FS_AddGameDirectory(i8* %351, i8* %354)
  br label %356

356:                                              ; preds = %348, %339, %331
  br label %357

357:                                              ; preds = %356, %279, %271
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** @com_standalone, align 8
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %377, label %362

362:                                              ; preds = %357
  %363 = load i32, i32* @BASEGAME, align 4
  %364 = call i32 @Com_ReadCDKey(i32 %363)
  %365 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %365, i32 0, i32 0
  %367 = load i8*, i8** %366, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 0
  %369 = load i8, i8* %368, align 1
  %370 = icmp ne i8 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %362
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 0
  %374 = load i8*, i8** %373, align 8
  %375 = call i32 @Com_AppendCDKey(i8* %374)
  br label %376

376:                                              ; preds = %371, %362
  br label %377

377:                                              ; preds = %376, %357
  %378 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 (...)* @FS_Path_f)
  %379 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 (...)* @FS_Dir_f)
  %380 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 (...)* @FS_NewDir_f)
  %381 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 (...)* @FS_TouchFile_f)
  %382 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 (...)* @FS_Which_f)
  %383 = call i32 (...) @FS_ReorderPurePaks()
  %384 = call i32 (...) @FS_Path_f()
  %385 = load i32, i32* @qfalse, align 4
  %386 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_gamedirvar, align 8
  %387 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 8
  %388 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  %389 = load i64, i64* @fs_packFiles, align 8
  %390 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i64 %389)
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i8* @Sys_DefaultInstallPath(...) #1

declare dso_local i8* @Sys_DefaultHomePath(...) #1

declare dso_local i32 @Cvar_ForceReset(i8*) #1

declare dso_local i32 @FS_FilenameCompare(i8*, i8*) #1

declare dso_local i64 @FS_InvalidGameDir(i8*) #1

declare dso_local i32 @Com_Error(i32, i8*, i8*) #1

declare dso_local i8* @Sys_GogPath(...) #1

declare dso_local i32 @FS_AddGameDirectory(i8*, i8*) #1

declare dso_local i8* @Sys_SteamPath(...) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @FS_CreatePath(i8*) #1

declare dso_local i32 @Com_ReadCDKey(i32) #1

declare dso_local i32 @Com_AppendCDKey(i8*) #1

declare dso_local i32 @Cmd_AddCommand(i8*, i32 (...)*) #1

declare dso_local i32 @FS_Path_f(...) #1

declare dso_local i32 @FS_Dir_f(...) #1

declare dso_local i32 @FS_NewDir_f(...) #1

declare dso_local i32 @FS_TouchFile_f(...) #1

declare dso_local i32 @FS_Which_f(...) #1

declare dso_local i32 @FS_ReorderPurePaks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
