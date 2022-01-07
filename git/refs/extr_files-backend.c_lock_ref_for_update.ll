; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_lock_ref_for_update.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_lock_ref_for_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.ref_update = type { i32, i32, i32, %struct.ref_lock*, i32, %struct.ref_update*, i32 }
%struct.ref_lock = type { i32 }
%struct.ref_transaction = type { i32 }
%struct.string_list = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@REF_HAVE_OLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"lock_ref_for_update\00", align 1
@REF_HAVE_NEW = common dso_local global i32 0, align 4
@REF_DELETING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot lock ref '%s': %s\00", align 1
@REF_ISSYMREF = common dso_local global i32 0, align 4
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"cannot lock ref '%s': error reading reference\00", align 1
@TRANSACTION_GENERIC_ERROR = common dso_local global i32 0, align 4
@REF_LOG_ONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot update ref '%s': %s\00", align 1
@REF_NEEDS_COMMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"couldn't close '%s.lock'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.files_ref_store*, %struct.ref_update*, %struct.ref_transaction*, i8*, %struct.string_list*, %struct.strbuf*)* @lock_ref_for_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_ref_for_update(%struct.files_ref_store* %0, %struct.ref_update* %1, %struct.ref_transaction* %2, i8* %3, %struct.string_list* %4, %struct.strbuf* %5) #0 {
  %7 = alloca %struct.files_ref_store*, align 8
  %8 = alloca %struct.ref_update*, align 8
  %9 = alloca %struct.ref_transaction*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.string_list*, align 8
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca %struct.strbuf, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ref_lock*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ref_update*, align 8
  %19 = alloca %struct.ref_lock*, align 8
  %20 = alloca i8*, align 8
  store %struct.files_ref_store* %0, %struct.files_ref_store** %7, align 8
  store %struct.ref_update* %1, %struct.ref_update** %8, align 8
  store %struct.ref_transaction* %2, %struct.ref_transaction** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.string_list* %4, %struct.string_list** %11, align 8
  store %struct.strbuf* %5, %struct.strbuf** %12, align 8
  %21 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %22 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %23 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @REF_HAVE_OLD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %6
  %29 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %30 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %29, i32 0, i32 6
  %31 = call i64 @is_null_oid(i32* %30)
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %6
  %35 = phi i1 [ false, %6 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %37 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %38 = call i32 @files_assert_main_repository(%struct.files_ref_store* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %40 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @REF_HAVE_NEW, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %34
  %46 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %47 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %46, i32 0, i32 4
  %48 = call i64 @is_null_oid(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @REF_DELETING, align 4
  %52 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %53 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %45, %34
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %61 = load %struct.ref_transaction*, %struct.ref_transaction** %9, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.string_list*, %struct.string_list** %11, align 8
  %64 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %65 = call i32 @split_head_update(%struct.ref_update* %60, %struct.ref_transaction* %61, i8* %62, %struct.string_list* %63, %struct.strbuf* %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %272

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %56
  %71 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %72 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %73 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.string_list*, %struct.string_list** %11, align 8
  %77 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %78 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %77, i32 0, i32 1
  %79 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %80 = call i32 @lock_raw_ref(%struct.files_ref_store* %71, i32 %74, i32 %75, %struct.string_list* %76, i32* null, %struct.ref_lock** %16, %struct.strbuf* %13, i32* %78, %struct.strbuf* %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %70
  %84 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %85 = call i8* @strbuf_detach(%struct.strbuf* %84, i32* null)
  store i8* %85, i8** %17, align 8
  %86 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %87 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %88 = call i32 @original_update_refname(%struct.ref_update* %87)
  %89 = load i8*, i8** %17, align 8
  %90 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %88, i8* %89)
  %91 = load i8*, i8** %17, align 8
  %92 = call i32 @free(i8* %91)
  br label %272

93:                                               ; preds = %70
  %94 = load %struct.ref_lock*, %struct.ref_lock** %16, align 8
  %95 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %96 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %95, i32 0, i32 3
  store %struct.ref_lock* %94, %struct.ref_lock** %96, align 8
  %97 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %98 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @REF_ISSYMREF, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %157

103:                                              ; preds = %93
  %104 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %105 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @REF_NO_DEREF, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %144

110:                                              ; preds = %103
  %111 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %112 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ref_lock*, %struct.ref_lock** %16, align 8
  %116 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %115, i32 0, i32 0
  %117 = call i64 @refs_read_ref_full(i32* %112, i32 %114, i32 0, i32* %116, i32* null)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %110
  %120 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %121 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @REF_HAVE_OLD, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %128 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %129 = call i32 @original_update_refname(%struct.ref_update* %128)
  %130 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %127, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %131, i32* %15, align 4
  br label %272

132:                                              ; preds = %119
  br label %143

133:                                              ; preds = %110
  %134 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %135 = load %struct.ref_lock*, %struct.ref_lock** %16, align 8
  %136 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %135, i32 0, i32 0
  %137 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %138 = call i64 @check_old_oid(%struct.ref_update* %134, i32* %136, %struct.strbuf* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %141, i32* %15, align 4
  br label %272

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %132
  br label %156

144:                                              ; preds = %103
  %145 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %146 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ref_transaction*, %struct.ref_transaction** %9, align 8
  %149 = load %struct.string_list*, %struct.string_list** %11, align 8
  %150 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %151 = call i32 @split_symref_update(%struct.ref_update* %145, i32 %147, %struct.ref_transaction* %148, %struct.string_list* %149, %struct.strbuf* %150)
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  br label %272

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %143
  br label %187

157:                                              ; preds = %93
  %158 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %159 = load %struct.ref_lock*, %struct.ref_lock** %16, align 8
  %160 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %159, i32 0, i32 0
  %161 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %162 = call i64 @check_old_oid(%struct.ref_update* %158, i32* %160, %struct.strbuf* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %165, i32* %15, align 4
  br label %272

166:                                              ; preds = %157
  %167 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %168 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %167, i32 0, i32 5
  %169 = load %struct.ref_update*, %struct.ref_update** %168, align 8
  store %struct.ref_update* %169, %struct.ref_update** %18, align 8
  br label %170

170:                                              ; preds = %182, %166
  %171 = load %struct.ref_update*, %struct.ref_update** %18, align 8
  %172 = icmp ne %struct.ref_update* %171, null
  br i1 %172, label %173, label %186

173:                                              ; preds = %170
  %174 = load %struct.ref_update*, %struct.ref_update** %18, align 8
  %175 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %174, i32 0, i32 3
  %176 = load %struct.ref_lock*, %struct.ref_lock** %175, align 8
  store %struct.ref_lock* %176, %struct.ref_lock** %19, align 8
  %177 = load %struct.ref_lock*, %struct.ref_lock** %19, align 8
  %178 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %177, i32 0, i32 0
  %179 = load %struct.ref_lock*, %struct.ref_lock** %16, align 8
  %180 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %179, i32 0, i32 0
  %181 = call i32 @oidcpy(i32* %178, i32* %180)
  br label %182

182:                                              ; preds = %173
  %183 = load %struct.ref_update*, %struct.ref_update** %18, align 8
  %184 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %183, i32 0, i32 5
  %185 = load %struct.ref_update*, %struct.ref_update** %184, align 8
  store %struct.ref_update* %185, %struct.ref_update** %18, align 8
  br label %170

186:                                              ; preds = %170
  br label %187

187:                                              ; preds = %186, %156
  %188 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %189 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @REF_HAVE_NEW, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %252

194:                                              ; preds = %187
  %195 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %196 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @REF_DELETING, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %252, label %201

201:                                              ; preds = %194
  %202 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %203 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @REF_LOG_ONLY, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %252, label %208

208:                                              ; preds = %201
  %209 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %210 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @REF_ISSYMREF, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %208
  %216 = load %struct.ref_lock*, %struct.ref_lock** %16, align 8
  %217 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %216, i32 0, i32 0
  %218 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %219 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %218, i32 0, i32 4
  %220 = call i64 @oideq(i32* %217, i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  br label %251

223:                                              ; preds = %215, %208
  %224 = load %struct.ref_lock*, %struct.ref_lock** %16, align 8
  %225 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %226 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %225, i32 0, i32 4
  %227 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %228 = call i64 @write_ref_to_lockfile(%struct.ref_lock* %224, i32* %226, %struct.strbuf* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %223
  %231 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %232 = call i8* @strbuf_detach(%struct.strbuf* %231, i32* null)
  store i8* %232, i8** %20, align 8
  %233 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %234 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %233, i32 0, i32 3
  store %struct.ref_lock* null, %struct.ref_lock** %234, align 8
  %235 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %236 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %237 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i8*, i8** %20, align 8
  %240 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %235, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %238, i8* %239)
  %241 = load i8*, i8** %20, align 8
  %242 = call i32 @free(i8* %241)
  %243 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %243, i32* %15, align 4
  br label %272

244:                                              ; preds = %223
  %245 = load i32, i32* @REF_NEEDS_COMMIT, align 4
  %246 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %247 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %244
  br label %251

251:                                              ; preds = %250, %222
  br label %252

252:                                              ; preds = %251, %201, %194, %187
  %253 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %254 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @REF_NEEDS_COMMIT, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %271, label %259

259:                                              ; preds = %252
  %260 = load %struct.ref_lock*, %struct.ref_lock** %16, align 8
  %261 = call i64 @close_ref_gently(%struct.ref_lock* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %259
  %264 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %265 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %266 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %264, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %269, i32* %15, align 4
  br label %272

270:                                              ; preds = %259
  br label %271

271:                                              ; preds = %270, %252
  br label %272

272:                                              ; preds = %271, %263, %230, %164, %154, %140, %126, %83, %68
  %273 = call i32 @strbuf_release(%struct.strbuf* %13)
  %274 = load i32, i32* %15, align 4
  ret i32 %274
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_null_oid(i32*) #2

declare dso_local i32 @files_assert_main_repository(%struct.files_ref_store*, i8*) #2

declare dso_local i32 @split_head_update(%struct.ref_update*, %struct.ref_transaction*, i8*, %struct.string_list*, %struct.strbuf*) #2

declare dso_local i32 @lock_raw_ref(%struct.files_ref_store*, i32, i32, %struct.string_list*, i32*, %struct.ref_lock**, %struct.strbuf*, i32*, %struct.strbuf*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #2

declare dso_local i32 @original_update_refname(%struct.ref_update*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @refs_read_ref_full(i32*, i32, i32, i32*, i32*) #2

declare dso_local i64 @check_old_oid(%struct.ref_update*, i32*, %struct.strbuf*) #2

declare dso_local i32 @split_symref_update(%struct.ref_update*, i32, %struct.ref_transaction*, %struct.string_list*, %struct.strbuf*) #2

declare dso_local i32 @oidcpy(i32*, i32*) #2

declare dso_local i64 @oideq(i32*, i32*) #2

declare dso_local i64 @write_ref_to_lockfile(%struct.ref_lock*, i32*, %struct.strbuf*) #2

declare dso_local i64 @close_ref_gently(%struct.ref_lock*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
