; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_ListFilteredFiles.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_ListFilteredFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }

@MAX_FOUND_FILES = common dso_local global i32 0, align 4
@MAX_ZPATH = common dso_local global i32 0, align 4
@fs_searchpaths = common dso_local global %struct.TYPE_8__* null, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Filesystem call made without initialization\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@qfalse = common dso_local global i32 0, align 4
@fs_numServerPaks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @FS_ListFilteredFiles(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca %struct.TYPE_10__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8**, align 8
  %33 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %34 = load i32, i32* @MAX_FOUND_FILES, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %14, align 8
  %37 = alloca i8*, i64 %35, align 16
  store i64 %35, i64* %15, align 8
  %38 = load i32, i32* @MAX_ZPATH, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %25, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs_searchpaths, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %5
  %44 = load i32, i32* @ERR_FATAL, align 4
  %45 = call i32 @Com_Error(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %5
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i32*, i32** %10, align 8
  store i32 0, i32* %50, align 4
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %26, align 4
  br label %280

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strlen(i8* %56)
  store i32 %57, i32* %18, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %18, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 92
  br i1 %65, label %75, label %66

66:                                               ; preds = %55
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 47
  br i1 %74, label %75, label %78

75:                                               ; preds = %66, %55
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %18, align 4
  br label %78

78:                                               ; preds = %75, %66
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @strlen(i8* %79)
  store i32 %80, i32* %19, align 4
  store i32 0, i32* %12, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @FS_ReturnPath(i8* %81, i8* %40, i32* %21)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs_searchpaths, align 8
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %16, align 8
  br label %84

84:                                               ; preds = %241, %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %87, label %245

87:                                               ; preds = %84
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = icmp ne %struct.TYPE_9__* %90, null
  br i1 %91, label %92, label %189

92:                                               ; preds = %87
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = call i32 @FS_PakIsPure(%struct.TYPE_9__* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %241

99:                                               ; preds = %92
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %23, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %24, align 8
  store i32 0, i32* %17, align 4
  br label %106

106:                                              ; preds = %185, %99
  %107 = load i32, i32* %17, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %188

112:                                              ; preds = %106
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %27, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %112
  %122 = load i8*, i8** %9, align 8
  %123 = load i8*, i8** %27, align 8
  %124 = load i32, i32* @qfalse, align 4
  %125 = call i32 @Com_FilterPath(i8* %122, i8* %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %121
  br label %185

128:                                              ; preds = %121
  %129 = load i8*, i8** %27, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @FS_AddFileToList(i8* %129, i8** %37, i32 %130)
  store i32 %131, i32* %12, align 4
  br label %184

132:                                              ; preds = %112
  %133 = load i8*, i8** %27, align 8
  %134 = call i32 @FS_ReturnPath(i8* %133, i8* %40, i32* %29)
  store i32 %134, i32* %28, align 4
  %135 = load i32, i32* %29, align 4
  %136 = load i32, i32* %21, align 4
  %137 = sub nsw i32 %135, %136
  %138 = icmp sgt i32 %137, 2
  br i1 %138, label %149, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %28, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %139
  %144 = load i8*, i8** %27, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = load i32, i32* %18, align 4
  %147 = call i64 @Q_stricmpn(i8* %144, i8* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143, %139, %132
  br label %185

150:                                              ; preds = %143
  %151 = load i8*, i8** %27, align 8
  %152 = call i32 @strlen(i8* %151)
  store i32 %152, i32* %20, align 4
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %185

157:                                              ; preds = %150
  %158 = load i8*, i8** %27, align 8
  %159 = load i32, i32* %20, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = sub i64 0, %163
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  %166 = load i8*, i8** %8, align 8
  %167 = call i64 @Q_stricmp(i8* %165, i8* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  br label %185

170:                                              ; preds = %157
  %171 = load i32, i32* %18, align 4
  store i32 %171, i32* %22, align 4
  %172 = load i32, i32* %18, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %22, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %22, align 4
  br label %177

177:                                              ; preds = %174, %170
  %178 = load i8*, i8** %27, align 8
  %179 = load i32, i32* %22, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @FS_AddFileToList(i8* %181, i8** %37, i32 %182)
  store i32 %183, i32* %12, align 4
  br label %184

184:                                              ; preds = %177, %128
  br label %185

185:                                              ; preds = %184, %169, %156, %149, %127
  %186 = load i32, i32* %17, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %17, align 4
  br label %106

188:                                              ; preds = %106
  br label %240

189:                                              ; preds = %87
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = icmp ne %struct.TYPE_7__* %192, null
  br i1 %193, label %194, label %239

194:                                              ; preds = %189
  %195 = load i64, i64* @fs_numServerPaks, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %197
  br label %241

201:                                              ; preds = %197, %194
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i8*, i8** %7, align 8
  %213 = call i8* @FS_BuildOSPath(i32 %206, i32 %211, i8* %212)
  store i8* %213, i8** %30, align 8
  %214 = load i8*, i8** %30, align 8
  %215 = load i8*, i8** %8, align 8
  %216 = load i8*, i8** %9, align 8
  %217 = load i32, i32* @qfalse, align 4
  %218 = call i8** @Sys_ListFiles(i8* %214, i8* %215, i8* %216, i32* %31, i32 %217)
  store i8** %218, i8*** %32, align 8
  store i32 0, i32* %17, align 4
  br label %219

219:                                              ; preds = %232, %201
  %220 = load i32, i32* %17, align 4
  %221 = load i32, i32* %31, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %219
  %224 = load i8**, i8*** %32, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %224, i64 %226
  %228 = load i8*, i8** %227, align 8
  store i8* %228, i8** %33, align 8
  %229 = load i8*, i8** %33, align 8
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @FS_AddFileToList(i8* %229, i8** %37, i32 %230)
  store i32 %231, i32* %12, align 4
  br label %232

232:                                              ; preds = %223
  %233 = load i32, i32* %17, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %17, align 4
  br label %219

235:                                              ; preds = %219
  %236 = load i8**, i8*** %32, align 8
  %237 = call i32 @Sys_FreeFileList(i8** %236)
  br label %238

238:                                              ; preds = %235
  br label %239

239:                                              ; preds = %238, %189
  br label %240

240:                                              ; preds = %239, %188
  br label %241

241:                                              ; preds = %240, %200, %98
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  store %struct.TYPE_8__* %244, %struct.TYPE_8__** %16, align 8
  br label %84

245:                                              ; preds = %84
  %246 = load i32, i32* %12, align 4
  %247 = load i32*, i32** %10, align 8
  store i32 %246, i32* %247, align 4
  %248 = load i32, i32* %12, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %245
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %26, align 4
  br label %280

251:                                              ; preds = %245
  %252 = load i32, i32* %12, align 4
  %253 = add nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = mul i64 %254, 8
  %256 = trunc i64 %255 to i32
  %257 = call i8** @Z_Malloc(i32 %256)
  store i8** %257, i8*** %13, align 8
  store i32 0, i32* %17, align 4
  br label %258

258:                                              ; preds = %271, %251
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* %12, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %274

262:                                              ; preds = %258
  %263 = load i32, i32* %17, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %37, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = load i8**, i8*** %13, align 8
  %268 = load i32, i32* %17, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8*, i8** %267, i64 %269
  store i8* %266, i8** %270, align 8
  br label %271

271:                                              ; preds = %262
  %272 = load i32, i32* %17, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %17, align 4
  br label %258

274:                                              ; preds = %258
  %275 = load i8**, i8*** %13, align 8
  %276 = load i32, i32* %17, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %275, i64 %277
  store i8* null, i8** %278, align 8
  %279 = load i8**, i8*** %13, align 8
  store i8** %279, i8*** %6, align 8
  store i32 1, i32* %26, align 4
  br label %280

280:                                              ; preds = %274, %250, %49
  %281 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %281)
  %282 = load i8**, i8*** %6, align 8
  ret i8** %282
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Error(i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @FS_ReturnPath(i8*, i8*, i32*) #2

declare dso_local i32 @FS_PakIsPure(%struct.TYPE_9__*) #2

declare dso_local i32 @Com_FilterPath(i8*, i8*, i32) #2

declare dso_local i32 @FS_AddFileToList(i8*, i8**, i32) #2

declare dso_local i64 @Q_stricmpn(i8*, i8*, i32) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i8* @FS_BuildOSPath(i32, i32, i8*) #2

declare dso_local i8** @Sys_ListFiles(i8*, i8*, i8*, i32*, i32) #2

declare dso_local i32 @Sys_FreeFileList(i8**) #2

declare dso_local i8** @Z_Malloc(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
