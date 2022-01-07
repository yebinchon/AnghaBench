; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_load_metafile_aio.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_load_metafile_aio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metafile = type { i32, i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"load_metafile_aio. x = %d, use_aio = %d\0A\00", align 1
@metafiles = common dso_local global %struct.metafile** null, align 8
@Header = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@tot_revlist_metafiles = common dso_local global i32 0, align 4
@tot_metafiles_memory = common dso_local global i64 0, align 8
@Snapshot = common dso_local global %struct.TYPE_7__* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@crc32_check_mode = common dso_local global i64 0, align 8
@revlist_metafiles_crc32 = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"load success #%d. memory %lld\0A\00", align 1
@FILE_LIST_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"L = %p\0A\00", align 1
@data_metafiles_loaded = common dso_local global i32 0, align 4
@revlist_metafiles_loaded = common dso_local global i32 0, align 4
@metafiles_loaded = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [75 x i8] c"Previous AIO query failed at %p (metafile_num = %d), scheduling a new one\0A\00", align 1
@ct_metafile_aio = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"AIO query created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_metafile_aio(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.metafile*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @verbosity, align 4
  %11 = icmp sge i32 %10, 4
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.metafile*, %struct.metafile** %22, i64 %24
  %26 = load %struct.metafile*, %struct.metafile** %25, align 8
  %27 = icmp ne %struct.metafile* %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %17
  %29 = call %struct.metafile* @zmalloc0(i32 24)
  %30 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.metafile*, %struct.metafile** %30, i64 %32
  store %struct.metafile* %29, %struct.metafile** %33, align 8
  %34 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.metafile*, %struct.metafile** %34, i64 %36
  %38 = load %struct.metafile*, %struct.metafile** %37, align 8
  %39 = getelementptr inbounds %struct.metafile, %struct.metafile* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  %40 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.metafile*, %struct.metafile** %40, i64 %42
  %44 = load %struct.metafile*, %struct.metafile** %43, align 8
  %45 = getelementptr inbounds %struct.metafile, %struct.metafile* %44, i32 0, i32 1
  store i32 -1, i32* %45, align 4
  br label %46

46:                                               ; preds = %28, %17
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Header, i32 0, i32 0), align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @get_metafile_offset(i32 %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp sge i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i64 @get_metafile_offset(i32 %58)
  %60 = load i64, i64* %6, align 8
  %61 = sub nsw i64 %59, %60
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp sge i64 %62, 4
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  br label %93

66:                                               ; preds = %46
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Header, i32 0, i32 0), align 4
  %69 = load i32, i32* @tot_revlist_metafiles, align 4
  %70 = add nsw i32 %68, %69
  %71 = icmp sle i32 %67, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Header, i32 0, i32 0), align 4
  %76 = sub nsw i32 %74, %75
  %77 = sub nsw i32 %76, 1
  %78 = call i64 @get_revlist_metafile_offset(i32 %77)
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp sge i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Header, i32 0, i32 0), align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i64 @get_revlist_metafile_offset(i32 %85)
  %87 = load i64, i64* %6, align 8
  %88 = sub nsw i64 %86, %87
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp sge i64 %89, 4
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  br label %93

93:                                               ; preds = %66, %50
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.metafile*, %struct.metafile** %95, i64 %97
  %99 = load %struct.metafile*, %struct.metafile** %98, align 8
  %100 = getelementptr inbounds %struct.metafile, %struct.metafile* %99, i32 0, i32 2
  store i32 %94, i32* %100, align 8
  %101 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.metafile*, %struct.metafile** %101, i64 %103
  %105 = load %struct.metafile*, %struct.metafile** %104, align 8
  %106 = getelementptr inbounds %struct.metafile, %struct.metafile* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %130, label %109

109:                                              ; preds = %93
  %110 = load i64, i64* %7, align 8
  %111 = call i8* @zzmalloc(i64 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.metafile*, %struct.metafile** %113, i64 %115
  %117 = load %struct.metafile*, %struct.metafile** %116, align 8
  %118 = getelementptr inbounds %struct.metafile, %struct.metafile* %117, i32 0, i32 3
  store i32 %112, i32* %118, align 4
  %119 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.metafile*, %struct.metafile** %119, i64 %121
  %123 = load %struct.metafile*, %struct.metafile** %122, align 8
  %124 = getelementptr inbounds %struct.metafile, %struct.metafile* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @assert(i32 %125)
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* @tot_metafiles_memory, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* @tot_metafiles_memory, align 8
  br label %130

130:                                              ; preds = %109, %93
  %131 = load i32, i32* %5, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %285

133:                                              ; preds = %130
  %134 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.metafile*, %struct.metafile** %134, i64 %136
  %138 = load %struct.metafile*, %struct.metafile** %137, align 8
  %139 = getelementptr inbounds %struct.metafile, %struct.metafile* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %285, label %142

142:                                              ; preds = %133
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Snapshot, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* %6, align 8
  %147 = load i32, i32* @SEEK_SET, align 4
  %148 = call i64 @lseek(i32 %145, i64 %146, i32 %147)
  %149 = load i64, i64* %6, align 8
  %150 = icmp eq i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Snapshot, align 8
  %154 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.metafile*, %struct.metafile** %154, i64 %156
  %158 = load %struct.metafile*, %struct.metafile** %157, align 8
  %159 = getelementptr inbounds %struct.metafile, %struct.metafile* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i64, i64* %7, align 8
  %162 = call i64 @kfs_read_file(%struct.TYPE_7__* %153, i32 %160, i64 %161)
  %163 = load i64, i64* %7, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load i64, i64* @crc32_check_mode, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %224

169:                                              ; preds = %142
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Header, i32 0, i32 0), align 4
  %172 = icmp sle i32 %170, %171
  br i1 %172, label %173, label %202

173:                                              ; preds = %169
  %174 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.metafile*, %struct.metafile** %174, i64 %176
  %178 = load %struct.metafile*, %struct.metafile** %177, align 8
  %179 = getelementptr inbounds %struct.metafile, %struct.metafile* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i64, i64* %7, align 8
  %182 = sub nsw i64 %181, 4
  %183 = call i64 @compute_crc32(i32 %180, i64 %182)
  %184 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.metafile*, %struct.metafile** %184, i64 %186
  %188 = load %struct.metafile*, %struct.metafile** %187, align 8
  %189 = getelementptr inbounds %struct.metafile, %struct.metafile* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i32*
  %193 = load i64, i64* %7, align 8
  %194 = ashr i64 %193, 2
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = getelementptr inbounds i32, i32* %195, i64 -1
  %197 = load i32, i32* %196, align 4
  %198 = zext i32 %197 to i64
  %199 = icmp eq i64 %183, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  br label %223

202:                                              ; preds = %169
  %203 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.metafile*, %struct.metafile** %203, i64 %205
  %207 = load %struct.metafile*, %struct.metafile** %206, align 8
  %208 = getelementptr inbounds %struct.metafile, %struct.metafile* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load i64, i64* %7, align 8
  %211 = call i64 @compute_crc32(i32 %209, i64 %210)
  %212 = load i64*, i64** @revlist_metafiles_crc32, align 8
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Header, i32 0, i32 0), align 4
  %215 = sub nsw i32 %213, %214
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %212, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %211, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  br label %223

223:                                              ; preds = %202, %173
  br label %224

224:                                              ; preds = %223, %142
  %225 = load i32, i32* %4, align 4
  %226 = call i32 @add_use(i32 %225)
  %227 = load i32, i32* %4, align 4
  %228 = load i64, i64* @tot_metafiles_memory, align 8
  %229 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %227, i64 %228)
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Header, i32 0, i32 0), align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %279

233:                                              ; preds = %224
  %234 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.metafile*, %struct.metafile** %234, i64 %236
  %238 = load %struct.metafile*, %struct.metafile** %237, align 8
  %239 = getelementptr inbounds %struct.metafile, %struct.metafile* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @FILE_LIST_MAGIC, align 4
  %245 = icmp eq i32 %243, %244
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  %248 = load i32, i32* %4, align 4
  %249 = call i32 @FLI_ENTRY_LIST_ID(i32 %248)
  %250 = call %struct.TYPE_6__* @__get_list_f(i32 %249, i32 -1)
  store %struct.TYPE_6__* %250, %struct.TYPE_6__** %8, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %252 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %251)
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %254 = icmp ne %struct.TYPE_6__* %253, null
  br i1 %254, label %255, label %260

255:                                              ; preds = %233
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp sge i64 %258, 0
  br i1 %259, label %260, label %276

260:                                              ; preds = %255, %233
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %262 = icmp ne %struct.TYPE_6__* %261, null
  br i1 %262, label %263, label %270

263:                                              ; preds = %260
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* %4, align 4
  %268 = sext i32 %267 to i64
  %269 = icmp eq i64 %266, %268
  br label %270

270:                                              ; preds = %263, %260
  %271 = phi i1 [ true, %260 ], [ %269, %263 ]
  %272 = zext i1 %271 to i32
  %273 = call i32 @assert(i32 %272)
  %274 = load i32, i32* %4, align 4
  %275 = call i32 @do_postponed(i32 %274)
  br label %276

276:                                              ; preds = %270, %255
  %277 = load i32, i32* @data_metafiles_loaded, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* @data_metafiles_loaded, align 4
  br label %282

279:                                              ; preds = %224
  %280 = load i32, i32* @revlist_metafiles_loaded, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* @revlist_metafiles_loaded, align 4
  br label %282

282:                                              ; preds = %279, %276
  %283 = load i32, i32* @metafiles_loaded, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* @metafiles_loaded, align 4
  store i32 1, i32* %3, align 4
  br label %355

285:                                              ; preds = %133, %130
  %286 = load %struct.metafile**, %struct.metafile*** @metafiles, align 8
  %287 = load i32, i32* %4, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.metafile*, %struct.metafile** %286, i64 %288
  %290 = load %struct.metafile*, %struct.metafile** %289, align 8
  store %struct.metafile* %290, %struct.metafile** %9, align 8
  %291 = load %struct.metafile*, %struct.metafile** %9, align 8
  %292 = getelementptr inbounds %struct.metafile, %struct.metafile* %291, i32 0, i32 4
  %293 = load i32*, i32** %292, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %331

295:                                              ; preds = %285
  %296 = load %struct.metafile*, %struct.metafile** %9, align 8
  %297 = getelementptr inbounds %struct.metafile, %struct.metafile* %296, i32 0, i32 4
  %298 = load i32*, i32** %297, align 8
  %299 = call i32 @check_aio_completion(i32* %298)
  %300 = load %struct.metafile*, %struct.metafile** %9, align 8
  %301 = getelementptr inbounds %struct.metafile, %struct.metafile* %300, i32 0, i32 4
  %302 = load i32*, i32** %301, align 8
  %303 = icmp ne i32* %302, null
  br i1 %303, label %304, label %309

304:                                              ; preds = %295
  %305 = load %struct.metafile*, %struct.metafile** %9, align 8
  %306 = getelementptr inbounds %struct.metafile, %struct.metafile* %305, i32 0, i32 4
  %307 = load i32*, i32** %306, align 8
  %308 = call i32 @WaitAioArrAdd(i32* %307)
  store i32 -2, i32* %3, align 4
  br label %355

309:                                              ; preds = %295
  %310 = load %struct.metafile*, %struct.metafile** %9, align 8
  %311 = getelementptr inbounds %struct.metafile, %struct.metafile* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %309
  store i32 1, i32* %3, align 4
  br label %355

315:                                              ; preds = %309
  %316 = load i32, i32* @stderr, align 4
  %317 = load %struct.metafile*, %struct.metafile** %9, align 8
  %318 = load %struct.metafile*, %struct.metafile** %9, align 8
  %319 = getelementptr inbounds %struct.metafile, %struct.metafile* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = call i32 (i32, i8*, ...) @fprintf(i32 %316, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), %struct.metafile* %317, i32 %320)
  %322 = load i64, i64* %7, align 8
  %323 = call i8* @zzmalloc(i64 %322)
  %324 = ptrtoint i8* %323 to i32
  %325 = load %struct.metafile*, %struct.metafile** %9, align 8
  %326 = getelementptr inbounds %struct.metafile, %struct.metafile* %325, i32 0, i32 3
  store i32 %324, i32* %326, align 4
  %327 = load i64, i64* %7, align 8
  %328 = load i64, i64* @tot_metafiles_memory, align 8
  %329 = add nsw i64 %328, %327
  store i64 %329, i64* @tot_metafiles_memory, align 8
  br label %330

330:                                              ; preds = %315
  br label %331

331:                                              ; preds = %330, %285
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Snapshot, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.metafile*, %struct.metafile** %9, align 8
  %336 = getelementptr inbounds %struct.metafile, %struct.metafile* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = load i64, i64* %6, align 8
  %339 = load i64, i64* %7, align 8
  %340 = load %struct.metafile*, %struct.metafile** %9, align 8
  %341 = call i32* @create_aio_read_connection(i32 %334, i32 %337, i64 %338, i64 %339, i32* @ct_metafile_aio, %struct.metafile* %340)
  %342 = load %struct.metafile*, %struct.metafile** %9, align 8
  %343 = getelementptr inbounds %struct.metafile, %struct.metafile* %342, i32 0, i32 4
  store i32* %341, i32** %343, align 8
  %344 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %345 = load %struct.metafile*, %struct.metafile** %9, align 8
  %346 = getelementptr inbounds %struct.metafile, %struct.metafile* %345, i32 0, i32 4
  %347 = load i32*, i32** %346, align 8
  %348 = icmp ne i32* %347, null
  %349 = zext i1 %348 to i32
  %350 = call i32 @assert(i32 %349)
  %351 = load %struct.metafile*, %struct.metafile** %9, align 8
  %352 = getelementptr inbounds %struct.metafile, %struct.metafile* %351, i32 0, i32 4
  %353 = load i32*, i32** %352, align 8
  %354 = call i32 @WaitAioArrAdd(i32* %353)
  store i32 -2, i32* %3, align 4
  br label %355

355:                                              ; preds = %331, %314, %304, %282
  %356 = load i32, i32* %3, align 4
  ret i32 %356
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.metafile* @zmalloc0(i32) #1

declare dso_local i64 @get_metafile_offset(i32) #1

declare dso_local i64 @get_revlist_metafile_offset(i32) #1

declare dso_local i8* @zzmalloc(i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @kfs_read_file(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i64 @compute_crc32(i32, i64) #1

declare dso_local i32 @add_use(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @__get_list_f(i32, i32) #1

declare dso_local i32 @FLI_ENTRY_LIST_ID(i32) #1

declare dso_local i32 @do_postponed(i32) #1

declare dso_local i32 @check_aio_completion(i32*) #1

declare dso_local i32 @WaitAioArrAdd(i32*) #1

declare dso_local i32* @create_aio_read_connection(i32, i32, i64, i64, i32*, %struct.metafile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
