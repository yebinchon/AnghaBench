; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_SV_FOpenFileRead.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_SV_FOpenFileRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, i8*, i32, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i64* }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_16__ = type { i64* }

@fs_searchpaths = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Filesystem call made without initialization\00", align 1
@qfalse = common dso_local global i8* null, align 8
@fsh = common dso_local global %struct.TYPE_12__* null, align 8
@fs_homepath = common dso_local global %struct.TYPE_15__* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fs_debug = common dso_local global %struct.TYPE_17__* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"FS_SV_FOpenFileRead (fs_homepath): %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@fs_basepath = common dso_local global %struct.TYPE_18__* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"FS_SV_FOpenFileRead (fs_basepath): %s\0A\00", align 1
@fs_temporarypath = common dso_local global %struct.TYPE_13__* null, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"FS_SV_FOpenFileRead (fs_temporarypath): %s\0A\00", align 1
@fs_steampath = common dso_local global %struct.TYPE_14__* null, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"FS_SV_FOpenFileRead (fs_steampath): %s\0A\00", align 1
@fs_gogpath = common dso_local global %struct.TYPE_16__* null, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"FS_SV_FOpenFileRead (fs_gogpath): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FS_SV_FOpenFileRead(i8* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @fs_searchpaths, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ERR_FATAL, align 4
  %12 = call i32 @Com_Error(i32 %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %2
  %14 = call i64 (...) @FS_HandleForFile()
  store i64 %14, i64* %7, align 8
  %15 = load i8*, i8** @qfalse, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  store i8* %15, i8** %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @Q_strncpyz(i32 %24, i8* %25, i32 4)
  %27 = call i32 (...) @S_ClearSoundBuffer()
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fs_homepath, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @FS_BuildOSPath(i64* %30, i8* %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fs_debug, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %13
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @Com_Printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %13
  %47 = load i8*, i8** %6, align 8
  %48 = call i8* @Sys_FOpen(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i8* %48, i8** %54, align 8
  %55 = load i8*, i8** @qfalse, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  store i8* %55, i8** %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %268, label %68

68:                                               ; preds = %46
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fs_homepath, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** @fs_basepath, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = call i64 @Q_stricmp(i64* %71, i64* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %68
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** @fs_basepath, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i8* @FS_BuildOSPath(i64* %80, i8* %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %82, i8** %6, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fs_debug, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @Com_Printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %93, %77
  %97 = load i8*, i8** %6, align 8
  %98 = call i8* @Sys_FOpen(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i8* %98, i8** %104, align 8
  %105 = load i8*, i8** @qfalse, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  store i8* %105, i8** %109, align 8
  br label %110

110:                                              ; preds = %96, %68
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %159, label %119

119:                                              ; preds = %110
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fs_temporarypath, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %159

126:                                              ; preds = %119
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fs_temporarypath, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i8*, i8** %4, align 8
  %131 = call i8* @FS_BuildOSPath(i64* %129, i8* %130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %131, i8** %6, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fs_debug, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %126
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @Com_Printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %142, %126
  %146 = load i8*, i8** %6, align 8
  %147 = call i8* @Sys_FOpen(i8* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %149 = load i64, i64* %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  store i8* %147, i8** %153, align 8
  %154 = load i8*, i8** @qfalse, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  store i8* %154, i8** %158, align 8
  br label %159

159:                                              ; preds = %145, %119, %110
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %161 = load i64, i64* %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %208, label %168

168:                                              ; preds = %159
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_steampath, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %208

175:                                              ; preds = %168
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_steampath, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = load i8*, i8** %4, align 8
  %180 = call i8* @FS_BuildOSPath(i64* %178, i8* %179, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %180, i8** %6, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @strlen(i8* %182)
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %181, i64 %185
  store i8 0, i8* %186, align 1
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fs_debug, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %175
  %192 = load i8*, i8** %6, align 8
  %193 = call i32 @Com_Printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %192)
  br label %194

194:                                              ; preds = %191, %175
  %195 = load i8*, i8** %6, align 8
  %196 = call i8* @Sys_FOpen(i8* %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %198 = load i64, i64* %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  store i8* %196, i8** %202, align 8
  %203 = load i8*, i8** @qfalse, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %205 = load i64, i64* %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  store i8* %203, i8** %207, align 8
  br label %208

208:                                              ; preds = %194, %168, %159
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %210 = load i64, i64* %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %257, label %217

217:                                              ; preds = %208
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fs_gogpath, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %257

224:                                              ; preds = %217
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fs_gogpath, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = load i64*, i64** %226, align 8
  %228 = load i8*, i8** %4, align 8
  %229 = call i8* @FS_BuildOSPath(i64* %227, i8* %228, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %229, i8** %6, align 8
  %230 = load i8*, i8** %6, align 8
  %231 = load i8*, i8** %6, align 8
  %232 = call i32 @strlen(i8* %231)
  %233 = sub nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %230, i64 %234
  store i8 0, i8* %235, align 1
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fs_debug, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %224
  %241 = load i8*, i8** %6, align 8
  %242 = call i32 @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %241)
  br label %243

243:                                              ; preds = %240, %224
  %244 = load i8*, i8** %6, align 8
  %245 = call i8* @Sys_FOpen(i8* %244, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %247 = load i64, i64* %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  store i8* %245, i8** %251, align 8
  %252 = load i8*, i8** @qfalse, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %254 = load i64, i64* %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 1
  store i8* %252, i8** %256, align 8
  br label %257

257:                                              ; preds = %243, %217, %208
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsh, align 8
  %259 = load i64, i64* %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %257
  store i64 0, i64* %7, align 8
  br label %267

267:                                              ; preds = %266, %257
  br label %268

268:                                              ; preds = %267, %46
  %269 = load i64, i64* %7, align 8
  %270 = load i64*, i64** %5, align 8
  store i64 %269, i64* %270, align 8
  %271 = load i64, i64* %7, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = load i64, i64* %7, align 8
  %275 = call i64 @FS_filelength(i64 %274)
  store i64 %275, i64* %3, align 8
  br label %277

276:                                              ; preds = %268
  store i64 -1, i64* %3, align 8
  br label %277

277:                                              ; preds = %276, %273
  %278 = load i64, i64* %3, align 8
  ret i64 %278
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i64 @FS_HandleForFile(...) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

declare dso_local i32 @S_ClearSoundBuffer(...) #1

declare dso_local i8* @FS_BuildOSPath(i64*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local i8* @Sys_FOpen(i8*, i8*) #1

declare dso_local i64 @Q_stricmp(i64*, i64*) #1

declare dso_local i64 @FS_filelength(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
