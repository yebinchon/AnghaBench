; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_update_shallow.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_update_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i64 }
%struct.fetch_pack_args = type { i64, i64, i64 }
%struct.ref = type { i32, %struct.object_id }
%struct.object_id = type { i32 }
%struct.shallow_info = type { i32, i32, i64*, i64*, %struct.TYPE_2__*, %struct.oid_array* }
%struct.TYPE_2__ = type { i32, %struct.object_id* }

@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 8
@alternate_shallow_file = common dso_local global i8* null, align 8
@the_repository = common dso_local global i32 0, align 4
@shallow_lock = common dso_local global i32 0, align 4
@REF_STATUS_REJECT_SHALLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fetch_pack_args*, %struct.ref**, i32, %struct.shallow_info*)* @update_shallow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_shallow(%struct.fetch_pack_args* %0, %struct.ref** %1, i32 %2, %struct.shallow_info* %3) #0 {
  %5 = alloca %struct.fetch_pack_args*, align 8
  %6 = alloca %struct.ref**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.shallow_info*, align 8
  %9 = alloca %struct.oid_array, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.oid_array, align 8
  %13 = alloca %struct.object_id*, align 8
  %14 = alloca %struct.oid_array, align 8
  %15 = alloca %struct.object_id*, align 8
  store %struct.fetch_pack_args* %0, %struct.fetch_pack_args** %5, align 8
  store %struct.ref** %1, %struct.ref*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.shallow_info* %3, %struct.shallow_info** %8, align 8
  %16 = bitcast %struct.oid_array* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 8, i1 false)
  %17 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %5, align 8
  %18 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %4
  %22 = load i8*, i8** @alternate_shallow_file, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i8*, i8** @alternate_shallow_file, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @the_repository, align 4
  %31 = call i32 @git_path_shallow(i32 %30)
  %32 = call i32 @unlink_or_warn(i32 %31)
  %33 = call i32 @rollback_lock_file(i32* @shallow_lock)
  br label %36

34:                                               ; preds = %24
  %35 = call i32 @commit_lock_file(i32* @shallow_lock)
  br label %36

36:                                               ; preds = %34, %29
  store i8* null, i8** @alternate_shallow_file, align 8
  br label %254

37:                                               ; preds = %21, %4
  %38 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %39 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %44 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42, %37
  br label %254

50:                                               ; preds = %42
  %51 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %5, align 8
  %52 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %50
  %56 = bitcast %struct.oid_array* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 8, i1 false)
  %57 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %58 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load %struct.object_id*, %struct.object_id** %60, align 8
  store %struct.object_id* %61, %struct.object_id** %13, align 8
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %84, %55
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %65 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %63, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %62
  %71 = load %struct.object_id*, %struct.object_id** %13, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.object_id, %struct.object_id* %71, i64 %73
  %75 = call i64 @has_object_file(%struct.object_id* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.object_id*, %struct.object_id** %13, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.object_id, %struct.object_id* %78, i64 %80
  %82 = call i32 @oid_array_append(%struct.oid_array* %12, %struct.object_id* %81)
  br label %83

83:                                               ; preds = %77, %70
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %62

87:                                               ; preds = %62
  %88 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %12, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = call i32 @setup_alternate_shallow(i32* @shallow_lock, i8** @alternate_shallow_file, %struct.oid_array* %12)
  %93 = call i32 @commit_lock_file(i32* @shallow_lock)
  store i8* null, i8** @alternate_shallow_file, align 8
  br label %94

94:                                               ; preds = %91, %87
  %95 = call i32 @oid_array_clear(%struct.oid_array* %12)
  br label %254

96:                                               ; preds = %50
  %97 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %98 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %103 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %254

107:                                              ; preds = %101, %96
  %108 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %109 = call i32 @remove_nonexistent_theirs_shallow(%struct.shallow_info* %108)
  %110 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %111 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %107
  %115 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %116 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  br label %254

120:                                              ; preds = %114, %107
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %133, %120
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %121
  %126 = load %struct.ref**, %struct.ref*** %6, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.ref*, %struct.ref** %126, i64 %128
  %130 = load %struct.ref*, %struct.ref** %129, align 8
  %131 = getelementptr inbounds %struct.ref, %struct.ref* %130, i32 0, i32 1
  %132 = call i32 @oid_array_append(%struct.oid_array* %9, %struct.object_id* %131)
  br label %133

133:                                              ; preds = %125
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %121

136:                                              ; preds = %121
  %137 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %138 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %137, i32 0, i32 5
  store %struct.oid_array* %9, %struct.oid_array** %138, align 8
  %139 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %5, align 8
  %140 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %210

143:                                              ; preds = %136
  %144 = bitcast %struct.oid_array* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 8, i1 false)
  %145 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %146 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %145, i32 0, i32 4
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load %struct.object_id*, %struct.object_id** %148, align 8
  store %struct.object_id* %149, %struct.object_id** %15, align 8
  %150 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %151 = call i32 @assign_shallow_commits_to_refs(%struct.shallow_info* %150, i32* null, i32* null)
  %152 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %153 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %143
  %157 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %158 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %156
  %162 = call i32 @oid_array_clear(%struct.oid_array* %9)
  br label %254

163:                                              ; preds = %156, %143
  store i32 0, i32* %11, align 4
  br label %164

164:                                              ; preds = %181, %163
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %167 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %164
  %171 = load %struct.object_id*, %struct.object_id** %15, align 8
  %172 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %173 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %172, i32 0, i32 2
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.object_id, %struct.object_id* %171, i64 %178
  %180 = call i32 @oid_array_append(%struct.oid_array* %14, %struct.object_id* %179)
  br label %181

181:                                              ; preds = %170
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  br label %164

184:                                              ; preds = %164
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %202, %184
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %188 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %185
  %192 = load %struct.object_id*, %struct.object_id** %15, align 8
  %193 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %194 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %193, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.object_id, %struct.object_id* %192, i64 %199
  %201 = call i32 @oid_array_append(%struct.oid_array* %14, %struct.object_id* %200)
  br label %202

202:                                              ; preds = %191
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %185

205:                                              ; preds = %185
  %206 = call i32 @setup_alternate_shallow(i32* @shallow_lock, i8** @alternate_shallow_file, %struct.oid_array* %14)
  %207 = call i32 @commit_lock_file(i32* @shallow_lock)
  %208 = call i32 @oid_array_clear(%struct.oid_array* %14)
  %209 = call i32 @oid_array_clear(%struct.oid_array* %9)
  store i8* null, i8** @alternate_shallow_file, align 8
  br label %254

210:                                              ; preds = %136
  %211 = load i32, i32* %7, align 4
  %212 = call i32* @xcalloc(i32 %211, i32 4)
  store i32* %212, i32** %10, align 8
  %213 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %214 = load i32*, i32** %10, align 8
  %215 = call i32 @assign_shallow_commits_to_refs(%struct.shallow_info* %213, i32* null, i32* %214)
  %216 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %217 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %210
  %221 = load %struct.shallow_info*, %struct.shallow_info** %8, align 8
  %222 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %250

225:                                              ; preds = %220, %210
  store i32 0, i32* %11, align 4
  br label %226

226:                                              ; preds = %246, %225
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* %7, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %249

230:                                              ; preds = %226
  %231 = load i32*, i32** %10, align 8
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %230
  %238 = load i32, i32* @REF_STATUS_REJECT_SHALLOW, align 4
  %239 = load %struct.ref**, %struct.ref*** %6, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.ref*, %struct.ref** %239, i64 %241
  %243 = load %struct.ref*, %struct.ref** %242, align 8
  %244 = getelementptr inbounds %struct.ref, %struct.ref* %243, i32 0, i32 0
  store i32 %238, i32* %244, align 4
  br label %245

245:                                              ; preds = %237, %230
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %11, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %11, align 4
  br label %226

249:                                              ; preds = %226
  br label %250

250:                                              ; preds = %249, %220
  %251 = load i32*, i32** %10, align 8
  %252 = call i32 @free(i32* %251)
  %253 = call i32 @oid_array_clear(%struct.oid_array* %9)
  br label %254

254:                                              ; preds = %250, %205, %161, %119, %106, %94, %49, %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @unlink_or_warn(i32) #2

declare dso_local i32 @git_path_shallow(i32) #2

declare dso_local i32 @rollback_lock_file(i32*) #2

declare dso_local i32 @commit_lock_file(i32*) #2

declare dso_local i64 @has_object_file(%struct.object_id*) #2

declare dso_local i32 @oid_array_append(%struct.oid_array*, %struct.object_id*) #2

declare dso_local i32 @setup_alternate_shallow(i32*, i8**, %struct.oid_array*) #2

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #2

declare dso_local i32 @remove_nonexistent_theirs_shallow(%struct.shallow_info*) #2

declare dso_local i32 @assign_shallow_commits_to_refs(%struct.shallow_info*, i32*, i32*) #2

declare dso_local i32* @xcalloc(i32, i32) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
