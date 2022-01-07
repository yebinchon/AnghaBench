; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_check_updates.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_check_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout = type { i32, i32, i32, %struct.index_state* }
%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i32, i32 }
%struct.oid_array = type { i64, i32 }
%struct.unpack_trees_options = type { i64, i64, i32, %struct.index_state }
%struct.progress = type { i32 }

@CHECKOUT_INIT = common dso_local global %struct.checkout zeroinitializer, align 8
@GIT_ATTR_CHECKOUT = common dso_local global i32 0, align 4
@CE_WT_REMOVE = common dso_local global i32 0, align 4
@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 8
@CE_UPDATE = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@OBJECT_INFO_FOR_PREFETCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"both update and delete flags are set on %s\00", align 1
@GIT_ATTR_CHECKIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"check_updates\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unpack_trees_options*)* @check_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_updates(%struct.unpack_trees_options* %0) #0 {
  %2 = alloca %struct.unpack_trees_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.progress*, align 8
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca %struct.checkout, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_entry*, align 8
  %10 = alloca %struct.oid_array, align 8
  %11 = alloca %struct.cache_entry*, align 8
  %12 = alloca %struct.cache_entry*, align 8
  store %struct.unpack_trees_options* %0, %struct.unpack_trees_options** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %13 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %14 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %13, i32 0, i32 3
  store %struct.index_state* %14, %struct.index_state** %6, align 8
  %15 = bitcast %struct.checkout* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.checkout* @CHECKOUT_INIT to i8*), i64 24, i1 false)
  %16 = call i32 (...) @trace_performance_enter()
  %17 = getelementptr inbounds %struct.checkout, %struct.checkout* %7, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.checkout, %struct.checkout* %7, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.checkout, %struct.checkout* %7, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = load %struct.index_state*, %struct.index_state** %6, align 8
  %21 = getelementptr inbounds %struct.checkout, %struct.checkout* %7, i32 0, i32 3
  store %struct.index_state* %20, %struct.index_state** %21, align 8
  %22 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %23 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.index_state*, %struct.index_state** %6, align 8
  %28 = call i32 @setup_collided_checkout_detection(%struct.checkout* %7, %struct.index_state* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %31 = call %struct.progress* @get_progress(%struct.unpack_trees_options* %30)
  store %struct.progress* %31, %struct.progress** %5, align 8
  %32 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %33 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @GIT_ATTR_CHECKOUT, align 4
  %38 = call i32 @git_attr_set_direction(i32 %37)
  br label %39

39:                                               ; preds = %36, %29
  %40 = call i64 (...) @should_update_submodules()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %44 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %49 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.index_state*, %struct.index_state** %6, align 8
  %54 = call i32 @load_gitmodules_file(%struct.index_state* %53, %struct.checkout* null)
  br label %55

55:                                               ; preds = %52, %47, %42, %39
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %95, %55
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.index_state*, %struct.index_state** %6, align 8
  %59 = getelementptr inbounds %struct.index_state, %struct.index_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %56
  %63 = load %struct.index_state*, %struct.index_state** %6, align 8
  %64 = getelementptr inbounds %struct.index_state, %struct.index_state* %63, i32 0, i32 1
  %65 = load %struct.cache_entry**, %struct.cache_entry*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %65, i64 %67
  %69 = load %struct.cache_entry*, %struct.cache_entry** %68, align 8
  store %struct.cache_entry* %69, %struct.cache_entry** %9, align 8
  %70 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %71 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CE_WT_REMOVE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %62
  %77 = load %struct.progress*, %struct.progress** %5, align 8
  %78 = load i32, i32* %3, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %3, align 4
  %80 = call i32 @display_progress(%struct.progress* %77, i32 %79)
  %81 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %82 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %87 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %92 = call i32 @unlink_entry(%struct.cache_entry* %91)
  br label %93

93:                                               ; preds = %90, %85, %76
  br label %94

94:                                               ; preds = %93, %62
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %56

98:                                               ; preds = %56
  %99 = load %struct.index_state*, %struct.index_state** %6, align 8
  %100 = call i32 @remove_marked_cache_entries(%struct.index_state* %99, i32 0)
  %101 = call i32 (...) @remove_scheduled_dirs()
  %102 = call i64 (...) @should_update_submodules()
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %106 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %111 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load %struct.index_state*, %struct.index_state** %6, align 8
  %116 = call i32 @load_gitmodules_file(%struct.index_state* %115, %struct.checkout* %7)
  br label %117

117:                                              ; preds = %114, %109, %104, %98
  %118 = call i32 @enable_delayed_checkout(%struct.checkout* %7)
  %119 = call i64 (...) @has_promisor_remote()
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %188

121:                                              ; preds = %117
  %122 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %123 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %188

126:                                              ; preds = %121
  %127 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %128 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %188, label %131

131:                                              ; preds = %126
  %132 = bitcast %struct.oid_array* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %132, i8* align 8 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %8, align 4
  br label %133

133:                                              ; preds = %172, %131
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.index_state*, %struct.index_state** %6, align 8
  %136 = getelementptr inbounds %struct.index_state, %struct.index_state* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %175

139:                                              ; preds = %133
  %140 = load %struct.index_state*, %struct.index_state** %6, align 8
  %141 = getelementptr inbounds %struct.index_state, %struct.index_state* %140, i32 0, i32 1
  %142 = load %struct.cache_entry**, %struct.cache_entry*** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %142, i64 %144
  %146 = load %struct.cache_entry*, %struct.cache_entry** %145, align 8
  store %struct.cache_entry* %146, %struct.cache_entry** %11, align 8
  %147 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %148 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @CE_UPDATE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %139
  %154 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %155 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @S_ISGITLINK(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153, %139
  br label %172

160:                                              ; preds = %153
  %161 = load i32, i32* @the_repository, align 4
  %162 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %163 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %162, i32 0, i32 2
  %164 = load i32, i32* @OBJECT_INFO_FOR_PREFETCH, align 4
  %165 = call i32 @oid_object_info_extended(i32 %161, i32* %163, i32* null, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  br label %172

168:                                              ; preds = %160
  %169 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %170 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %169, i32 0, i32 2
  %171 = call i32 @oid_array_append(%struct.oid_array* %10, i32* %170)
  br label %172

172:                                              ; preds = %168, %167, %159
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %133

175:                                              ; preds = %133
  %176 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %10, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i32, i32* @the_repository, align 4
  %181 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %10, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %10, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @promisor_remote_get_direct(i32 %180, i32 %182, i64 %184)
  br label %186

186:                                              ; preds = %179, %175
  %187 = call i32 @oid_array_clear(%struct.oid_array* %10)
  br label %188

188:                                              ; preds = %186, %126, %121, %117
  store i32 0, i32* %8, align 4
  br label %189

189:                                              ; preds = %248, %188
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.index_state*, %struct.index_state** %6, align 8
  %192 = getelementptr inbounds %struct.index_state, %struct.index_state* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %251

195:                                              ; preds = %189
  %196 = load %struct.index_state*, %struct.index_state** %6, align 8
  %197 = getelementptr inbounds %struct.index_state, %struct.index_state* %196, i32 0, i32 1
  %198 = load %struct.cache_entry**, %struct.cache_entry*** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %198, i64 %200
  %202 = load %struct.cache_entry*, %struct.cache_entry** %201, align 8
  store %struct.cache_entry* %202, %struct.cache_entry** %12, align 8
  %203 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %204 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @CE_UPDATE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %247

209:                                              ; preds = %195
  %210 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %211 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @CE_WT_REMOVE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %209
  %217 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %218 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @BUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %216, %209
  %222 = load %struct.progress*, %struct.progress** %5, align 8
  %223 = load i32, i32* %3, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %3, align 4
  %225 = call i32 @display_progress(%struct.progress* %222, i32 %224)
  %226 = load i32, i32* @CE_UPDATE, align 4
  %227 = xor i32 %226, -1
  %228 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %229 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %233 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %221
  %237 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %238 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %236
  %242 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %243 = call i32 @checkout_entry(%struct.cache_entry* %242, %struct.checkout* %7, i32* null, i32* null)
  %244 = load i32, i32* %4, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %4, align 4
  br label %246

246:                                              ; preds = %241, %236, %221
  br label %247

247:                                              ; preds = %246, %195
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %8, align 4
  br label %189

251:                                              ; preds = %189
  %252 = call i32 @stop_progress(%struct.progress** %5)
  %253 = call i32 @finish_delayed_checkout(%struct.checkout* %7, i32* null)
  %254 = load i32, i32* %4, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %4, align 4
  %256 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %257 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %251
  %261 = load i32, i32* @GIT_ATTR_CHECKIN, align 4
  %262 = call i32 @git_attr_set_direction(i32 %261)
  br label %263

263:                                              ; preds = %260, %251
  %264 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %265 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load %struct.index_state*, %struct.index_state** %6, align 8
  %270 = call i32 @report_collided_checkout(%struct.index_state* %269)
  br label %271

271:                                              ; preds = %268, %263
  %272 = call i32 @trace_performance_leave(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %273 = load i32, i32* %4, align 4
  %274 = icmp ne i32 %273, 0
  %275 = zext i1 %274 to i32
  ret i32 %275
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace_performance_enter(...) #2

declare dso_local i32 @setup_collided_checkout_detection(%struct.checkout*, %struct.index_state*) #2

declare dso_local %struct.progress* @get_progress(%struct.unpack_trees_options*) #2

declare dso_local i32 @git_attr_set_direction(i32) #2

declare dso_local i64 @should_update_submodules(...) #2

declare dso_local i32 @load_gitmodules_file(%struct.index_state*, %struct.checkout*) #2

declare dso_local i32 @display_progress(%struct.progress*, i32) #2

declare dso_local i32 @unlink_entry(%struct.cache_entry*) #2

declare dso_local i32 @remove_marked_cache_entries(%struct.index_state*, i32) #2

declare dso_local i32 @remove_scheduled_dirs(...) #2

declare dso_local i32 @enable_delayed_checkout(%struct.checkout*) #2

declare dso_local i64 @has_promisor_remote(...) #2

declare dso_local i64 @S_ISGITLINK(i32) #2

declare dso_local i32 @oid_object_info_extended(i32, i32*, i32*, i32) #2

declare dso_local i32 @oid_array_append(%struct.oid_array*, i32*) #2

declare dso_local i32 @promisor_remote_get_direct(i32, i32, i64) #2

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #2

declare dso_local i32 @BUG(i8*, i32) #2

declare dso_local i32 @checkout_entry(%struct.cache_entry*, %struct.checkout*, i32*, i32*) #2

declare dso_local i32 @stop_progress(%struct.progress**) #2

declare dso_local i32 @finish_delayed_checkout(%struct.checkout*, i32*) #2

declare dso_local i32 @report_collided_checkout(%struct.index_state*) #2

declare dso_local i32 @trace_performance_leave(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
