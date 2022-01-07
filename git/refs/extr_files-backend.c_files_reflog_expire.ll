; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_reflog_expire.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_reflog_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.strbuf = type { i8* }
%struct.TYPE_2__ = type { i32 }
%struct.ref_store = type { i32 }
%struct.object_id = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.expire_reflog_cb = type { i32, i32, i8*, i32, i32 }
%struct.ref_lock = type { i8*, %struct.lock_file }

@REF_STORE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"reflog_expire\00", align 1
@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot lock ref '%s': %s\00", align 1
@EXPIRE_REFLOGS_DRY_RUN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"cannot fdopen %s (%s)\00", align 1
@expire_reflog_ent = common dso_local global i32 0, align 4
@EXPIRE_REFLOGS_UPDATE_REF = common dso_local global i32 0, align 4
@REF_ISSYMREF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"couldn't write %s: %s\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"couldn't write %s\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"unable to write reflog '%s' (%s)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"couldn't set %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8*, %struct.object_id*, i32, i32 (i8*, %struct.object_id*, i8*)*, i32, i32 (i8*)*, i8*)* @files_reflog_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_reflog_expire(%struct.ref_store* %0, i8* %1, %struct.object_id* %2, i32 %3, i32 (i8*, %struct.object_id*, i8*)* %4, i32 %5, i32 (i8*)* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ref_store*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32 (i8*, %struct.object_id*, i8*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32 (i8*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.files_ref_store*, align 8
  %19 = alloca %struct.lock_file, align 4
  %20 = alloca %struct.expire_reflog_cb, align 8
  %21 = alloca %struct.ref_lock*, align 8
  %22 = alloca %struct.strbuf, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.strbuf, align 8
  %27 = alloca %struct.strbuf, align 8
  %28 = alloca i32, align 4
  store %struct.ref_store* %0, %struct.ref_store** %10, align 8
  store i8* %1, i8** %11, align 8
  store %struct.object_id* %2, %struct.object_id** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 (i8*, %struct.object_id*, i8*)* %4, i32 (i8*, %struct.object_id*, i8*)** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 (i8*)* %6, i32 (i8*)** %16, align 8
  store i8* %7, i8** %17, align 8
  %29 = load %struct.ref_store*, %struct.ref_store** %10, align 8
  %30 = load i32, i32* @REF_STORE_WRITE, align 4
  %31 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %29, i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %31, %struct.files_ref_store** %18, align 8
  %32 = bitcast %struct.lock_file* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %33 = bitcast %struct.strbuf* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %24, align 4
  %34 = bitcast %struct.strbuf* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %35 = call i32 @memset(%struct.expire_reflog_cb* %20, i32 0, i32 24)
  %36 = load i32, i32* %13, align 4
  %37 = getelementptr inbounds %struct.expire_reflog_cb, %struct.expire_reflog_cb* %20, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = getelementptr inbounds %struct.expire_reflog_cb, %struct.expire_reflog_cb* %20, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %15, align 4
  %41 = getelementptr inbounds %struct.expire_reflog_cb, %struct.expire_reflog_cb* %20, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  %42 = load %struct.files_ref_store*, %struct.files_ref_store** %18, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.object_id*, %struct.object_id** %12, align 8
  %45 = load i32, i32* @REF_NO_DEREF, align 4
  %46 = call %struct.ref_lock* @lock_ref_oid_basic(%struct.files_ref_store* %42, i8* %43, %struct.object_id* %44, i32* null, i32* null, i32 %45, i32* %25, %struct.strbuf* %26)
  store %struct.ref_lock* %46, %struct.ref_lock** %21, align 8
  %47 = load %struct.ref_lock*, %struct.ref_lock** %21, align 8
  %48 = icmp ne %struct.ref_lock* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %8
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %52)
  %54 = call i32 @strbuf_release(%struct.strbuf* %26)
  store i32 -1, i32* %9, align 4
  br label %216

55:                                               ; preds = %8
  %56 = load %struct.ref_store*, %struct.ref_store** %10, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @refs_reflog_exists(%struct.ref_store* %56, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.ref_lock*, %struct.ref_lock** %21, align 8
  %62 = call i32 @unlock_ref(%struct.ref_lock* %61)
  store i32 0, i32* %9, align 4
  br label %216

63:                                               ; preds = %55
  %64 = load %struct.files_ref_store*, %struct.files_ref_store** %18, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @files_reflog_path(%struct.files_ref_store* %64, %struct.strbuf* %22, i8* %65)
  %67 = call i8* @strbuf_detach(%struct.strbuf* %22, i32* null)
  store i8* %67, i8** %23, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @EXPIRE_REFLOGS_DRY_RUN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %63
  %73 = load i8*, i8** %23, align 8
  %74 = call i64 @hold_lock_file_for_update(%struct.lock_file* %19, i8* %73, i32 0)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = bitcast %struct.strbuf* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %78 = load i8*, i8** %23, align 8
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @unable_to_lock_message(i8* %78, i32 %79, %struct.strbuf* %27)
  %81 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = call i32 @strbuf_release(%struct.strbuf* %27)
  br label %210

85:                                               ; preds = %72
  %86 = call i32 @fdopen_lock_file(%struct.lock_file* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %87 = getelementptr inbounds %struct.expire_reflog_cb, %struct.expire_reflog_cb* %20, i32 0, i32 3
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds %struct.expire_reflog_cb, %struct.expire_reflog_cb* %20, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = call i8* @get_lock_file_path(%struct.lock_file* %19)
  %93 = load i32, i32* @errno, align 4
  %94 = call i8* @strerror(i32 %93)
  %95 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %92, i8* %94)
  br label %210

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %63
  %98 = load i32 (i8*, %struct.object_id*, i8*)*, i32 (i8*, %struct.object_id*, i8*)** %14, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load %struct.object_id*, %struct.object_id** %12, align 8
  %101 = getelementptr inbounds %struct.expire_reflog_cb, %struct.expire_reflog_cb* %20, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 %98(i8* %99, %struct.object_id* %100, i8* %102)
  %104 = load %struct.ref_store*, %struct.ref_store** %10, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* @expire_reflog_ent, align 4
  %107 = call i32 @refs_for_each_reflog_ent(%struct.ref_store* %104, i8* %105, i32 %106, %struct.expire_reflog_cb* %20)
  %108 = load i32 (i8*)*, i32 (i8*)** %16, align 8
  %109 = getelementptr inbounds %struct.expire_reflog_cb, %struct.expire_reflog_cb* %20, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 %108(i8* %110)
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @EXPIRE_REFLOGS_DRY_RUN, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %204, label %116

116:                                              ; preds = %97
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @EXPIRE_REFLOGS_UPDATE_REF, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* @REF_ISSYMREF, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.expire_reflog_cb, %struct.expire_reflog_cb* %20, i32 0, i32 1
  %128 = call i32 @is_null_oid(i32* %127)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %126, %121, %116
  %132 = phi i1 [ false, %121 ], [ false, %116 ], [ %130, %126 ]
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %28, align 4
  %134 = call i64 @close_lock_file_gently(%struct.lock_file* %19)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load i8*, i8** %23, align 8
  %138 = load i32, i32* @errno, align 4
  %139 = call i8* @strerror(i32 %138)
  %140 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %137, i8* %139)
  %141 = load i32, i32* %24, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %24, align 4
  %143 = call i32 @rollback_lock_file(%struct.lock_file* %19)
  br label %203

144:                                              ; preds = %131
  %145 = load i32, i32* %28, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %176

147:                                              ; preds = %144
  %148 = load %struct.ref_lock*, %struct.ref_lock** %21, align 8
  %149 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %148, i32 0, i32 1
  %150 = call i32 @get_lock_file_fd(%struct.lock_file* %149)
  %151 = getelementptr inbounds %struct.expire_reflog_cb, %struct.expire_reflog_cb* %20, i32 0, i32 1
  %152 = call i32 @oid_to_hex(i32* %151)
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @write_in_full(i32 %150, i32 %152, i32 %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %147
  %159 = load %struct.ref_lock*, %struct.ref_lock** %21, align 8
  %160 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %159, i32 0, i32 1
  %161 = call i32 @get_lock_file_fd(%struct.lock_file* %160)
  %162 = call i64 @write_str_in_full(i32 %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %158
  %165 = load %struct.ref_lock*, %struct.ref_lock** %21, align 8
  %166 = call i64 @close_ref_gently(%struct.ref_lock* %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %164, %158, %147
  %169 = load %struct.ref_lock*, %struct.ref_lock** %21, align 8
  %170 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %169, i32 0, i32 1
  %171 = call i8* @get_lock_file_path(%struct.lock_file* %170)
  %172 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %171)
  %173 = load i32, i32* %24, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %24, align 4
  %175 = call i32 @rollback_lock_file(%struct.lock_file* %19)
  br label %202

176:                                              ; preds = %164, %144
  %177 = call i64 @commit_lock_file(%struct.lock_file* %19)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load i8*, i8** %23, align 8
  %181 = load i32, i32* @errno, align 4
  %182 = call i8* @strerror(i32 %181)
  %183 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %180, i8* %182)
  %184 = load i32, i32* %24, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %24, align 4
  br label %201

186:                                              ; preds = %176
  %187 = load i32, i32* %28, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = load %struct.ref_lock*, %struct.ref_lock** %21, align 8
  %191 = call i64 @commit_ref(%struct.ref_lock* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %189
  %194 = load %struct.ref_lock*, %struct.ref_lock** %21, align 8
  %195 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %196)
  %198 = load i32, i32* %24, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %24, align 4
  br label %200

200:                                              ; preds = %193, %189, %186
  br label %201

201:                                              ; preds = %200, %179
  br label %202

202:                                              ; preds = %201, %168
  br label %203

203:                                              ; preds = %202, %136
  br label %204

204:                                              ; preds = %203, %97
  %205 = load i8*, i8** %23, align 8
  %206 = call i32 @free(i8* %205)
  %207 = load %struct.ref_lock*, %struct.ref_lock** %21, align 8
  %208 = call i32 @unlock_ref(%struct.ref_lock* %207)
  %209 = load i32, i32* %24, align 4
  store i32 %209, i32* %9, align 4
  br label %216

210:                                              ; preds = %91, %76
  %211 = call i32 @rollback_lock_file(%struct.lock_file* %19)
  %212 = load i8*, i8** %23, align 8
  %213 = call i32 @free(i8* %212)
  %214 = load %struct.ref_lock*, %struct.ref_lock** %21, align 8
  %215 = call i32 @unlock_ref(%struct.ref_lock* %214)
  store i32 -1, i32* %9, align 4
  br label %216

216:                                              ; preds = %210, %204, %60, %49
  %217 = load i32, i32* %9, align 4
  ret i32 %217
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.expire_reflog_cb*, i32, i32) #1

declare dso_local %struct.ref_lock* @lock_ref_oid_basic(%struct.files_ref_store*, i8*, %struct.object_id*, i32*, i32*, i32, i32*, %struct.strbuf*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @refs_reflog_exists(%struct.ref_store*, i8*) #1

declare dso_local i32 @unlock_ref(%struct.ref_lock*) #1

declare dso_local i32 @files_reflog_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i64 @hold_lock_file_for_update(%struct.lock_file*, i8*, i32) #1

declare dso_local i32 @unable_to_lock_message(i8*, i32, %struct.strbuf*) #1

declare dso_local i32 @fdopen_lock_file(%struct.lock_file*, i8*) #1

declare dso_local i8* @get_lock_file_path(%struct.lock_file*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @refs_for_each_reflog_ent(%struct.ref_store*, i8*, i32, %struct.expire_reflog_cb*) #1

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i64 @close_lock_file_gently(%struct.lock_file*) #1

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #1

declare dso_local i64 @write_in_full(i32, i32, i32) #1

declare dso_local i32 @get_lock_file_fd(%struct.lock_file*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @write_str_in_full(i32, i8*) #1

declare dso_local i64 @close_ref_gently(%struct.ref_lock*) #1

declare dso_local i64 @commit_lock_file(%struct.lock_file*) #1

declare dso_local i64 @commit_ref(%struct.ref_lock*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
