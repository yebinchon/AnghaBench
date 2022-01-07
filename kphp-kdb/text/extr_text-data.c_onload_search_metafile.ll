; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_onload_search_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_onload_search_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.aio_connection = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.aio_connection*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i64 }
%struct.file_user_list_entry_search = type { i32, i32, i32 }
%struct.file_search_header = type { i64, i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"onload_search_metafile(%p,%d)\0A\00", align 1
@idx_search_enabled = common dso_local global i32 0, align 4
@ct_aio = common dso_local global i64 0, align 8
@MF_SEARCH = common dso_local global i64 0, align 8
@idx_crc_enabled = common dso_local global i32 0, align 4
@metafile_crc_check_size_threshold = common dso_local global i32 0, align 4
@aio_read_errors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [120 x i8] c"ERROR reading user %d search data from index at position %lld [pending aio queries: %lld]: read %d bytes out of %d: %m\0A\00", align 1
@active_aio_queries = common dso_local global i32 0, align 4
@aio_crc_errors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"CRC mismatch: expected %08x, found %08x\0A\00", align 1
@allocated_search_metafile_bytes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"*** Read user %d search data from index at position %lld: read %d bytes\0A\00", align 1
@FILE_USER_SEARCH_MAGIC = common dso_local global i64 0, align 8
@cur_search_metafile_bytes = common dso_local global i32 0, align 4
@tot_search_metafile_bytes = common dso_local global i32 0, align 4
@cur_search_metafiles = common dso_local global i32 0, align 4
@tot_search_metafiles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onload_search_metafile(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aio_connection*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.file_user_list_entry_search*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.file_search_header*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i64, i64* @verbosity, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load %struct.connection*, %struct.connection** %4, align 8
  %18 = ptrtoint %struct.connection* %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load i32, i32* @idx_search_enabled, align 4
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.connection*, %struct.connection** %4, align 8
  %25 = bitcast %struct.connection* %24 to %struct.aio_connection*
  store %struct.aio_connection* %25, %struct.aio_connection** %6, align 8
  %26 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %27 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %8, align 8
  %33 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %34 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ct_aio, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MF_SEARCH, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = icmp eq %struct.TYPE_8__* %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = load %struct.aio_connection*, %struct.aio_connection** %55, align 8
  %57 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %58 = icmp eq %struct.aio_connection* %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.file_user_list_entry_search*
  store %struct.file_user_list_entry_search* %64, %struct.file_user_list_entry_search** %9, align 8
  %65 = load i32, i32* @idx_crc_enabled, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %21
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @metafile_crc_check_size_threshold, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = icmp sge i32 %78, 4
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %84, %85
  %87 = sub nsw i32 %86, 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i32*
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = sub nsw i32 %94, 4
  %96 = call i32 @compute_crc32(i32 %93, i32 %95)
  store i32 %96, i32* %10, align 4
  br label %98

97:                                               ; preds = %73, %67, %21
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %97, %77
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.file_user_list_entry_search*, %struct.file_user_list_entry_search** %9, align 8
  %103 = getelementptr inbounds %struct.file_user_list_entry_search, %struct.file_user_list_entry_search* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @idx_crc_enabled, align 4
  %106 = mul nsw i32 %105, 4
  %107 = add nsw i32 %104, %106
  %108 = icmp eq i32 %101, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %111, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %98
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %193

120:                                              ; preds = %116, %98
  %121 = load i32, i32* @aio_read_errors, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @aio_read_errors, align 4
  %123 = load i64, i64* @verbosity, align 8
  %124 = icmp sge i64 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = load i32, i32* @stderr, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.file_user_list_entry_search*, %struct.file_user_list_entry_search** %9, align 8
  %131 = getelementptr inbounds %struct.file_user_list_entry_search, %struct.file_user_list_entry_search* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.file_user_list_entry_search*, %struct.file_user_list_entry_search** %9, align 8
  %134 = getelementptr inbounds %struct.file_user_list_entry_search, %struct.file_user_list_entry_search* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %132, %135
  %137 = load i32, i32* @active_aio_queries, align 4
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %136, i32 %137, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %125, %120
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %143
  %148 = load i32, i32* @aio_crc_errors, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @aio_crc_errors, align 4
  %150 = load i64, i64* @verbosity, align 8
  %151 = icmp sge i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i32, i32* @stderr, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %147
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  br label %163

163:                                              ; preds = %157, %143
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @allocated_search_metafile_bytes, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* @allocated_search_metafile_bytes, align 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 5
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  store %struct.TYPE_6__* %171, %struct.TYPE_6__** %175, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 5
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  store %struct.TYPE_6__* %178, %struct.TYPE_6__** %182, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %184, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %186, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  store %struct.aio_connection* null, %struct.aio_connection** %188, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %190 = call i32 @free(%struct.TYPE_8__* %189)
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %192, align 8
  store i32 0, i32* %3, align 4
  br label %254

193:                                              ; preds = %116
  %194 = load i64, i64* @verbosity, align 8
  %195 = icmp sgt i64 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %193
  %197 = load i32, i32* @stderr, align 4
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.file_user_list_entry_search*, %struct.file_user_list_entry_search** %9, align 8
  %202 = getelementptr inbounds %struct.file_user_list_entry_search, %struct.file_user_list_entry_search* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.file_user_list_entry_search*, %struct.file_user_list_entry_search** %9, align 8
  %205 = getelementptr inbounds %struct.file_user_list_entry_search, %struct.file_user_list_entry_search* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %203, %206
  %208 = load i32, i32* %5, align 4
  %209 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %200, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %196, %193
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  store %struct.aio_connection* null, %struct.aio_connection** %212, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %214 = call i64 @get_search_metafile(%struct.TYPE_7__* %213)
  %215 = inttoptr i64 %214 to %struct.file_search_header*
  store %struct.file_search_header* %215, %struct.file_search_header** %12, align 8
  %216 = load %struct.file_search_header*, %struct.file_search_header** %12, align 8
  %217 = getelementptr inbounds %struct.file_search_header, %struct.file_search_header* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @FILE_USER_SEARCH_MAGIC, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  %223 = load %struct.file_search_header*, %struct.file_search_header** %12, align 8
  %224 = getelementptr inbounds %struct.file_search_header, %struct.file_search_header* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp sgt i32 %225, 0
  %227 = zext i1 %226 to i32
  %228 = call i32 @assert(i32 %227)
  %229 = load %struct.file_search_header*, %struct.file_search_header** %12, align 8
  %230 = getelementptr inbounds %struct.file_search_header, %struct.file_search_header* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = ashr i32 %232, 2
  %234 = sub nsw i32 %233, 2
  %235 = icmp sle i32 %231, %234
  %236 = zext i1 %235 to i32
  %237 = call i32 @assert(i32 %236)
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* @cur_search_metafile_bytes, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* @cur_search_metafile_bytes, align 4
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* @tot_search_metafile_bytes, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* @tot_search_metafile_bytes, align 4
  %244 = load i32, i32* @cur_search_metafiles, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* @cur_search_metafiles, align 4
  %246 = load i32, i32* @tot_search_metafiles, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* @tot_search_metafiles, align 4
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 92226304
  br i1 %251, label %252, label %253

252:                                              ; preds = %210
  br label %253

253:                                              ; preds = %252, %210
  store i32 1, i32* %3, align 4
  br label %254

254:                                              ; preds = %253, %163
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_crc32(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @get_search_metafile(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
