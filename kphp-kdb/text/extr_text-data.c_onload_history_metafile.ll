; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_onload_history_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_onload_history_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.aio_connection = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.aio_connection*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i64 }
%struct.file_user_list_entry_search_history = type { i32, i32, i32, i32 }
%struct.file_history_header = type { i64, i32, i64 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"onload_history_metafile(%p,%d)\0A\00", align 1
@idx_persistent_history_enabled = common dso_local global i32 0, align 4
@ct_aio = common dso_local global i64 0, align 8
@MF_HISTORY = common dso_local global i64 0, align 8
@metafile_crc_check_size_threshold = common dso_local global i32 0, align 4
@aio_read_errors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [121 x i8] c"ERROR reading user %d history data from index at position %lld [pending aio queries: %lld]: read %d bytes out of %d: %m\0A\00", align 1
@active_aio_queries = common dso_local global i32 0, align 4
@aio_crc_errors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"CRC mismatch: expected %08x, found %08x\0A\00", align 1
@allocated_history_metafile_bytes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"*** Read user %d history data from index at position %lld: read %d bytes\0A\00", align 1
@FILE_USER_HISTORY_MAGIC = common dso_local global i64 0, align 8
@cur_history_metafile_bytes = common dso_local global i32 0, align 4
@tot_history_metafile_bytes = common dso_local global i32 0, align 4
@cur_history_metafiles = common dso_local global i32 0, align 4
@tot_history_metafiles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onload_history_metafile(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aio_connection*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.file_user_list_entry_search_history*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.file_history_header*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i64, i64* @verbosity, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load %struct.connection*, %struct.connection** %4, align 8
  %19 = ptrtoint %struct.connection* %18 to i32
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @idx_persistent_history_enabled, align 4
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.connection*, %struct.connection** %4, align 8
  %26 = bitcast %struct.connection* %25 to %struct.aio_connection*
  store %struct.aio_connection* %26, %struct.aio_connection** %6, align 8
  %27 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %28 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %7, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %8, align 8
  %34 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %35 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ct_aio, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MF_HISTORY, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = icmp eq %struct.TYPE_8__* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load %struct.aio_connection*, %struct.aio_connection** %56, align 8
  %58 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %59 = icmp eq %struct.aio_connection* %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.file_user_list_entry_search_history*
  store %struct.file_user_list_entry_search_history* %65, %struct.file_user_list_entry_search_history** %9, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %22
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @metafile_crc_check_size_threshold, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = icmp sge i32 %76, 4
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %82, %83
  %85 = sub nsw i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %11, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = sub nsw i32 %92, 4
  %94 = call i32 @compute_crc32(i32 %91, i32 %93)
  store i32 %94, i32* %10, align 4
  br label %96

95:                                               ; preds = %71, %22
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %95, %75
  %97 = load %struct.file_user_list_entry_search_history*, %struct.file_user_list_entry_search_history** %9, align 8
  %98 = getelementptr inbounds %struct.file_user_list_entry_search_history, %struct.file_user_list_entry_search_history* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.file_user_list_entry_search_history*, %struct.file_user_list_entry_search_history** %9, align 8
  %101 = getelementptr inbounds %struct.file_user_list_entry_search_history, %struct.file_user_list_entry_search_history* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  %104 = add nsw i32 %103, 1
  %105 = mul nsw i32 %104, 8
  %106 = add nsw i32 %105, 12
  store i32 %106, i32* %12, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 4
  %112 = icmp eq i32 %109, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %96
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %197

124:                                              ; preds = %120, %96
  %125 = load i32, i32* @aio_read_errors, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @aio_read_errors, align 4
  %127 = load i64, i64* @verbosity, align 8
  %128 = icmp sge i64 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %124
  %130 = load i32, i32* @stderr, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.file_user_list_entry_search_history*, %struct.file_user_list_entry_search_history** %9, align 8
  %135 = getelementptr inbounds %struct.file_user_list_entry_search_history, %struct.file_user_list_entry_search_history* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.file_user_list_entry_search_history*, %struct.file_user_list_entry_search_history** %9, align 8
  %138 = getelementptr inbounds %struct.file_user_list_entry_search_history, %struct.file_user_list_entry_search_history* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %136, %139
  %141 = load i32, i32* @active_aio_queries, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %140, i32 %141, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %129, %124
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %147
  %152 = load i32, i32* @aio_crc_errors, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* @aio_crc_errors, align 4
  %154 = load i64, i64* @verbosity, align 8
  %155 = icmp sge i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i32, i32* @stderr, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %151
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  br label %167

167:                                              ; preds = %161, %147
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @allocated_history_metafile_bytes, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* @allocated_history_metafile_bytes, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 5
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  store %struct.TYPE_6__* %175, %struct.TYPE_6__** %179, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  store %struct.TYPE_6__* %182, %struct.TYPE_6__** %186, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %188, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %190, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 3
  store %struct.aio_connection* null, %struct.aio_connection** %192, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %194 = call i32 @free(%struct.TYPE_8__* %193)
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %196, align 8
  store i32 0, i32* %3, align 4
  br label %280

197:                                              ; preds = %120
  %198 = load i64, i64* @verbosity, align 8
  %199 = icmp sgt i64 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %197
  %201 = load i32, i32* @stderr, align 4
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.file_user_list_entry_search_history*, %struct.file_user_list_entry_search_history** %9, align 8
  %206 = getelementptr inbounds %struct.file_user_list_entry_search_history, %struct.file_user_list_entry_search_history* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.file_user_list_entry_search_history*, %struct.file_user_list_entry_search_history** %9, align 8
  %209 = getelementptr inbounds %struct.file_user_list_entry_search_history, %struct.file_user_list_entry_search_history* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %207, %210
  %212 = load i32, i32* %5, align 4
  %213 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 %204, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %200, %197
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  store %struct.aio_connection* null, %struct.aio_connection** %216, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %218 = call i64 @get_history_metafile(%struct.TYPE_7__* %217)
  %219 = inttoptr i64 %218 to %struct.file_history_header*
  store %struct.file_history_header* %219, %struct.file_history_header** %13, align 8
  %220 = load %struct.file_history_header*, %struct.file_history_header** %13, align 8
  %221 = getelementptr inbounds %struct.file_history_header, %struct.file_history_header* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @FILE_USER_HISTORY_MAGIC, align 8
  %224 = icmp eq i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @assert(i32 %225)
  %227 = load %struct.file_history_header*, %struct.file_history_header** %13, align 8
  %228 = getelementptr inbounds %struct.file_history_header, %struct.file_history_header* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.file_user_list_entry_search_history*, %struct.file_user_list_entry_search_history** %9, align 8
  %231 = getelementptr inbounds %struct.file_user_list_entry_search_history, %struct.file_user_list_entry_search_history* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %229, %232
  %234 = zext i1 %233 to i32
  %235 = call i32 @assert(i32 %234)
  %236 = load %struct.file_history_header*, %struct.file_history_header** %13, align 8
  %237 = getelementptr inbounds %struct.file_history_header, %struct.file_history_header* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.file_user_list_entry_search_history*, %struct.file_user_list_entry_search_history** %9, align 8
  %240 = getelementptr inbounds %struct.file_user_list_entry_search_history, %struct.file_user_list_entry_search_history* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = icmp eq i64 %238, %242
  %244 = zext i1 %243 to i32
  %245 = call i32 @assert(i32 %244)
  %246 = load %struct.file_history_header*, %struct.file_history_header** %13, align 8
  %247 = getelementptr inbounds %struct.file_history_header, %struct.file_history_header* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %214
  %251 = load %struct.file_history_header*, %struct.file_history_header** %13, align 8
  %252 = getelementptr inbounds %struct.file_history_header, %struct.file_history_header* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.file_history_header*, %struct.file_history_header** %13, align 8
  %255 = getelementptr inbounds %struct.file_history_header, %struct.file_history_header* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = sub nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = icmp sge i64 %253, %258
  br label %260

260:                                              ; preds = %250, %214
  %261 = phi i1 [ false, %214 ], [ %259, %250 ]
  %262 = zext i1 %261 to i32
  %263 = call i32 @assert(i32 %262)
  %264 = load i32, i32* %5, align 4
  %265 = load i32, i32* @cur_history_metafile_bytes, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* @cur_history_metafile_bytes, align 4
  %267 = load i32, i32* %5, align 4
  %268 = load i32, i32* @tot_history_metafile_bytes, align 4
  %269 = add nsw i32 %268, %267
  store i32 %269, i32* @tot_history_metafile_bytes, align 4
  %270 = load i32, i32* @cur_history_metafiles, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* @cur_history_metafiles, align 4
  %272 = load i32, i32* @tot_history_metafiles, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* @tot_history_metafiles, align 4
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp eq i32 %276, 92226304
  br i1 %277, label %278, label %279

278:                                              ; preds = %260
  br label %279

279:                                              ; preds = %278, %260
  store i32 1, i32* %3, align 4
  br label %280

280:                                              ; preds = %279, %167
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_crc32(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @get_history_metafile(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
