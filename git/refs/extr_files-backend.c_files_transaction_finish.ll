; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_transaction_finish.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_transaction_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_store = type { i32 }
%struct.ref_transaction = type { i64, %struct.ref_update**, %struct.files_transaction_backend_data*, i32 }
%struct.ref_update = type { i32, i32, i32, %struct.ref_lock*, i32, i32 }
%struct.ref_lock = type { i32, i32 }
%struct.files_transaction_backend_data = type { %struct.ref_transaction* }
%struct.files_ref_store = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ref_transaction_finish\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@REF_TRANSACTION_CLOSED = common dso_local global i32 0, align 4
@REF_NEEDS_COMMIT = common dso_local global i32 0, align 4
@REF_LOG_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot update the ref '%s': %s\00", align 1
@TRANSACTION_GENERIC_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"couldn't set '%s'\00", align 1
@REF_DELETING = common dso_local global i32 0, align 4
@REF_IS_PRUNING = common dso_local global i32 0, align 4
@REMOVE_EMPTY_PARENTS_REFLOG = common dso_local global i32 0, align 4
@REF_ISPACKED = common dso_local global i32 0, align 4
@REF_ISSYMREF = common dso_local global i32 0, align 4
@REF_DELETED_LOOSE = common dso_local global i32 0, align 4
@REMOVE_EMPTY_PARENTS_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, %struct.ref_transaction*, %struct.strbuf*)* @files_transaction_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_transaction_finish(%struct.ref_store* %0, %struct.ref_transaction* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_store*, align 8
  %6 = alloca %struct.ref_transaction*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca %struct.files_ref_store*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca %struct.files_transaction_backend_data*, align 8
  %13 = alloca %struct.ref_transaction*, align 8
  %14 = alloca %struct.ref_update*, align 8
  %15 = alloca %struct.ref_lock*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ref_update*, align 8
  %18 = alloca %struct.ref_update*, align 8
  %19 = alloca %struct.ref_lock*, align 8
  %20 = alloca %struct.ref_update*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %5, align 8
  store %struct.ref_transaction* %1, %struct.ref_transaction** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  %21 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %22 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %21, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %22, %struct.files_ref_store** %8, align 8
  store i32 0, i32* %10, align 4
  %23 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %24 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %25 = call i32 @assert(%struct.strbuf* %24)
  %26 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %27 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @REF_TRANSACTION_CLOSED, align 4
  %32 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %33 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %4, align 4
  br label %315

34:                                               ; preds = %3
  %35 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %36 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %35, i32 0, i32 2
  %37 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %36, align 8
  store %struct.files_transaction_backend_data* %37, %struct.files_transaction_backend_data** %12, align 8
  %38 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %12, align 8
  %39 = getelementptr inbounds %struct.files_transaction_backend_data, %struct.files_transaction_backend_data* %38, i32 0, i32 0
  %40 = load %struct.ref_transaction*, %struct.ref_transaction** %39, align 8
  store %struct.ref_transaction* %40, %struct.ref_transaction** %13, align 8
  store i64 0, i64* %9, align 8
  br label %41

41:                                               ; preds = %131, %34
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %44 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %134

47:                                               ; preds = %41
  %48 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %49 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %48, i32 0, i32 1
  %50 = load %struct.ref_update**, %struct.ref_update*** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %50, i64 %51
  %53 = load %struct.ref_update*, %struct.ref_update** %52, align 8
  store %struct.ref_update* %53, %struct.ref_update** %14, align 8
  %54 = load %struct.ref_update*, %struct.ref_update** %14, align 8
  %55 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %54, i32 0, i32 3
  %56 = load %struct.ref_lock*, %struct.ref_lock** %55, align 8
  store %struct.ref_lock* %56, %struct.ref_lock** %15, align 8
  %57 = load %struct.ref_update*, %struct.ref_update** %14, align 8
  %58 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @REF_NEEDS_COMMIT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %47
  %64 = load %struct.ref_update*, %struct.ref_update** %14, align 8
  %65 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @REF_LOG_ONLY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %63, %47
  %71 = load %struct.files_ref_store*, %struct.files_ref_store** %8, align 8
  %72 = load %struct.ref_lock*, %struct.ref_lock** %15, align 8
  %73 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ref_lock*, %struct.ref_lock** %15, align 8
  %76 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %75, i32 0, i32 1
  %77 = load %struct.ref_update*, %struct.ref_update** %14, align 8
  %78 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %77, i32 0, i32 5
  %79 = load %struct.ref_update*, %struct.ref_update** %14, align 8
  %80 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ref_update*, %struct.ref_update** %14, align 8
  %83 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %86 = call i64 @files_log_ref_write(%struct.files_ref_store* %71, i32 %74, i32* %76, i32* %78, i32 %81, i32 %84, %struct.strbuf* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %70
  %89 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %90 = call i8* @strbuf_detach(%struct.strbuf* %89, i32* null)
  store i8* %90, i8** %16, align 8
  %91 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %92 = load %struct.ref_lock*, %struct.ref_lock** %15, align 8
  %93 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %94, i8* %95)
  %97 = load i8*, i8** %16, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load %struct.ref_lock*, %struct.ref_lock** %15, align 8
  %100 = call i32 @unlock_ref(%struct.ref_lock* %99)
  %101 = load %struct.ref_update*, %struct.ref_update** %14, align 8
  %102 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %101, i32 0, i32 3
  store %struct.ref_lock* null, %struct.ref_lock** %102, align 8
  %103 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %103, i32* %10, align 4
  br label %278

104:                                              ; preds = %70
  br label %105

105:                                              ; preds = %104, %63
  %106 = load %struct.ref_update*, %struct.ref_update** %14, align 8
  %107 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @REF_NEEDS_COMMIT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %105
  %113 = load %struct.files_ref_store*, %struct.files_ref_store** %8, align 8
  %114 = call i32 @clear_loose_ref_cache(%struct.files_ref_store* %113)
  %115 = load %struct.ref_lock*, %struct.ref_lock** %15, align 8
  %116 = call i64 @commit_ref(%struct.ref_lock* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %112
  %119 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %120 = load %struct.ref_lock*, %struct.ref_lock** %15, align 8
  %121 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load %struct.ref_lock*, %struct.ref_lock** %15, align 8
  %125 = call i32 @unlock_ref(%struct.ref_lock* %124)
  %126 = load %struct.ref_update*, %struct.ref_update** %14, align 8
  %127 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %126, i32 0, i32 3
  store %struct.ref_lock* null, %struct.ref_lock** %127, align 8
  %128 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %128, i32* %10, align 4
  br label %278

129:                                              ; preds = %112
  br label %130

130:                                              ; preds = %129, %105
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %9, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %9, align 8
  br label %41

134:                                              ; preds = %41
  store i64 0, i64* %9, align 8
  br label %135

135:                                              ; preds = %188, %134
  %136 = load i64, i64* %9, align 8
  %137 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %138 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ult i64 %136, %139
  br i1 %140, label %141, label %191

141:                                              ; preds = %135
  %142 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %143 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %142, i32 0, i32 1
  %144 = load %struct.ref_update**, %struct.ref_update*** %143, align 8
  %145 = load i64, i64* %9, align 8
  %146 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %144, i64 %145
  %147 = load %struct.ref_update*, %struct.ref_update** %146, align 8
  store %struct.ref_update* %147, %struct.ref_update** %17, align 8
  %148 = load %struct.ref_update*, %struct.ref_update** %17, align 8
  %149 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @REF_DELETING, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %187

154:                                              ; preds = %141
  %155 = load %struct.ref_update*, %struct.ref_update** %17, align 8
  %156 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @REF_LOG_ONLY, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %187, label %161

161:                                              ; preds = %154
  %162 = load %struct.ref_update*, %struct.ref_update** %17, align 8
  %163 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @REF_IS_PRUNING, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %187, label %168

168:                                              ; preds = %161
  %169 = call i32 @strbuf_reset(%struct.strbuf* %11)
  %170 = load %struct.files_ref_store*, %struct.files_ref_store** %8, align 8
  %171 = load %struct.ref_update*, %struct.ref_update** %17, align 8
  %172 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @files_reflog_path(%struct.files_ref_store* %170, %struct.strbuf* %11, i32 %173)
  %175 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @unlink_or_warn(i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %168
  %180 = load %struct.files_ref_store*, %struct.files_ref_store** %8, align 8
  %181 = load %struct.ref_update*, %struct.ref_update** %17, align 8
  %182 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @REMOVE_EMPTY_PARENTS_REFLOG, align 4
  %185 = call i32 @try_remove_empty_parents(%struct.files_ref_store* %180, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %179, %168
  br label %187

187:                                              ; preds = %186, %161, %154, %141
  br label %188

188:                                              ; preds = %187
  %189 = load i64, i64* %9, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %9, align 8
  br label %135

191:                                              ; preds = %135
  %192 = load %struct.ref_transaction*, %struct.ref_transaction** %13, align 8
  %193 = icmp ne %struct.ref_transaction* %192, null
  br i1 %193, label %194, label %206

194:                                              ; preds = %191
  %195 = load %struct.ref_transaction*, %struct.ref_transaction** %13, align 8
  %196 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %197 = call i32 @ref_transaction_commit(%struct.ref_transaction* %195, %struct.strbuf* %196)
  store i32 %197, i32* %10, align 4
  %198 = load %struct.ref_transaction*, %struct.ref_transaction** %13, align 8
  %199 = call i32 @ref_transaction_free(%struct.ref_transaction* %198)
  store %struct.ref_transaction* null, %struct.ref_transaction** %13, align 8
  %200 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %12, align 8
  %201 = getelementptr inbounds %struct.files_transaction_backend_data, %struct.files_transaction_backend_data* %200, i32 0, i32 0
  store %struct.ref_transaction* null, %struct.ref_transaction** %201, align 8
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %194
  br label %278

205:                                              ; preds = %194
  br label %206

206:                                              ; preds = %205, %191
  store i64 0, i64* %9, align 8
  br label %207

207:                                              ; preds = %272, %206
  %208 = load i64, i64* %9, align 8
  %209 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %210 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ult i64 %208, %211
  br i1 %212, label %213, label %275

213:                                              ; preds = %207
  %214 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %215 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %214, i32 0, i32 1
  %216 = load %struct.ref_update**, %struct.ref_update*** %215, align 8
  %217 = load i64, i64* %9, align 8
  %218 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %216, i64 %217
  %219 = load %struct.ref_update*, %struct.ref_update** %218, align 8
  store %struct.ref_update* %219, %struct.ref_update** %18, align 8
  %220 = load %struct.ref_update*, %struct.ref_update** %18, align 8
  %221 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %220, i32 0, i32 3
  %222 = load %struct.ref_lock*, %struct.ref_lock** %221, align 8
  store %struct.ref_lock* %222, %struct.ref_lock** %19, align 8
  %223 = load %struct.ref_update*, %struct.ref_update** %18, align 8
  %224 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @REF_DELETING, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %271

229:                                              ; preds = %213
  %230 = load %struct.ref_update*, %struct.ref_update** %18, align 8
  %231 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @REF_LOG_ONLY, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %271, label %236

236:                                              ; preds = %229
  %237 = load %struct.ref_update*, %struct.ref_update** %18, align 8
  %238 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @REF_ISPACKED, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %236
  %244 = load %struct.ref_update*, %struct.ref_update** %18, align 8
  %245 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @REF_ISSYMREF, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %270

250:                                              ; preds = %243, %236
  %251 = call i32 @strbuf_reset(%struct.strbuf* %11)
  %252 = load %struct.files_ref_store*, %struct.files_ref_store** %8, align 8
  %253 = load %struct.ref_lock*, %struct.ref_lock** %19, align 8
  %254 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @files_ref_path(%struct.files_ref_store* %252, %struct.strbuf* %11, i32 %255)
  %257 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %260 = call i64 @unlink_or_msg(i32 %258, %struct.strbuf* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %250
  %263 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %263, i32* %10, align 4
  br label %278

264:                                              ; preds = %250
  %265 = load i32, i32* @REF_DELETED_LOOSE, align 4
  %266 = load %struct.ref_update*, %struct.ref_update** %18, align 8
  %267 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %264, %243
  br label %271

271:                                              ; preds = %270, %229, %213
  br label %272

272:                                              ; preds = %271
  %273 = load i64, i64* %9, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %9, align 8
  br label %207

275:                                              ; preds = %207
  %276 = load %struct.files_ref_store*, %struct.files_ref_store** %8, align 8
  %277 = call i32 @clear_loose_ref_cache(%struct.files_ref_store* %276)
  br label %278

278:                                              ; preds = %275, %262, %204, %118, %88
  %279 = load %struct.files_ref_store*, %struct.files_ref_store** %8, align 8
  %280 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %281 = call i32 @files_transaction_cleanup(%struct.files_ref_store* %279, %struct.ref_transaction* %280)
  store i64 0, i64* %9, align 8
  br label %282

282:                                              ; preds = %309, %278
  %283 = load i64, i64* %9, align 8
  %284 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %285 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp ult i64 %283, %286
  br i1 %287, label %288, label %312

288:                                              ; preds = %282
  %289 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %290 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %289, i32 0, i32 1
  %291 = load %struct.ref_update**, %struct.ref_update*** %290, align 8
  %292 = load i64, i64* %9, align 8
  %293 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %291, i64 %292
  %294 = load %struct.ref_update*, %struct.ref_update** %293, align 8
  store %struct.ref_update* %294, %struct.ref_update** %20, align 8
  %295 = load %struct.ref_update*, %struct.ref_update** %20, align 8
  %296 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @REF_DELETED_LOOSE, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %288
  %302 = load %struct.files_ref_store*, %struct.files_ref_store** %8, align 8
  %303 = load %struct.ref_update*, %struct.ref_update** %20, align 8
  %304 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @REMOVE_EMPTY_PARENTS_REF, align 4
  %307 = call i32 @try_remove_empty_parents(%struct.files_ref_store* %302, i32 %305, i32 %306)
  br label %308

308:                                              ; preds = %301, %288
  br label %309

309:                                              ; preds = %308
  %310 = load i64, i64* %9, align 8
  %311 = add i64 %310, 1
  store i64 %311, i64* %9, align 8
  br label %282

312:                                              ; preds = %282
  %313 = call i32 @strbuf_release(%struct.strbuf* %11)
  %314 = load i32, i32* %10, align 4
  store i32 %314, i32* %4, align 4
  br label %315

315:                                              ; preds = %312, %30
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(%struct.strbuf*) #1

declare dso_local i64 @files_log_ref_write(%struct.files_ref_store*, i32, i32*, i32*, i32, i32, %struct.strbuf*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @unlock_ref(%struct.ref_lock*) #1

declare dso_local i32 @clear_loose_ref_cache(%struct.files_ref_store*) #1

declare dso_local i64 @commit_ref(%struct.ref_lock*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @files_reflog_path(%struct.files_ref_store*, %struct.strbuf*, i32) #1

declare dso_local i32 @unlink_or_warn(i32) #1

declare dso_local i32 @try_remove_empty_parents(%struct.files_ref_store*, i32, i32) #1

declare dso_local i32 @ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #1

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #1

declare dso_local i32 @files_ref_path(%struct.files_ref_store*, %struct.strbuf*, i32) #1

declare dso_local i64 @unlink_or_msg(i32, %struct.strbuf*) #1

declare dso_local i32 @files_transaction_cleanup(%struct.files_ref_store*, %struct.ref_transaction*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
