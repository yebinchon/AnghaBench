; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_onload_user_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_onload_user_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.connection = type { i32 }
%struct.aio_connection = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i32, i32, %struct.aio_connection*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, %struct.file_user_list_entry* }
%struct.file_user_list_entry = type { i32, i32 }
%struct.file_user_header = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.file_user_list_entry_search = type { i32 }
%struct.file_user_list_entry_search_history = type { i32, i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"onload_user_metafile(%p,%d)\0A\00", align 1
@ct_aio = common dso_local global i64 0, align 8
@MF_USER = common dso_local global i64 0, align 8
@idx_crc_enabled = common dso_local global i32 0, align 4
@metafile_crc_check_size_threshold = common dso_local global i32 0, align 4
@aio_read_errors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [113 x i8] c"ERROR reading user %d data from index at position %lld [pending aio queries: %lld]: read %d bytes out of %d: %m\0A\00", align 1
@active_aio_queries = common dso_local global i32 0, align 4
@aio_crc_errors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"CRC mismatch: expected %08x, found %08x\0A\00", align 1
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@FILE_USER_MAGIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [92 x i8] c"*** Read user %d data from index at position %lld: read %d bytes at address %p, magic %08x\0A\00", align 1
@Header = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@idx_search_enabled = common dso_local global i64 0, align 8
@idx_persistent_history_enabled = common dso_local global i64 0, align 8
@cur_user_metafile_bytes = common dso_local global i32 0, align 4
@tot_user_metafile_bytes = common dso_local global i32 0, align 4
@cur_user_metafiles = common dso_local global i32 0, align 4
@tot_user_metafiles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onload_user_metafile(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aio_connection*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.file_user_list_entry*, align 8
  %10 = alloca %struct.file_user_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i64, i64* @verbosity, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = load %struct.connection*, %struct.connection** %4, align 8
  %23 = ptrtoint %struct.connection* %22 to i32
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.connection*, %struct.connection** %4, align 8
  %28 = bitcast %struct.connection* %27 to %struct.aio_connection*
  store %struct.aio_connection* %28, %struct.aio_connection** %6, align 8
  %29 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %30 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %7, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %8, align 8
  %36 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %37 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ct_aio, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MF_USER, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = icmp eq %struct.TYPE_11__* %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load %struct.aio_connection*, %struct.aio_connection** %58, align 8
  %60 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %61 = icmp eq %struct.aio_connection* %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %65, align 8
  store %struct.file_user_list_entry* %66, %struct.file_user_list_entry** %9, align 8
  %67 = load i32, i32* @idx_crc_enabled, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %26
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @metafile_crc_check_size_threshold, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = icmp sge i32 %80, 4
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %86, %87
  %89 = sub nsw i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i32*
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %5, align 4
  %97 = sub nsw i32 %96, 4
  %98 = call i32 @compute_crc32(i32 %95, i32 %97)
  store i32 %98, i32* %11, align 4
  br label %100

99:                                               ; preds = %75, %69, %26
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %99, %79
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %179

110:                                              ; preds = %106, %100
  %111 = load i32, i32* @aio_read_errors, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @aio_read_errors, align 4
  %113 = load i64, i64* @verbosity, align 8
  %114 = icmp sge i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %110
  %116 = load i32, i32* @stderr, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %9, align 8
  %121 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @active_aio_queries, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %122, i32 %123, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %115, %110
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = load i32, i32* @aio_crc_errors, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* @aio_crc_errors, align 4
  %136 = load i64, i64* @verbosity, align 8
  %137 = icmp sge i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* @stderr, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  br label %149

149:                                              ; preds = %143, %129
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @allocated_metafile_bytes, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* @allocated_metafile_bytes, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %161, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 5
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  store %struct.TYPE_9__* %164, %struct.TYPE_9__** %168, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %170, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 5
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %172, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 3
  store %struct.aio_connection* null, %struct.aio_connection** %174, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %176 = call i32 @free(%struct.TYPE_11__* %175)
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %178, align 8
  store i32 0, i32* %3, align 4
  br label %450

179:                                              ; preds = %106
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 3
  store %struct.aio_connection* null, %struct.aio_connection** %181, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %183 = call %struct.TYPE_12__* @touch_metafile(%struct.TYPE_11__* %182)
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to %struct.file_user_header*
  store %struct.file_user_header* %186, %struct.file_user_header** %10, align 8
  %187 = load i64, i64* @verbosity, align 8
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %179
  %190 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %191 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @FILE_USER_MAGIC, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %189, %179
  %196 = load i32, i32* @stderr, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %9, align 8
  %201 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %5, align 4
  %204 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %205 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %206 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %196, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0), i32 %199, i32 %202, i32 %203, %struct.file_user_header* %204, i64 %207)
  br label %209

209:                                              ; preds = %195, %189
  %210 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %211 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @FILE_USER_MAGIC, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %218 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = icmp sge i32 %219, 1
  br i1 %220, label %221, label %230

221:                                              ; preds = %209
  %222 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %223 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %226 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 %227, 1
  %229 = icmp sge i32 %224, %228
  br label %230

230:                                              ; preds = %221, %209
  %231 = phi i1 [ false, %209 ], [ %229, %221 ]
  %232 = zext i1 %231 to i32
  %233 = call i32 @assert(i32 %232)
  %234 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %235 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %9, align 8
  %238 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %236, %239
  %241 = zext i1 %240 to i32
  %242 = call i32 @assert(i32 %241)
  %243 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %244 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %247 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = sub nsw i32 %245, %248
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %13, align 4
  %251 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %252 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp eq i32 %253, %256
  %258 = zext i1 %257 to i32
  %259 = call i32 @assert(i32 %258)
  %260 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %261 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Header, i32 0, i32 0), align 4
  %264 = icmp eq i32 %262, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @assert(i32 %265)
  %267 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %268 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = icmp eq i64 %270, 56
  %272 = zext i1 %271 to i32
  %273 = call i32 @assert(i32 %272)
  %274 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %275 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = icmp ule i32 %276, 16777216
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  %280 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %281 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %284 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %287 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %230
  %291 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %292 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 4
  %294 = mul nsw i32 %293, 8
  %295 = add nsw i32 %294, 4
  br label %297

296:                                              ; preds = %230
  br label %297

297:                                              ; preds = %296, %290
  %298 = phi i32 [ %295, %290 ], [ 0, %296 ]
  %299 = add nsw i32 %285, %298
  %300 = icmp sge i32 %282, %299
  %301 = zext i1 %300 to i32
  %302 = call i32 @assert(i32 %301)
  %303 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %304 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %303, i32 0, i32 8
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %307 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %306, i32 0, i32 7
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %310 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %297
  %314 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %315 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = mul nsw i32 %316, 8
  %318 = add nsw i32 %317, 4
  br label %320

319:                                              ; preds = %297
  br label %320

320:                                              ; preds = %319, %313
  %321 = phi i32 [ %318, %313 ], [ 0, %319 ]
  %322 = add nsw i32 %308, %321
  %323 = icmp sge i32 %305, %322
  %324 = zext i1 %323 to i32
  %325 = call i32 @assert(i32 %324)
  %326 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %327 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %326, i32 0, i32 9
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %330 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %329, i32 0, i32 8
  %331 = load i32, i32* %330, align 4
  %332 = icmp sge i32 %328, %331
  %333 = zext i1 %332 to i32
  %334 = call i32 @assert(i32 %333)
  %335 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %336 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %335, i32 0, i32 10
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %339 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %338, i32 0, i32 9
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* %13, align 4
  %342 = add nsw i32 %341, 1
  %343 = mul nsw i32 4, %342
  %344 = add nsw i32 %340, %343
  %345 = icmp eq i32 %337, %344
  %346 = zext i1 %345 to i32
  %347 = call i32 @assert(i32 %346)
  %348 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %349 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %348, i32 0, i32 11
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %352 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %351, i32 0, i32 10
  %353 = load i32, i32* %352, align 4
  %354 = icmp sge i32 %350, %353
  %355 = zext i1 %354 to i32
  %356 = call i32 @assert(i32 %355)
  %357 = load i64, i64* @idx_search_enabled, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %362, label %359

359:                                              ; preds = %320
  %360 = load i64, i64* @idx_persistent_history_enabled, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %359, %320
  %363 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %9, align 8
  %364 = bitcast %struct.file_user_list_entry* %363 to %struct.file_user_list_entry_search*
  %365 = getelementptr inbounds %struct.file_user_list_entry_search, %struct.file_user_list_entry_search* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  br label %368

367:                                              ; preds = %359
  br label %368

368:                                              ; preds = %367, %362
  %369 = phi i32 [ %366, %362 ], [ 0, %367 ]
  store i32 %369, i32* %14, align 4
  %370 = load i32, i32* %14, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %368
  %373 = load i32, i32* @idx_crc_enabled, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %372
  %376 = load i32, i32* %14, align 4
  %377 = add nsw i32 %376, 4
  store i32 %377, i32* %14, align 4
  br label %378

378:                                              ; preds = %375, %372, %368
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %379 = load i64, i64* @idx_persistent_history_enabled, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %401

381:                                              ; preds = %378
  %382 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %9, align 8
  %383 = bitcast %struct.file_user_list_entry* %382 to %struct.file_user_list_entry_search_history*
  %384 = getelementptr inbounds %struct.file_user_list_entry_search_history, %struct.file_user_list_entry_search_history* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %15, align 4
  %386 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %9, align 8
  %387 = bitcast %struct.file_user_list_entry* %386 to %struct.file_user_list_entry_search_history*
  %388 = getelementptr inbounds %struct.file_user_list_entry_search_history, %struct.file_user_list_entry_search_history* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  store i32 %389, i32* %16, align 4
  %390 = load i32, i32* %16, align 4
  %391 = load i32, i32* %15, align 4
  %392 = icmp sge i32 %390, %391
  br i1 %392, label %393, label %400

393:                                              ; preds = %381
  %394 = load i32, i32* %16, align 4
  %395 = load i32, i32* %15, align 4
  %396 = sub nsw i32 %394, %395
  %397 = add nsw i32 %396, 1
  %398 = mul nsw i32 %397, 8
  %399 = add nsw i32 %398, 16
  store i32 %399, i32* %17, align 4
  br label %400

400:                                              ; preds = %393, %381
  br label %401

401:                                              ; preds = %400, %378
  %402 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %403 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %402, i32 0, i32 12
  %404 = load i32, i32* %403, align 4
  %405 = sext i32 %404 to i64
  %406 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %407 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %406, i32 0, i32 11
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* %14, align 4
  %410 = add nsw i32 %408, %409
  %411 = load i32, i32* %17, align 4
  %412 = add nsw i32 %410, %411
  %413 = sext i32 %412 to i64
  %414 = load i32, i32* %13, align 4
  %415 = sext i32 %414 to i64
  %416 = mul i64 %415, 4
  %417 = add i64 %413, %416
  %418 = load i32, i32* @idx_crc_enabled, align 4
  %419 = mul nsw i32 4, %418
  %420 = sext i32 %419 to i64
  %421 = add i64 %417, %420
  %422 = icmp eq i64 %405, %421
  %423 = zext i1 %422 to i32
  %424 = call i32 @assert(i32 %423)
  %425 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %426 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %425, i32 0, i32 11
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = icmp eq i32 %427, %430
  %432 = zext i1 %431 to i32
  %433 = call i32 @assert(i32 %432)
  %434 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 8
  %437 = load i32, i32* @cur_user_metafile_bytes, align 4
  %438 = add nsw i32 %437, %436
  store i32 %438, i32* @cur_user_metafile_bytes, align 4
  %439 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* @tot_user_metafile_bytes, align 4
  %443 = add nsw i32 %442, %441
  store i32 %443, i32* @tot_user_metafile_bytes, align 4
  %444 = load i32, i32* @cur_user_metafiles, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* @cur_user_metafiles, align 4
  %446 = load i32, i32* @tot_user_metafiles, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* @tot_user_metafiles, align 4
  %448 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %449 = call i32 @bind_user_metafile(%struct.TYPE_10__* %448)
  store i32 1, i32* %3, align 4
  br label %450

450:                                              ; preds = %401, %149
  %451 = load i32, i32* %3, align 4
  ret i32 %451
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_crc32(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @touch_metafile(%struct.TYPE_11__*) #1

declare dso_local i32 @bind_user_metafile(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
