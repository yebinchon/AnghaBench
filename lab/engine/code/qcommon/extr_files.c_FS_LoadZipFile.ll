; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_LoadZipFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_LoadZipFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8*, i32, %struct.TYPE_11__*, i8*, i8*, %struct.TYPE_11__**, i32 }
%struct.TYPE_11__ = type { i8*, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i8* }

@MAX_ZPATH = common dso_local global i32 0, align 4
@UNZ_OK = common dso_local global i32 0, align 4
@fs_checksumFeed = common dso_local global i8* null, align 8
@MAX_FILEHASH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".pk3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i8*, i8*)* @FS_LoadZipFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @FS_LoadZipFile(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i32, i32* @MAX_ZPATH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %17, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @unzOpen(i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @unzGetGlobalInfo(i32 %27, %struct.TYPE_8__* %10)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @UNZ_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  store i32 1, i32* %20, align 4
  br label %317

33:                                               ; preds = %2
  store i32 0, i32* %15, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @unzGoToFirstFile(i32 %34)
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %56, %33
  %37 = load i32, i32* %14, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = trunc i64 %22 to i32
  %44 = call i32 @unzGetCurrentFileInfo(i32 %42, %struct.TYPE_9__* %13, i8* %24, i32 %43, i32* null, i32 0, i32* null, i32 0)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @UNZ_OK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %59

49:                                               ; preds = %41
  %50 = call i32 @strlen(i8* %24)
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @unzGoToNextFile(i32 %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %36

59:                                               ; preds = %48, %36
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 32
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %63, %65
  %67 = trunc i64 %66 to i32
  %68 = call i8* @Z_Malloc(i32 %67)
  %69 = bitcast i8* %68 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %6, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = bitcast %struct.TYPE_11__* %70 to i8*
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 32
  %76 = getelementptr inbounds i8, i8* %71, i64 %75
  store i8* %76, i8** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i8* @Z_Malloc(i32 %82)
  %84 = bitcast i8* %83 to i32*
  store i32* %84, i32** %18, align 8
  %85 = load i8*, i8** @fs_checksumFeed, align 8
  %86 = call i8* @LittleLong(i8* %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32*, i32** %18, align 8
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  store i32 1, i32* %14, align 4
  br label %93

93:                                               ; preds = %104, %59
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @MAX_FILEHASH_SIZE, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32, i32* %14, align 4
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %107

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %14, align 4
  %106 = shl i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %93

107:                                              ; preds = %102, %93
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 8
  %111 = add i64 72, %110
  %112 = trunc i64 %111 to i32
  %113 = call i8* @Z_Malloc(i32 %112)
  %114 = bitcast i8* %113 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %7, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = bitcast %struct.TYPE_10__* %118 to i8*
  %120 = getelementptr inbounds i8, i8* %119, i64 72
  %121 = bitcast i8* %120 to %struct.TYPE_11__**
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 7
  store %struct.TYPE_11__** %121, %struct.TYPE_11__*** %123, align 8
  store i32 0, i32* %14, align 4
  br label %124

124:                                              ; preds = %137, %107
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %124
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %133, i64 %135
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %136, align 8
  br label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %14, align 4
  br label %124

140:                                              ; preds = %124
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %4, align 8
  %145 = call i32 @Q_strncpyz(i8* %143, i8* %144, i32 8)
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = load i8*, i8** %5, align 8
  %150 = call i32 @Q_strncpyz(i8* %148, i8* %149, i32 8)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strlen(i8* %153)
  %155 = icmp sgt i32 %154, 4
  br i1 %155, label %156, label %180

156:                                              ; preds = %140
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @strlen(i8* %162)
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %159, i64 %164
  %166 = getelementptr inbounds i8, i8* %165, i64 -4
  %167 = call i32 @Q_stricmp(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %180, label %169

169:                                              ; preds = %156
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @strlen(i8* %175)
  %177 = sub nsw i32 %176, 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %172, i64 %178
  store i8 0, i8* %179, align 1
  br label %180

180:                                              ; preds = %169, %156, %140
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 8
  store i32 %181, i32* %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @unzGoToFirstFile(i32 %188)
  store i32 0, i32* %14, align 4
  br label %190

190:                                              ; preds = %277, %180
  %191 = load i32, i32* %14, align 4
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %195, label %280

195:                                              ; preds = %190
  %196 = load i32, i32* %8, align 4
  %197 = trunc i64 %22 to i32
  %198 = call i32 @unzGetCurrentFileInfo(i32 %196, %struct.TYPE_9__* %13, i8* %24, i32 %197, i32* null, i32 0, i32* null, i32 0)
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @UNZ_OK, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %280

203:                                              ; preds = %195
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = call i8* @LittleLong(i8* %209)
  %211 = ptrtoint i8* %210 to i32
  %212 = load i32*, i32** %18, align 8
  %213 = load i32, i32* %17, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %17, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  store i32 %211, i32* %216, align 4
  br label %217

217:                                              ; preds = %207, %203
  %218 = call i32 @Q_strlwr(i8* %24)
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @FS_HashFileName(i8* %24, i32 %221)
  store i64 %222, i64* %16, align 8
  %223 = load i8*, i8** %19, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  store i8* %223, i8** %228, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @strcpy(i8* %234, i8* %24)
  %236 = call i32 @strlen(i8* %24)
  %237 = add nsw i32 %236, 1
  %238 = load i8*, i8** %19, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %19, align 8
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @unzGetOffset(i32 %241)
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 3
  store i32 %242, i32* %247, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  store i64 %249, i64* %254, align 8
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 7
  %257 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %256, align 8
  %258 = load i64, i64* %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %257, i64 %258
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %259, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 2
  store %struct.TYPE_11__* %260, %struct.TYPE_11__** %265, align 8
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %267 = load i32, i32* %14, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i64 %268
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 7
  %272 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %271, align 8
  %273 = load i64, i64* %16, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %272, i64 %273
  store %struct.TYPE_11__* %269, %struct.TYPE_11__** %274, align 8
  %275 = load i32, i32* %8, align 4
  %276 = call i32 @unzGoToNextFile(i32 %275)
  br label %277

277:                                              ; preds = %217
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %14, align 4
  br label %190

280:                                              ; preds = %202, %190
  %281 = load i32*, i32** %18, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32, i32* %17, align 4
  %284 = sub nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = mul i64 4, %285
  %287 = trunc i64 %286 to i32
  %288 = call i8* @Com_BlockChecksum(i32* %282, i32 %287)
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 6
  store i8* %288, i8** %290, align 8
  %291 = load i32*, i32** %18, align 8
  %292 = load i32, i32* %17, align 4
  %293 = sext i32 %292 to i64
  %294 = mul i64 4, %293
  %295 = trunc i64 %294 to i32
  %296 = call i8* @Com_BlockChecksum(i32* %291, i32 %295)
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 5
  store i8* %296, i8** %298, align 8
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 6
  %301 = load i8*, i8** %300, align 8
  %302 = call i8* @LittleLong(i8* %301)
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 6
  store i8* %302, i8** %304, align 8
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 5
  %307 = load i8*, i8** %306, align 8
  %308 = call i8* @LittleLong(i8* %307)
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 5
  store i8* %308, i8** %310, align 8
  %311 = load i32*, i32** %18, align 8
  %312 = call i32 @Z_Free(i32* %311)
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 4
  store %struct.TYPE_11__* %313, %struct.TYPE_11__** %315, align 8
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %316, %struct.TYPE_10__** %3, align 8
  store i32 1, i32* %20, align 4
  br label %317

317:                                              ; preds = %280, %32
  %318 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %318)
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %319
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @unzOpen(i8*) #2

declare dso_local i32 @unzGetGlobalInfo(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @unzGoToFirstFile(i32) #2

declare dso_local i32 @unzGetCurrentFileInfo(i32, %struct.TYPE_9__*, i8*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @unzGoToNextFile(i32) #2

declare dso_local i8* @Z_Malloc(i32) #2

declare dso_local i8* @LittleLong(i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @Q_strlwr(i8*) #2

declare dso_local i64 @FS_HashFileName(i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @unzGetOffset(i32) #2

declare dso_local i8* @Com_BlockChecksum(i32*, i32) #2

declare dso_local i32 @Z_Free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
