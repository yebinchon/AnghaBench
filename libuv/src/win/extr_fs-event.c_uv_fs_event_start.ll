; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs-event.c_uv_fs_event_start.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs-event.c_uv_fs_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i8*, i8*, i64, i8*, i8*, i32, %struct.TYPE_13__, %struct.TYPE_10__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"uv__malloc\00", align 1
@CP_UTF8 = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FILE_LIST_DIRECTORY = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@FILE_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@uv_directory_watcher_buffer_size = common dso_local global i32 0, align 4
@UV_FS_EVENT_RECURSIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_FILE_NAME = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_DIR_NAME = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_SIZE = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_LAST_WRITE = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_LAST_ACCESS = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_CREATION = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_SECURITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_fs_event_start(%struct.TYPE_14__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %17, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = call i64 @uv__is_active(%struct.TYPE_14__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @UV_EINVAL, align 4
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %366

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @uv__strdup(i8* %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %46 = call i32 @uv_fatal_error(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %32
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = call i32 @uv__handle_start(%struct.TYPE_14__* %48)
  %50 = load i32, i32* @CP_UTF8, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @MultiByteToWideChar(i32 %50, i32 0, i8* %51, i32 -1, i8* null, i32 0)
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 1
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @uv__malloc(i32 %56)
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %17, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %47
  %62 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %63 = call i32 @uv_fatal_error(i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %47
  %65 = load i32, i32* @CP_UTF8, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = udiv i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = call i32 @MultiByteToWideChar(i32 %65, i32 0, i8* %66, i32 -1, i8* %67, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %64
  %75 = call i32 (...) @GetLastError()
  %76 = call i32 @uv_translate_sys_error(i32 %75)
  store i32 %76, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %366

77:                                               ; preds = %64
  %78 = load i8*, i8** %17, align 8
  %79 = call i32 @GetFileAttributesW(i8* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 (...) @GetLastError()
  store i32 %84, i32* %14, align 4
  br label %292

85:                                               ; preds = %77
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %136

94:                                               ; preds = %85
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @GetLongPathNameW(i8* %95, i8* null, i32 0)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %134

99:                                               ; preds = %94
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 1
  %103 = trunc i64 %102 to i32
  %104 = call i64 @uv__malloc(i32 %103)
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %21, align 8
  %106 = load i8*, i8** %21, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %99
  %109 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %110 = call i32 @uv_fatal_error(i32 %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %99
  %112 = load i8*, i8** %17, align 8
  %113 = load i8*, i8** %21, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @GetLongPathNameW(i8* %112, i8* %113, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load i8*, i8** %21, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 0, i8* %122, align 1
  br label %126

123:                                              ; preds = %111
  %124 = load i8*, i8** %21, align 8
  %125 = call i32 @uv__free(i8* %124)
  store i8* null, i8** %21, align 8
  br label %126

126:                                              ; preds = %123, %118
  %127 = load i8*, i8** %21, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i8*, i8** %17, align 8
  %131 = call i32 @uv__free(i8* %130)
  %132 = load i8*, i8** %21, align 8
  store i8* %132, i8** %17, align 8
  br label %133

133:                                              ; preds = %129, %126
  br label %134

134:                                              ; preds = %133, %94
  %135 = load i8*, i8** %17, align 8
  store i8* %135, i8** %16, align 8
  br label %163

136:                                              ; preds = %85
  %137 = load i8*, i8** %17, align 8
  %138 = call i32 @ARRAY_SIZE(i8* %26)
  %139 = call i64 @GetShortPathNameW(i8* %137, i8* %26, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i8* %26, i8** %20, align 8
  br label %143

142:                                              ; preds = %136
  store i8* null, i8** %20, align 8
  br label %143

143:                                              ; preds = %142, %141
  %144 = load i8*, i8** %17, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = call i64 @uv_split_path(i8* %144, i8** %15, i8** %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = call i32 (...) @GetLastError()
  store i32 %150, i32* %14, align 4
  br label %292

151:                                              ; preds = %143
  %152 = load i8*, i8** %20, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = call i64 @uv_split_path(i8* %152, i8** null, i8** %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = call i32 (...) @GetLastError()
  store i32 %158, i32* %14, align 4
  br label %292

159:                                              ; preds = %151
  %160 = load i8*, i8** %15, align 8
  store i8* %160, i8** %16, align 8
  %161 = load i8*, i8** %17, align 8
  %162 = call i32 @uv__free(i8* %161)
  store i8* null, i8** %17, align 8
  br label %163

163:                                              ; preds = %159, %134
  %164 = load i8*, i8** %16, align 8
  %165 = load i32, i32* @FILE_LIST_DIRECTORY, align 4
  %166 = load i32, i32* @FILE_SHARE_READ, align 4
  %167 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @OPEN_EXISTING, align 4
  %172 = load i32, i32* @FILE_FLAG_BACKUP_SEMANTICS, align 4
  %173 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  %174 = or i32 %172, %173
  %175 = call i64 @CreateFileW(i8* %164, i32 %165, i32 %170, i32* null, i32 %171, i32 %174, i32* null)
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 3
  store i64 %175, i64* %177, align 8
  %178 = load i8*, i8** %15, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %163
  %181 = load i8*, i8** %15, align 8
  %182 = call i32 @uv__free(i8* %181)
  store i8* null, i8** %15, align 8
  br label %183

183:                                              ; preds = %180, %163
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = call i32 (...) @GetLastError()
  store i32 %190, i32* %14, align 4
  br label %292

191:                                              ; preds = %183
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %201 = ptrtoint %struct.TYPE_14__* %200 to i32
  %202 = call i32* @CreateIoCompletionPort(i64 %194, i32 %199, i32 %201, i32 0)
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %206

204:                                              ; preds = %191
  %205 = call i32 (...) @GetLastError()
  store i32 %205, i32* %14, align 4
  br label %292

206:                                              ; preds = %191
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 4
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %217, label %211

211:                                              ; preds = %206
  %212 = load i32, i32* @uv_directory_watcher_buffer_size, align 4
  %213 = call i64 @uv__malloc(i32 %212)
  %214 = inttoptr i64 %213 to i8*
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 4
  store i8* %214, i8** %216, align 8
  br label %217

217:                                              ; preds = %211, %206
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 4
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %224 = call i32 @uv_fatal_error(i32 %223, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %217
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = call i32 @memset(i32* %230, i32 0, i32 4)
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 4
  %237 = load i8*, i8** %236, align 8
  %238 = load i32, i32* @uv_directory_watcher_buffer_size, align 4
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* @UV_FS_EVENT_RECURSIVE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %225
  %244 = load i32, i32* @TRUE, align 4
  br label %247

245:                                              ; preds = %225
  %246 = load i32, i32* @FALSE, align 4
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i32 [ %244, %243 ], [ %246, %245 ]
  %249 = load i32, i32* @FILE_NOTIFY_CHANGE_FILE_NAME, align 4
  %250 = load i32, i32* @FILE_NOTIFY_CHANGE_DIR_NAME, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @FILE_NOTIFY_CHANGE_ATTRIBUTES, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @FILE_NOTIFY_CHANGE_SIZE, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @FILE_NOTIFY_CHANGE_LAST_WRITE, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @FILE_NOTIFY_CHANGE_LAST_ACCESS, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @FILE_NOTIFY_CHANGE_CREATION, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @FILE_NOTIFY_CHANGE_SECURITY, align 4
  %263 = or i32 %261, %262
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 7
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = call i32 @ReadDirectoryChangesW(i64 %234, i8* %237, i32 %238, i32 %248, i32 %263, i32* null, i32* %268, i32* null)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %247
  %272 = call i32 (...) @GetLastError()
  store i32 %272, i32* %14, align 4
  br label %292

273:                                              ; preds = %247
  %274 = load i32, i32* %11, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %273
  %277 = load i8*, i8** %17, align 8
  %278 = icmp ne i8* %277, null
  %279 = zext i1 %278 to i32
  br label %284

280:                                              ; preds = %273
  %281 = load i8*, i8** %17, align 8
  %282 = icmp eq i8* %281, null
  %283 = zext i1 %282 to i32
  br label %284

284:                                              ; preds = %280, %276
  %285 = phi i32 [ %279, %276 ], [ %283, %280 ]
  %286 = call i32 @assert(i32 %285)
  %287 = load i8*, i8** %17, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 5
  store i8* %287, i8** %289, align 8
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 6
  store i32 1, i32* %291, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %366

292:                                              ; preds = %271, %204, %189, %157, %149, %83
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %304

297:                                              ; preds = %292
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @uv__free(i8* %300)
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 0
  store i8* null, i8** %303, align 8
  br label %304

304:                                              ; preds = %297, %292
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %316

309:                                              ; preds = %304
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 1
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 @uv__free(i8* %312)
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 1
  store i8* null, i8** %315, align 8
  br label %316

316:                                              ; preds = %309, %304
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 2
  %319 = load i8*, i8** %318, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %328

321:                                              ; preds = %316
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 2
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 @uv__free(i8* %324)
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 2
  store i8* null, i8** %327, align 8
  br label %328

328:                                              ; preds = %321, %316
  %329 = load i8*, i8** %17, align 8
  %330 = call i32 @uv__free(i8* %329)
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %344

336:                                              ; preds = %328
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 3
  %339 = load i64, i64* %338, align 8
  %340 = call i32 @CloseHandle(i64 %339)
  %341 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 3
  store i64 %341, i64* %343, align 8
  br label %344

344:                                              ; preds = %336, %328
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 4
  %347 = load i8*, i8** %346, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %356

349:                                              ; preds = %344
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 4
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 @uv__free(i8* %352)
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 4
  store i8* null, i8** %355, align 8
  br label %356

356:                                              ; preds = %349, %344
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %358 = call i64 @uv__is_active(%struct.TYPE_14__* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %356
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %362 = call i32 @uv__handle_stop(%struct.TYPE_14__* %361)
  br label %363

363:                                              ; preds = %360, %356
  %364 = load i32, i32* %14, align 4
  %365 = call i32 @uv_translate_sys_error(i32 %364)
  store i32 %365, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %366

366:                                              ; preds = %363, %284, %74, %30
  %367 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %367)
  %368 = load i32, i32* %5, align 4
  ret i32 %368
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @uv__is_active(%struct.TYPE_14__*) #2

declare dso_local i8* @uv__strdup(i8*) #2

declare dso_local i32 @uv_fatal_error(i32, i8*) #2

declare dso_local i32 @uv__handle_start(%struct.TYPE_14__*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #2

declare dso_local i64 @uv__malloc(i32) #2

declare dso_local i32 @uv_translate_sys_error(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @GetFileAttributesW(i8*) #2

declare dso_local i32 @GetLongPathNameW(i8*, i8*, i32) #2

declare dso_local i32 @uv__free(i8*) #2

declare dso_local i64 @GetShortPathNameW(i8*, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i64 @uv_split_path(i8*, i8**, i8**) #2

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32* @CreateIoCompletionPort(i64, i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ReadDirectoryChangesW(i64, i8*, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @uv__handle_stop(%struct.TYPE_14__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
