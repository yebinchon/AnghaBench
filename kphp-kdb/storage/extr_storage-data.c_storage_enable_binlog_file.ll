; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_storage_enable_binlog_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_storage_enable_binlog_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@STORAGE_ERR_OPEN = common dso_local global i32 0, align 4
@STORAGE_ERR_FSTAT = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i64 0, align 8
@STORAGE_ERR_SIZE_MISMATCH = common dso_local global i32 0, align 4
@PREFIX_IO_BUFFSIZE = common dso_local global i32 0, align 4
@STORAGE_ERR_READ = common dso_local global i32 0, align 4
@STORAGE_ERR_TAIL_DIFFER = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@STORAGE_ERR_DIR_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_enable_binlog_file(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %301, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %304

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %7, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %300

36:                                               ; preds = %23
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %36
  store i32 -1, i32* %3, align 4
  br label %306

47:                                               ; preds = %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @O_RDONLY, align 4
  %52 = call i8* @open(i32 %50, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @STORAGE_ERR_OPEN, align 4
  store i32 %57, i32* %3, align 4
  br label %306

58:                                               ; preds = %47
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @fstat(i32 %59, %struct.stat* %9)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load i32, i32* @STORAGE_ERR_FSTAT, align 4
  store i32 %65, i32* %3, align 4
  br label %306

66:                                               ; preds = %58
  %67 = load i64, i64* @binlog_disabled, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %3, align 4
  br label %306

81:                                               ; preds = %66
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = call i32 @pthread_mutex_lock(i32* %83)
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @close(i32 %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = call i32 @pthread_mutex_unlock(i32* %95)
  %97 = load i32, i32* @STORAGE_ERR_SIZE_MISMATCH, align 4
  store i32 %97, i32* %3, align 4
  br label %306

98:                                               ; preds = %81
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %143, %98
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %146

105:                                              ; preds = %99
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %108, i64 %110
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %105
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %119, i64 %121
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %116
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %133, i64 %135
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  store i32 1, i32* %11, align 4
  br label %146

142:                                              ; preds = %130, %116, %105
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %99

146:                                              ; preds = %141, %99
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %260

149:                                              ; preds = %146
  %150 = load i32, i32* @PREFIX_IO_BUFFSIZE, align 4
  %151 = zext i32 %150 to i64
  %152 = call i8* @llvm.stacksave()
  store i8* %152, i8** %13, align 8
  %153 = alloca i8, i64 %151, align 16
  store i64 %151, i64* %14, align 8
  %154 = load i32, i32* @PREFIX_IO_BUFFSIZE, align 4
  %155 = zext i32 %154 to i64
  %156 = alloca i8, i64 %155, align 16
  store i64 %155, i64* %15, align 8
  %157 = load i32, i32* @PREFIX_IO_BUFFSIZE, align 4
  %158 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %157, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = load i32, i32* @PREFIX_IO_BUFFSIZE, align 4
  br label %166

163:                                              ; preds = %149
  %164 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  br label %166

166:                                              ; preds = %163, %161
  %167 = phi i32 [ %162, %161 ], [ %165, %163 ]
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %16, align 4
  %175 = sub nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = call i32 @pread(i32 %169, i8* %153, i32 %170, i64 %176)
  %178 = icmp ne i32 %168, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %166
  %180 = load i32, i32* @STORAGE_ERR_READ, align 4
  store i32 %180, i32* %12, align 4
  br label %258

181:                                              ; preds = %166
  store i32 0, i32* %10, align 4
  br label %182

182:                                              ; preds = %254, %181
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %257

188:                                              ; preds = %182
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %191, i64 %193
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %253

199:                                              ; preds = %188
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %202, i64 %204
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %208, %211
  br i1 %212, label %213, label %253

213:                                              ; preds = %199
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %216, i64 %218
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp sge i32 %222, 0
  br i1 %223, label %224, label %253

224:                                              ; preds = %213
  %225 = load i32, i32* %16, align 4
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %227, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %228, i64 %230
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %16, align 4
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %16, align 4
  %240 = sub nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = call i32 @pread(i32 %234, i8* %156, i32 %235, i64 %241)
  %243 = icmp ne i32 %225, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %224
  %245 = load i32, i32* @STORAGE_ERR_READ, align 4
  store i32 %245, i32* %12, align 4
  br label %257

246:                                              ; preds = %224
  %247 = load i32, i32* %16, align 4
  %248 = call i64 @memcmp(i8* %153, i8* %156, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = load i32, i32* @STORAGE_ERR_TAIL_DIFFER, align 4
  store i32 %251, i32* %12, align 4
  br label %252

252:                                              ; preds = %250, %246
  br label %257

253:                                              ; preds = %213, %199, %188
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %10, align 4
  br label %182

257:                                              ; preds = %252, %244, %182
  br label %258

258:                                              ; preds = %257, %179
  %259 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %259)
  br label %260

260:                                              ; preds = %258, %146
  %261 = load i32, i32* %12, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %295, label %263

263:                                              ; preds = %260
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 4
  store i32 1, i32* %265, align 4
  %266 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 3
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* %8, align 4
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @O_WRONLY, align 4
  %277 = call i8* @open(i32 %275, i32 %276)
  %278 = ptrtoint i8* %277 to i32
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 4
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @F_WRLCK, align 4
  %285 = call i64 @lock_whole_file(i32 %283, i32 %284)
  %286 = icmp sle i64 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %263
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @close(i32 %290)
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 2
  store i32 -1, i32* %293, align 4
  br label %294

294:                                              ; preds = %287, %263
  br label %295

295:                                              ; preds = %294, %260
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 2
  %298 = call i32 @pthread_mutex_unlock(i32* %297)
  %299 = load i32, i32* %12, align 4
  store i32 %299, i32* %3, align 4
  br label %306

300:                                              ; preds = %23
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %6, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %6, align 4
  br label %17

304:                                              ; preds = %17
  %305 = load i32, i32* @STORAGE_ERR_DIR_NOT_FOUND, align 4
  store i32 %305, i32* %3, align 4
  br label %306

306:                                              ; preds = %304, %295, %91, %69, %62, %56, %46
  %307 = load i32, i32* %3, align 4
  ret i32 %307
}

declare dso_local i8* @open(i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pread(i32, i8*, i32, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @lock_whole_file(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
