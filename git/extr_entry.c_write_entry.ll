; ModuleID = '/home/carl/AnghaBench/git/extr_entry.c_write_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_entry.c_write_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.cache_entry = type { i32, i8*, i32, i32 }
%struct.checkout = type { %struct.TYPE_7__*, i64, i32, %struct.delayed_checkout* }
%struct.TYPE_7__ = type { i32 }
%struct.delayed_checkout = type { i32, i32 }
%struct.stat = type { i32 }
%struct.submodule = type { i32 }
%struct.stream_filter = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"unable to read sha1 file of %s (%s)\00", align 1
@has_symlinks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to create symlink %s\00", align 1
@CE_RETRY = common dso_local global i32 0, align 4
@CE_NO_DELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to create file %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unable to write file %s\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"cannot create temporary submodule %s\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"cannot create submodule directory %s\00", align 1
@SUBMODULE_MOVE_HEAD_FORCE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"unknown file mode for %s in index\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"unable to stat just-written file %s\00", align 1
@CE_UPDATE_IN_BASE = common dso_local global i32 0, align 4
@CE_ENTRY_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, i8*, %struct.checkout*, i32)* @write_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_entry(%struct.cache_entry* %0, i8* %1, %struct.checkout* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.checkout*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.delayed_checkout*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.strbuf, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.stat, align 4
  %21 = alloca %struct.submodule*, align 8
  %22 = alloca %struct.stream_filter*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.checkout* %2, %struct.checkout** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %24 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @S_IFMT, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.checkout*, %struct.checkout** %8, align 8
  %29 = getelementptr inbounds %struct.checkout, %struct.checkout* %28, i32 0, i32 3
  %30 = load %struct.delayed_checkout*, %struct.delayed_checkout** %29, align 8
  store %struct.delayed_checkout* %30, %struct.delayed_checkout** %11, align 8
  store i32 0, i32* %14, align 4
  %31 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i64 0, i64* %19, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 128
  br i1 %33, label %34, label %56

34:                                               ; preds = %4
  %35 = load %struct.checkout*, %struct.checkout** %8, align 8
  %36 = getelementptr inbounds %struct.checkout, %struct.checkout* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %39 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 3
  %43 = call %struct.stream_filter* @get_stream_filter(%struct.TYPE_7__* %37, i8* %40, i32* %42)
  store %struct.stream_filter* %43, %struct.stream_filter** %22, align 8
  %44 = load %struct.stream_filter*, %struct.stream_filter** %22, align 8
  %45 = icmp ne %struct.stream_filter* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.stream_filter*, %struct.stream_filter** %22, align 8
  %50 = load %struct.checkout*, %struct.checkout** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @streaming_write_entry(%struct.cache_entry* %47, i8* %48, %struct.stream_filter* %49, %struct.checkout* %50, i32 %51, i32* %14, %struct.stat* %20)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %237

55:                                               ; preds = %46, %34
  br label %56

56:                                               ; preds = %55, %4
  %57 = load i32, i32* %10, align 4
  switch i32 %57, label %233 [
    i32 129, label %58
    i32 128, label %88
    i32 130, label %197
  ]

58:                                               ; preds = %56
  %59 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %60 = call i8* @read_blob_entry(%struct.cache_entry* %59, i64* %17)
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %66 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %65, i32 0, i32 3
  %67 = call i8* @oid_to_hex(i32* %66)
  %68 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %67)
  store i32 %68, i32* %5, align 4
  br label %286

69:                                               ; preds = %58
  %70 = load i32, i32* @has_symlinks, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72, %69
  br label %163

76:                                               ; preds = %72
  %77 = load i8*, i8** %15, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @symlink(i8* %77, i8* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @error_errno(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  store i32 %86, i32* %5, align 4
  br label %286

87:                                               ; preds = %76
  br label %236

88:                                               ; preds = %56
  %89 = load %struct.delayed_checkout*, %struct.delayed_checkout** %11, align 8
  %90 = icmp ne %struct.delayed_checkout* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.delayed_checkout*, %struct.delayed_checkout** %11, align 8
  %93 = getelementptr inbounds %struct.delayed_checkout, %struct.delayed_checkout* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CE_RETRY, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i8* null, i8** %15, align 8
  store i64 0, i64* %17, align 8
  br label %110

98:                                               ; preds = %91, %88
  %99 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %100 = call i8* @read_blob_entry(%struct.cache_entry* %99, i64* %17)
  store i8* %100, i8** %15, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load i8*, i8** %7, align 8
  %105 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %106 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %105, i32 0, i32 3
  %107 = call i8* @oid_to_hex(i32* %106)
  %108 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %104, i8* %107)
  store i32 %108, i32* %5, align 4
  br label %286

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %97
  %111 = load %struct.delayed_checkout*, %struct.delayed_checkout** %11, align 8
  %112 = icmp ne %struct.delayed_checkout* %111, null
  br i1 %112, label %113, label %144

113:                                              ; preds = %110
  %114 = load %struct.delayed_checkout*, %struct.delayed_checkout** %11, align 8
  %115 = getelementptr inbounds %struct.delayed_checkout, %struct.delayed_checkout* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CE_NO_DELAY, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %144

119:                                              ; preds = %113
  %120 = load %struct.checkout*, %struct.checkout** %8, align 8
  %121 = getelementptr inbounds %struct.checkout, %struct.checkout* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %124 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** %15, align 8
  %127 = load i64, i64* %17, align 8
  %128 = load %struct.delayed_checkout*, %struct.delayed_checkout** %11, align 8
  %129 = call i32 @async_convert_to_working_tree(%struct.TYPE_7__* %122, i8* %125, i8* %126, i64 %127, %struct.strbuf* %16, %struct.delayed_checkout* %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %119
  %133 = load %struct.delayed_checkout*, %struct.delayed_checkout** %11, align 8
  %134 = getelementptr inbounds %struct.delayed_checkout, %struct.delayed_checkout* %133, i32 0, i32 0
  %135 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %136 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @string_list_has_string(i32* %134, i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load i8*, i8** %15, align 8
  %142 = call i32 @free(i8* %141)
  br label %285

143:                                              ; preds = %132, %119
  br label %154

144:                                              ; preds = %113, %110
  %145 = load %struct.checkout*, %struct.checkout** %8, align 8
  %146 = getelementptr inbounds %struct.checkout, %struct.checkout* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %149 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = load i64, i64* %17, align 8
  %153 = call i32 @convert_to_working_tree(%struct.TYPE_7__* %147, i8* %150, i8* %151, i64 %152, %struct.strbuf* %16)
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %144, %143
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i8*, i8** %15, align 8
  %159 = call i32 @free(i8* %158)
  %160 = call i8* @strbuf_detach(%struct.strbuf* %16, i64* %19)
  store i8* %160, i8** %15, align 8
  %161 = load i64, i64* %19, align 8
  store i64 %161, i64* %17, align 8
  br label %162

162:                                              ; preds = %157, %154
  br label %163

163:                                              ; preds = %162, %75
  %164 = load i8*, i8** %7, align 8
  %165 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @open_output_fd(i8* %164, %struct.cache_entry* %165, i32 %166)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load i8*, i8** %15, align 8
  %172 = call i32 @free(i8* %171)
  %173 = load i8*, i8** %7, align 8
  %174 = call i32 @error_errno(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %173)
  store i32 %174, i32* %5, align 4
  br label %286

175:                                              ; preds = %163
  %176 = load i32, i32* %12, align 4
  %177 = load i8*, i8** %15, align 8
  %178 = load i64, i64* %17, align 8
  %179 = call i32 @write_in_full(i32 %176, i8* %177, i64 %178)
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %175
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.checkout*, %struct.checkout** %8, align 8
  %185 = call i32 @fstat_output(i32 %183, %struct.checkout* %184, %struct.stat* %20)
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %182, %175
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @close(i32 %187)
  %189 = load i8*, i8** %15, align 8
  %190 = call i32 @free(i8* %189)
  %191 = load i32, i32* %18, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load i8*, i8** %7, align 8
  %195 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %194)
  store i32 %195, i32* %5, align 4
  br label %286

196:                                              ; preds = %186
  br label %236

197:                                              ; preds = %56
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i8*, i8** %7, align 8
  %202 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %201)
  store i32 %202, i32* %5, align 4
  br label %286

203:                                              ; preds = %197
  %204 = load i8*, i8** %7, align 8
  %205 = call i32 @mkdir(i8* %204, i32 511)
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load i8*, i8** %7, align 8
  %209 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %208)
  store i32 %209, i32* %5, align 4
  br label %286

210:                                              ; preds = %203
  %211 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %212 = call %struct.submodule* @submodule_from_ce(%struct.cache_entry* %211)
  store %struct.submodule* %212, %struct.submodule** %21, align 8
  %213 = load %struct.submodule*, %struct.submodule** %21, align 8
  %214 = icmp ne %struct.submodule* %213, null
  br i1 %214, label %215, label %232

215:                                              ; preds = %210
  %216 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %217 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %220 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %219, i32 0, i32 3
  %221 = call i8* @oid_to_hex(i32* %220)
  %222 = load %struct.checkout*, %struct.checkout** %8, align 8
  %223 = getelementptr inbounds %struct.checkout, %struct.checkout* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %215
  %227 = load i32, i32* @SUBMODULE_MOVE_HEAD_FORCE, align 4
  br label %229

228:                                              ; preds = %215
  br label %229

229:                                              ; preds = %228, %226
  %230 = phi i32 [ %227, %226 ], [ 0, %228 ]
  %231 = call i32 @submodule_move_head(i8* %218, i32* null, i8* %221, i32 %230)
  store i32 %231, i32* %5, align 4
  br label %286

232:                                              ; preds = %210
  br label %236

233:                                              ; preds = %56
  %234 = load i8*, i8** %7, align 8
  %235 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %234)
  store i32 %235, i32* %5, align 4
  br label %286

236:                                              ; preds = %232, %196, %87
  br label %237

237:                                              ; preds = %236, %54
  %238 = load %struct.checkout*, %struct.checkout** %8, align 8
  %239 = getelementptr inbounds %struct.checkout, %struct.checkout* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %284

242:                                              ; preds = %237
  %243 = load %struct.checkout*, %struct.checkout** %8, align 8
  %244 = getelementptr inbounds %struct.checkout, %struct.checkout* %243, i32 0, i32 0
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %244, align 8
  %246 = call i32 @assert(%struct.TYPE_7__* %245)
  %247 = load i32, i32* %14, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %261, label %249

249:                                              ; preds = %242
  %250 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %251 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = call i64 @lstat(i8* %252, %struct.stat* %20)
  %254 = icmp slt i64 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %249
  %256 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %257 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @error_errno(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %258)
  store i32 %259, i32* %5, align 4
  br label %286

260:                                              ; preds = %249
  br label %261

261:                                              ; preds = %260, %242
  %262 = load %struct.checkout*, %struct.checkout** %8, align 8
  %263 = getelementptr inbounds %struct.checkout, %struct.checkout* %262, i32 0, i32 0
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %266 = call i32 @fill_stat_cache_info(%struct.TYPE_7__* %264, %struct.cache_entry* %265, %struct.stat* %20)
  %267 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %268 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %269 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 8
  %272 = load %struct.checkout*, %struct.checkout** %8, align 8
  %273 = getelementptr inbounds %struct.checkout, %struct.checkout* %272, i32 0, i32 0
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %273, align 8
  %275 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %276 = call i32 @mark_fsmonitor_invalid(%struct.TYPE_7__* %274, %struct.cache_entry* %275)
  %277 = load i32, i32* @CE_ENTRY_CHANGED, align 4
  %278 = load %struct.checkout*, %struct.checkout** %8, align 8
  %279 = getelementptr inbounds %struct.checkout, %struct.checkout* %278, i32 0, i32 0
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %277
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %261, %237
  br label %285

285:                                              ; preds = %284, %140
  store i32 0, i32* %5, align 4
  br label %286

286:                                              ; preds = %285, %255, %233, %229, %207, %200, %193, %170, %103, %84, %63
  %287 = load i32, i32* %5, align 4
  ret i32 %287
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.stream_filter* @get_stream_filter(%struct.TYPE_7__*, i8*, i32*) #2

declare dso_local i32 @streaming_write_entry(%struct.cache_entry*, i8*, %struct.stream_filter*, %struct.checkout*, i32, i32*, %struct.stat*) #2

declare dso_local i8* @read_blob_entry(%struct.cache_entry*, i64*) #2

declare dso_local i32 @error(i8*, i8*, ...) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i32 @symlink(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @error_errno(i8*, i8*) #2

declare dso_local i32 @async_convert_to_working_tree(%struct.TYPE_7__*, i8*, i8*, i64, %struct.strbuf*, %struct.delayed_checkout*) #2

declare dso_local i32 @string_list_has_string(i32*, i8*) #2

declare dso_local i32 @convert_to_working_tree(%struct.TYPE_7__*, i8*, i8*, i64, %struct.strbuf*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i64*) #2

declare dso_local i32 @open_output_fd(i8*, %struct.cache_entry*, i32) #2

declare dso_local i32 @write_in_full(i32, i8*, i64) #2

declare dso_local i32 @fstat_output(i32, %struct.checkout*, %struct.stat*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local %struct.submodule* @submodule_from_ce(%struct.cache_entry*) #2

declare dso_local i32 @submodule_move_head(i8*, i32*, i8*, i32) #2

declare dso_local i32 @assert(%struct.TYPE_7__*) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @fill_stat_cache_info(%struct.TYPE_7__*, %struct.cache_entry*, %struct.stat*) #2

declare dso_local i32 @mark_fsmonitor_invalid(%struct.TYPE_7__*, %struct.cache_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
