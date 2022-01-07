; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_onload_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_onload_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.connection = type { i32 }
%struct.aio_connection = type { i64, i64 }
%struct.metafile = type { i32, %struct.aio_connection*, i64 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"onload_metafile(%p,%d) total_aio_time = %lf\0A\00", align 1
@total_aio_time = common dso_local global i32 0, align 4
@ct_aio = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"assertion (meta->aio == a) will fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%p != %p\0A\00", align 1
@Header = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@tot_revlist_metafiles = common dso_local global i32 0, align 4
@crc32_check_mode = common dso_local global i64 0, align 8
@metafiles = common dso_local global %struct.TYPE_6__** null, align 8
@revlist_metafiles_crc32 = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"x = %d, y = %d, total = %d\0A\00", align 1
@verbosity = common dso_local global i32 0, align 4
@aio_errors_verbosity = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"ERROR reading metafile #%d: read %d bytes out of %lld: %m\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"*** Read metafile: read %d bytes\0A\00", align 1
@tot_metafiles_memory = common dso_local global i64 0, align 8
@metafiles_load_errors = common dso_local global i32 0, align 4
@Snapshot = common dso_local global i32 0, align 4
@metafiles_loaded = common dso_local global i32 0, align 4
@metafiles_load_success = common dso_local global i32 0, align 4
@tot_aio_loaded_bytes = common dso_local global i32 0, align 4
@data_metafiles_loaded = common dso_local global i32 0, align 4
@revlist_metafiles_loaded = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"onload_metafile finished\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onload_metafile(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aio_connection*, align 8
  %6 = alloca %struct.metafile*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.connection*, %struct.connection** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @total_aio_time, align 4
  %14 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.connection* %11, i32 %12, i32 %13)
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = bitcast %struct.connection* %15 to %struct.aio_connection*
  store %struct.aio_connection* %16, %struct.aio_connection** %5, align 8
  %17 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %18 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.metafile*
  store %struct.metafile* %20, %struct.metafile** %6, align 8
  %21 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %22 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ct_aio, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.metafile*, %struct.metafile** %6, align 8
  %29 = icmp ne %struct.metafile* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.metafile*, %struct.metafile** %6, align 8
  %33 = getelementptr inbounds %struct.metafile, %struct.metafile* %32, i32 0, i32 1
  %34 = load %struct.aio_connection*, %struct.aio_connection** %33, align 8
  %35 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %36 = icmp ne %struct.aio_connection* %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %2
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @stderr, align 4
  %41 = load %struct.metafile*, %struct.metafile** %6, align 8
  %42 = getelementptr inbounds %struct.metafile, %struct.metafile* %41, i32 0, i32 1
  %43 = load %struct.aio_connection*, %struct.aio_connection** %42, align 8
  %44 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.aio_connection* %43, %struct.aio_connection* %44)
  br label %46

46:                                               ; preds = %37, %2
  %47 = load %struct.metafile*, %struct.metafile** %6, align 8
  %48 = getelementptr inbounds %struct.metafile, %struct.metafile* %47, i32 0, i32 1
  %49 = load %struct.aio_connection*, %struct.aio_connection** %48, align 8
  %50 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %51 = icmp eq %struct.aio_connection* %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.metafile*, %struct.metafile** %6, align 8
  %55 = getelementptr inbounds %struct.metafile, %struct.metafile* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %46
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @get_metafile_offset(i32 %61)
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp sge i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i64 @get_metafile_offset(i32 %68)
  %70 = load i64, i64* %8, align 8
  %71 = sub nsw i64 %69, %70
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp sge i64 %72, 4
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  br label %103

76:                                               ; preds = %46
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 4
  %79 = load i32, i32* @tot_revlist_metafiles, align 4
  %80 = add nsw i32 %78, %79
  %81 = icmp sle i32 %77, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 4
  %86 = sub nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = call i64 @get_revlist_metafile_offset(i32 %87)
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp sge i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i64 @get_revlist_metafile_offset(i32 %95)
  %97 = load i64, i64* %8, align 8
  %98 = sub nsw i64 %96, %97
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = icmp sge i64 %99, 4
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  br label %103

103:                                              ; preds = %76, %60
  %104 = load i64, i64* %7, align 8
  %105 = and i64 %104, 3
  %106 = icmp ne i64 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i64, i64* @crc32_check_mode, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %198

112:                                              ; preds = %103
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %7, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %198

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %117
  %122 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @metafiles, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %122, i64 %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %7, align 8
  %130 = sub nsw i64 %129, 4
  %131 = call i64 @compute_crc32(i64 %128, i64 %130)
  %132 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @metafiles, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %132, i64 %134
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i32*
  %140 = load i64, i64* %7, align 8
  %141 = ashr i64 %140, 2
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = getelementptr inbounds i32, i32* %142, i64 -1
  %144 = load i32, i32* %143, align 4
  %145 = zext i32 %144 to i64
  %146 = icmp eq i64 %131, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  br label %197

149:                                              ; preds = %117
  %150 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @metafiles, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %150, i64 %152
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %7, align 8
  %158 = call i64 @compute_crc32(i64 %156, i64 %157)
  %159 = load i64*, i64** @revlist_metafiles_crc32, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 4
  %162 = sub nsw i32 %160, %161
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %159, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %158, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %149
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 4
  %172 = sub nsw i32 %170, %171
  %173 = sub nsw i32 %172, 1
  %174 = load i32, i32* @tot_revlist_metafiles, align 4
  %175 = call i32 (i32, i8*, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %169, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %168, %149
  %177 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @metafiles, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %177, i64 %179
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %7, align 8
  %185 = call i64 @compute_crc32(i64 %183, i64 %184)
  %186 = load i64*, i64** @revlist_metafiles_crc32, align 8
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 4
  %189 = sub nsw i32 %187, %188
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %186, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp eq i64 %185, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  br label %197

197:                                              ; preds = %176, %121
  br label %198

198:                                              ; preds = %197, %112, %103
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %7, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %198
  %204 = load i32, i32* @verbosity, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load i64, i64* @aio_errors_verbosity, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %206, %203
  %210 = load i32, i32* @stderr, align 4
  %211 = load %struct.metafile*, %struct.metafile** %6, align 8
  %212 = getelementptr inbounds %struct.metafile, %struct.metafile* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %4, align 4
  %215 = load i64, i64* %7, align 8
  %216 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %213, i32 %214, i64 %215)
  br label %217

217:                                              ; preds = %209, %206
  br label %218

218:                                              ; preds = %217, %198
  %219 = load i32, i32* @verbosity, align 4
  %220 = icmp sgt i32 %219, 2
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load i32, i32* @stderr, align 4
  %223 = load i32, i32* %4, align 4
  %224 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %221, %218
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* %7, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %245

230:                                              ; preds = %225
  %231 = load %struct.metafile*, %struct.metafile** %6, align 8
  %232 = getelementptr inbounds %struct.metafile, %struct.metafile* %231, i32 0, i32 1
  store %struct.aio_connection* null, %struct.aio_connection** %232, align 8
  %233 = load %struct.metafile*, %struct.metafile** %6, align 8
  %234 = getelementptr inbounds %struct.metafile, %struct.metafile* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %7, align 8
  %237 = call i32 @zzfree(i64 %235, i64 %236)
  %238 = load i64, i64* %7, align 8
  %239 = load i64, i64* @tot_metafiles_memory, align 8
  %240 = sub nsw i64 %239, %238
  store i64 %240, i64* @tot_metafiles_memory, align 8
  %241 = load %struct.metafile*, %struct.metafile** %6, align 8
  %242 = getelementptr inbounds %struct.metafile, %struct.metafile* %241, i32 0, i32 2
  store i64 0, i64* %242, align 8
  %243 = load i32, i32* @metafiles_load_errors, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* @metafiles_load_errors, align 4
  br label %308

245:                                              ; preds = %225
  %246 = load i32, i32* @Snapshot, align 4
  %247 = load %struct.metafile*, %struct.metafile** %6, align 8
  %248 = getelementptr inbounds %struct.metafile, %struct.metafile* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* %7, align 8
  %251 = load i64, i64* %8, align 8
  %252 = call i32 @kfs_buffer_crypt(i32 %246, i64 %249, i64 %250, i64 %251)
  %253 = load %struct.metafile*, %struct.metafile** %6, align 8
  %254 = getelementptr inbounds %struct.metafile, %struct.metafile* %253, i32 0, i32 1
  store %struct.aio_connection* null, %struct.aio_connection** %254, align 8
  %255 = load i32, i32* @metafiles_loaded, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* @metafiles_loaded, align 4
  %257 = load %struct.metafile*, %struct.metafile** %6, align 8
  %258 = getelementptr inbounds %struct.metafile, %struct.metafile* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @add_use(i32 %259)
  %261 = load i32, i32* @metafiles_load_success, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* @metafiles_load_success, align 4
  %263 = load i32, i32* %4, align 4
  %264 = load i32, i32* @tot_aio_loaded_bytes, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* @tot_aio_loaded_bytes, align 4
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Header, i32 0, i32 0), align 4
  %268 = icmp sle i32 %266, %267
  br i1 %268, label %269, label %304

269:                                              ; preds = %245
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @FLI_ENTRY_LIST_ID(i32 %270)
  %272 = call %struct.TYPE_5__* @__get_list_f(i32 %271, i32 -1)
  store %struct.TYPE_5__* %272, %struct.TYPE_5__** %10, align 8
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %274 = icmp ne %struct.TYPE_5__* %273, null
  br i1 %274, label %275, label %280

275:                                              ; preds = %269
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp sge i64 %278, 0
  br i1 %279, label %280, label %301

280:                                              ; preds = %275, %269
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %282 = icmp ne %struct.TYPE_5__* %281, null
  br i1 %282, label %283, label %292

283:                                              ; preds = %280
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.metafile*, %struct.metafile** %6, align 8
  %288 = getelementptr inbounds %struct.metafile, %struct.metafile* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = sext i32 %289 to i64
  %291 = icmp eq i64 %286, %290
  br label %292

292:                                              ; preds = %283, %280
  %293 = phi i1 [ true, %280 ], [ %291, %283 ]
  %294 = zext i1 %293 to i32
  %295 = call i32 @assert(i32 %294)
  %296 = load %struct.metafile*, %struct.metafile** %6, align 8
  %297 = getelementptr inbounds %struct.metafile, %struct.metafile* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = call i32 @do_postponed(i64 %299)
  br label %301

301:                                              ; preds = %292, %275
  %302 = load i32, i32* @data_metafiles_loaded, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* @data_metafiles_loaded, align 4
  br label %307

304:                                              ; preds = %245
  %305 = load i32, i32* @revlist_metafiles_loaded, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* @revlist_metafiles_loaded, align 4
  br label %307

307:                                              ; preds = %304, %301
  br label %308

308:                                              ; preds = %307, %230
  %309 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @get_metafile_offset(i32) #1

declare dso_local i64 @get_revlist_metafile_offset(i32) #1

declare dso_local i64 @compute_crc32(i64, i64) #1

declare dso_local i32 @zzfree(i64, i64) #1

declare dso_local i32 @kfs_buffer_crypt(i32, i64, i64, i64) #1

declare dso_local i32 @add_use(i32) #1

declare dso_local %struct.TYPE_5__* @__get_list_f(i32, i32) #1

declare dso_local i32 @FLI_ENTRY_LIST_ID(i32) #1

declare dso_local i32 @do_postponed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
