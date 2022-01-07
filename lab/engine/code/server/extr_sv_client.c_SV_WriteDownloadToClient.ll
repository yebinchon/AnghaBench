; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_WriteDownloadToClient.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_WriteDownloadToClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i32, i32*, i32, i64*, i8*, i64, i64* }
%struct.TYPE_8__ = type { i64 }

@MAX_QPATH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pk3\00", align 1
@BASETA = common dso_local global i32 0, align 4
@NUM_TA_PAKS = common dso_local global i32 0, align 4
@BASEGAME = common dso_local global i32 0, align 4
@NUM_ID_PAKS = common dso_local global i32 0, align 4
@sv_allowDownload = common dso_local global %struct.TYPE_9__* null, align 8
@DLF_ENABLE = common dso_local global i32 0, align 4
@DLF_NO_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"clientDownload: %d : \22%s\22 is not referenced and cannot be downloaded.\0A\00", align 1
@svs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"File \22%s\22 is not referenced and cannot be downloaded.\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"clientDownload: %d : \22%s\22 cannot download id pk3 files\0A\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"Cannot autodownload Team Arena file \22%s\22\0AThe Team Arena mission pack can be found in your local game store.\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Cannot autodownload id pk3 file \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"clientDownload: %d : \22%s\22 download disabled\0A\00", align 1
@sv_pure = common dso_local global %struct.TYPE_8__* null, align 8
@.str.8 = private unnamed_addr constant [162 x i8] c"Could not download \22%s\22 because autodownloading is disabled on the server.\0A\0AYou will need to get this file elsewhere before you can connect to this pure server.\0A\00", align 1
@.str.9 = private unnamed_addr constant [219 x i8] c"Could not download \22%s\22 because autodownloading is disabled on the server.\0A\0AThe server you are connecting to is not a pure server, set autodownload to No in your settings and you might be able to join the game anyway.\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"clientDownload: %d : \22%s\22 file not found on server\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"File \22%s\22 not found on server for autodownloading.\0A\00", align 1
@svc_download = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"clientDownload: %d : beginning \22%s\22\0A\00", align 1
@MAX_DOWNLOAD_WINDOW = common dso_local global i64 0, align 8
@MAX_DOWNLOAD_BLKSIZE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [39 x i8] c"clientDownload: %d : writing block %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SV_WriteDownloadToClient(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %7, align 4
  %17 = load i32, i32* @MAX_QPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 10
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %524

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %277, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** @qfalse, align 8
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load i8*, i8** @qfalse, align 8
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = trunc i64 %18 to i32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 10
  %40 = load i64*, i64** %39, align 8
  %41 = call i32 @Com_sprintf(i8* %20, i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %40)
  %42 = call i8* @strrchr(i8* %20, i8 signext 46)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %86

45:                                               ; preds = %32
  %46 = load i8*, i8** %11, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i32 @Q_stricmp(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %85, label %51

51:                                               ; preds = %45
  %52 = call i8* (...) @FS_ReferencedPakNames()
  store i8* %52, i8** %16, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = call i32 @Cmd_TokenizeStringIgnoreQuotes(i8* %53)
  %55 = call i32 (...) @Cmd_Argc()
  store i32 %55, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %81, %51
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @Cmd_Argv(i32 %61)
  %63 = call i32 @FS_FilenameCompare(i32 %62, i8* %20)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  %66 = load i32, i32* @BASETA, align 4
  %67 = load i32, i32* @NUM_TA_PAKS, align 4
  %68 = call i32 @FS_idPak(i8* %20, i32 %66, i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @BASEGAME, align 4
  %74 = load i32, i32* @NUM_ID_PAKS, align 4
  %75 = call i32 @FS_idPak(i8* %20, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %72, %65
  %78 = phi i1 [ true, %65 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %14, align 4
  br label %84

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %56

84:                                               ; preds = %77, %56
  br label %85

85:                                               ; preds = %84, %45
  br label %86

86:                                               ; preds = %85, %32
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 9
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sv_allowDownload, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DLF_ENABLE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %86
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sv_allowDownload, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DLF_NO_UDP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %105
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 10
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 9
  %114 = call i32 @FS_SV_FOpenFileRead(i64* %111, i64* %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = icmp slt i32 %114, 0
  br i1 %117, label %118, label %254

118:                                              ; preds = %108, %105, %102, %95, %86
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svs, i32 0, i32 1), align 8
  %124 = ptrtoint %struct.TYPE_6__* %122 to i64
  %125 = ptrtoint %struct.TYPE_6__* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 88
  %128 = trunc i64 %127 to i32
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 10
  %131 = load i64*, i64** %130, align 8
  %132 = call i32 @Com_Printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %128, i64* %131)
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 10
  %136 = load i64*, i64** %135, align 8
  %137 = call i32 @Com_sprintf(i8* %133, i32 1024, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64* %136)
  br label %230

138:                                              ; preds = %118
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %138
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svs, i32 0, i32 1), align 8
  %144 = ptrtoint %struct.TYPE_6__* %142 to i64
  %145 = ptrtoint %struct.TYPE_6__* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 88
  %148 = trunc i64 %147 to i32
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 10
  %151 = load i64*, i64** %150, align 8
  %152 = call i32 @Com_Printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %148, i64* %151)
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %141
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 10
  %159 = load i64*, i64** %158, align 8
  %160 = call i32 @Com_sprintf(i8* %156, i32 1024, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i64* %159)
  br label %167

161:                                              ; preds = %141
  %162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 10
  %165 = load i64*, i64** %164, align 8
  %166 = call i32 @Com_sprintf(i8* %162, i32 1024, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64* %165)
  br label %167

167:                                              ; preds = %161, %155
  br label %229

168:                                              ; preds = %138
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sv_allowDownload, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @DLF_ENABLE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %168
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sv_allowDownload, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @DLF_NO_UDP, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %211

182:                                              ; preds = %175, %168
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svs, i32 0, i32 1), align 8
  %185 = ptrtoint %struct.TYPE_6__* %183 to i64
  %186 = ptrtoint %struct.TYPE_6__* %184 to i64
  %187 = sub i64 %185, %186
  %188 = sdiv exact i64 %187, 88
  %189 = trunc i64 %188 to i32
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 10
  %192 = load i64*, i64** %191, align 8
  %193 = call i32 @Com_Printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %189, i64* %192)
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sv_pure, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %182
  %199 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 10
  %202 = load i64*, i64** %201, align 8
  %203 = call i32 @Com_sprintf(i8* %199, i32 1024, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.8, i64 0, i64 0), i64* %202)
  br label %210

204:                                              ; preds = %182
  %205 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 10
  %208 = load i64*, i64** %207, align 8
  %209 = call i32 @Com_sprintf(i8* %205, i32 1024, i8* getelementptr inbounds ([219 x i8], [219 x i8]* @.str.9, i64 0, i64 0), i64* %208)
  br label %210

210:                                              ; preds = %204, %198
  br label %228

211:                                              ; preds = %175
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svs, i32 0, i32 1), align 8
  %214 = ptrtoint %struct.TYPE_6__* %212 to i64
  %215 = ptrtoint %struct.TYPE_6__* %213 to i64
  %216 = sub i64 %214, %215
  %217 = sdiv exact i64 %216, 88
  %218 = trunc i64 %217 to i32
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 10
  %221 = load i64*, i64** %220, align 8
  %222 = call i32 @Com_Printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %218, i64* %221)
  %223 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 10
  %226 = load i64*, i64** %225, align 8
  %227 = call i32 @Com_sprintf(i8* %223, i32 1024, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i64* %226)
  br label %228

228:                                              ; preds = %211, %210
  br label %229

229:                                              ; preds = %228, %167
  br label %230

230:                                              ; preds = %229, %121
  %231 = load i32*, i32** %5, align 8
  %232 = load i32, i32* @svc_download, align 4
  %233 = call i32 @MSG_WriteByte(i32* %231, i32 %232)
  %234 = load i32*, i32** %5, align 8
  %235 = call i32 @MSG_WriteShort(i32* %234, i32 0)
  %236 = load i32*, i32** %5, align 8
  %237 = call i32 @MSG_WriteLong(i32* %236, i32 -1)
  %238 = load i32*, i32** %5, align 8
  %239 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %240 = call i32 @MSG_WriteString(i32* %238, i8* %239)
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 10
  %243 = load i64*, i64** %242, align 8
  store i64 0, i64* %243, align 8
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 9
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %230
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 9
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @FS_FCloseFile(i64 %251)
  br label %253

253:                                              ; preds = %248, %230
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %524

254:                                              ; preds = %108
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svs, i32 0, i32 1), align 8
  %257 = ptrtoint %struct.TYPE_6__* %255 to i64
  %258 = ptrtoint %struct.TYPE_6__* %256 to i64
  %259 = sub i64 %257, %258
  %260 = sdiv exact i64 %259, 88
  %261 = trunc i64 %260 to i32
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 10
  %264 = load i64*, i64** %263, align 8
  %265 = call i32 @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %261, i64* %264)
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 3
  store i64 0, i64* %267, align 8
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 2
  store i64 0, i64* %269, align 8
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  store i64 0, i64* %271, align 8
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 4
  store i32 0, i32* %273, align 8
  %274 = load i8*, i8** @qfalse, align 8
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 8
  store i8* %274, i8** %276, align 8
  br label %277

277:                                              ; preds = %254, %27
  br label %278

278:                                              ; preds = %355, %277
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = sub i64 %281, %284
  %286 = load i64, i64* @MAX_DOWNLOAD_WINDOW, align 8
  %287 = icmp ult i64 %285, %286
  br i1 %287, label %288, label %296

288:                                              ; preds = %278
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %291, %294
  br label %296

296:                                              ; preds = %288, %278
  %297 = phi i1 [ false, %278 ], [ %295, %288 ]
  br i1 %297, label %298, label %371

298:                                              ; preds = %296
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @MAX_DOWNLOAD_WINDOW, align 8
  %303 = urem i64 %301, %302
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %6, align 4
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 7
  %307 = load i64*, i64** %306, align 8
  %308 = load i32, i32* %6, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %307, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %298
  %314 = load i32, i32* @MAX_DOWNLOAD_BLKSIZE, align 4
  %315 = call i64 @Z_Malloc(i32 %314)
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 7
  %318 = load i64*, i64** %317, align 8
  %319 = load i32, i32* %6, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %318, i64 %320
  store i64 %315, i64* %321, align 8
  br label %322

322:                                              ; preds = %313, %298
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 7
  %325 = load i64*, i64** %324, align 8
  %326 = load i32, i32* %6, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = load i32, i32* @MAX_DOWNLOAD_BLKSIZE, align 4
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 9
  %333 = load i64, i64* %332, align 8
  %334 = call i32 @FS_Read(i64 %329, i32 %330, i64 %333)
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 5
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %6, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  store i32 %334, i32* %340, align 4
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 5
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %6, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %355

349:                                              ; preds = %322
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 4
  store i32 %352, i32* %354, align 8
  br label %371

355:                                              ; preds = %322
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 5
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %6, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 4
  %365 = load i32, i32* %364, align 8
  %366 = add nsw i32 %365, %362
  store i32 %366, i32* %364, align 8
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = add i64 %369, 1
  store i64 %370, i64* %368, align 8
  br label %278

371:                                              ; preds = %349, %296
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = icmp eq i32 %374, %377
  br i1 %378, label %379, label %411

379:                                              ; preds = %371
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 8
  %382 = load i8*, i8** %381, align 8
  %383 = icmp ne i8* %382, null
  br i1 %383, label %411, label %384

384:                                              ; preds = %379
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = sub i64 %387, %390
  %392 = load i64, i64* @MAX_DOWNLOAD_WINDOW, align 8
  %393 = icmp ult i64 %391, %392
  br i1 %393, label %394, label %411

394:                                              ; preds = %384
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 5
  %397 = load i32*, i32** %396, align 8
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @MAX_DOWNLOAD_WINDOW, align 8
  %402 = urem i64 %400, %401
  %403 = getelementptr inbounds i32, i32* %397, i64 %402
  store i32 0, i32* %403, align 4
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = add i64 %406, 1
  store i64 %407, i64* %405, align 8
  %408 = load i8*, i8** @qtrue, align 8
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 8
  store i8* %408, i8** %410, align 8
  br label %411

411:                                              ; preds = %394, %384, %379, %371
  %412 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 2
  %414 = load i64, i64* %413, align 8
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = icmp eq i64 %414, %417
  br i1 %418, label %419, label %420

419:                                              ; preds = %411
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %524

420:                                              ; preds = %411
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 3
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 1
  %426 = load i64, i64* %425, align 8
  %427 = icmp eq i64 %423, %426
  br i1 %427, label %428, label %443

428:                                              ; preds = %420
  %429 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svs, i32 0, i32 0), align 8
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 6
  %432 = load i32, i32* %431, align 8
  %433 = sub nsw i32 %429, %432
  %434 = icmp sgt i32 %433, 1000
  br i1 %434, label %435, label %441

435:                                              ; preds = %428
  %436 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 2
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 3
  store i64 %438, i64* %440, align 8
  br label %442

441:                                              ; preds = %428
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %524

442:                                              ; preds = %435
  br label %443

443:                                              ; preds = %442, %420
  %444 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 3
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @MAX_DOWNLOAD_WINDOW, align 8
  %448 = urem i64 %446, %447
  %449 = trunc i64 %448 to i32
  store i32 %449, i32* %6, align 4
  %450 = load i32*, i32** %5, align 8
  %451 = load i32, i32* @svc_download, align 4
  %452 = call i32 @MSG_WriteByte(i32* %450, i32 %451)
  %453 = load i32*, i32** %5, align 8
  %454 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i32 0, i32 3
  %456 = load i64, i64* %455, align 8
  %457 = trunc i64 %456 to i32
  %458 = call i32 @MSG_WriteShort(i32* %453, i32 %457)
  %459 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %459, i32 0, i32 3
  %461 = load i64, i64* %460, align 8
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %463, label %469

463:                                              ; preds = %443
  %464 = load i32*, i32** %5, align 8
  %465 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = call i32 @MSG_WriteLong(i32* %464, i32 %467)
  br label %469

469:                                              ; preds = %463, %443
  %470 = load i32*, i32** %5, align 8
  %471 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %471, i32 0, i32 5
  %473 = load i32*, i32** %472, align 8
  %474 = load i32, i32* %6, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, i32* %473, i64 %475
  %477 = load i32, i32* %476, align 4
  %478 = call i32 @MSG_WriteShort(i32* %470, i32 %477)
  %479 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %480 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %479, i32 0, i32 5
  %481 = load i32*, i32** %480, align 8
  %482 = load i32, i32* %6, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %481, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %504

487:                                              ; preds = %469
  %488 = load i32*, i32** %5, align 8
  %489 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i32 0, i32 7
  %491 = load i64*, i64** %490, align 8
  %492 = load i32, i32* %6, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i64, i64* %491, i64 %493
  %495 = load i64, i64* %494, align 8
  %496 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %496, i32 0, i32 5
  %498 = load i32*, i32** %497, align 8
  %499 = load i32, i32* %6, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %498, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @MSG_WriteData(i32* %488, i64 %495, i32 %502)
  br label %504

504:                                              ; preds = %487, %469
  %505 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %506 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svs, i32 0, i32 1), align 8
  %507 = ptrtoint %struct.TYPE_6__* %505 to i64
  %508 = ptrtoint %struct.TYPE_6__* %506 to i64
  %509 = sub i64 %507, %508
  %510 = sdiv exact i64 %509, 88
  %511 = trunc i64 %510 to i32
  %512 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %513 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %512, i32 0, i32 3
  %514 = load i64, i64* %513, align 8
  %515 = trunc i64 %514 to i32
  %516 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %511, i32 %515)
  %517 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %517, i32 0, i32 3
  %519 = load i64, i64* %518, align 8
  %520 = add i64 %519, 1
  store i64 %520, i64* %518, align 8
  %521 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svs, i32 0, i32 0), align 8
  %522 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %523 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %522, i32 0, i32 6
  store i32 %521, i32* %523, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %524

524:                                              ; preds = %504, %441, %419, %253, %26
  %525 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %525)
  %526 = load i32, i32* %3, align 4
  ret i32 %526
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i64*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i8* @FS_ReferencedPakNames(...) #2

declare dso_local i32 @Cmd_TokenizeStringIgnoreQuotes(i8*) #2

declare dso_local i32 @Cmd_Argc(...) #2

declare dso_local i32 @FS_FilenameCompare(i32, i8*) #2

declare dso_local i32 @Cmd_Argv(i32) #2

declare dso_local i32 @FS_idPak(i8*, i32, i32) #2

declare dso_local i32 @FS_SV_FOpenFileRead(i64*, i64*) #2

declare dso_local i32 @Com_Printf(i8*, i32, i64*) #2

declare dso_local i32 @MSG_WriteByte(i32*, i32) #2

declare dso_local i32 @MSG_WriteShort(i32*, i32) #2

declare dso_local i32 @MSG_WriteLong(i32*, i32) #2

declare dso_local i32 @MSG_WriteString(i32*, i8*) #2

declare dso_local i32 @FS_FCloseFile(i64) #2

declare dso_local i64 @Z_Malloc(i32) #2

declare dso_local i32 @FS_Read(i64, i32, i64) #2

declare dso_local i32 @MSG_WriteData(i32*, i64, i32) #2

declare dso_local i32 @Com_DPrintf(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
