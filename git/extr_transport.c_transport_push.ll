; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_transport_push.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_transport_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }
%struct.oid_array = type { i32 }
%struct.string_list = type { i32 }
%struct.repository = type { i32 }
%struct.transport = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.transport*, %struct.ref*, i32)*, %struct.ref* (%struct.transport*, i32, %struct.argv_array*)* }
%struct.ref = type { i32, %struct.ref*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.refspec = type { i32 }

@MATCH_REFS_NONE = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_PORCELAIN = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_DRY_RUN = common dso_local global i32 0, align 4
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"transport_push\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"get_refs_list\00", align 1
@TRANSPORT_PUSH_ALL = common dso_local global i32 0, align 4
@MATCH_REFS_ALL = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_MIRROR = common dso_local global i32 0, align 4
@MATCH_REFS_MIRROR = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_PRUNE = common dso_local global i32 0, align 4
@MATCH_REFS_PRUNE = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_FOLLOW_TAGS = common dso_local global i32 0, align 4
@MATCH_REFS_FOLLOW_TAGS = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_FORCE = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_NO_HOOK = common dso_local global i32 0, align 4
@TRANSPORT_RECURSE_SUBMODULES_ON_DEMAND = common dso_local global i32 0, align 4
@TRANSPORT_RECURSE_SUBMODULES_ONLY = common dso_local global i32 0, align 4
@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"push_submodules\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to push all needed submodules\00", align 1
@TRANSPORT_RECURSE_SUBMODULES_CHECK = common dso_local global i32 0, align 4
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"check_submodules\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"push_refs\00", align 1
@TRANSPORT_PUSH_ATOMIC = common dso_local global i32 0, align 4
@REF_STATUS_ATOMIC_PUSH_FAILED = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_SET_UPSTREAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"Done\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Everything up-to-date\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_push(%struct.repository* %0, %struct.transport* %1, %struct.refspec* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.transport*, align 8
  %9 = alloca %struct.refspec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ref*, align 8
  %13 = alloca %struct.ref*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.argv_array, align 4
  %23 = alloca %struct.ref*, align 8
  %24 = alloca %struct.oid_array, align 4
  %25 = alloca %struct.ref*, align 8
  %26 = alloca %struct.string_list, align 4
  %27 = alloca %struct.oid_array, align 4
  %28 = alloca %struct.ref*, align 8
  %29 = alloca %struct.ref*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.transport* %1, %struct.transport** %8, align 8
  store %struct.refspec* %2, %struct.refspec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  store i32 0, i32* %30, align 4
  %31 = call i64 (...) @transport_color_config()
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %417

34:                                               ; preds = %5
  %35 = load %struct.transport*, %struct.transport** %8, align 8
  %36 = getelementptr inbounds %struct.transport, %struct.transport* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32 (%struct.transport*, %struct.ref*, i32)*, i32 (%struct.transport*, %struct.ref*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.transport*, %struct.ref*, i32)* %39, null
  br i1 %40, label %41, label %416

41:                                               ; preds = %34
  %42 = call %struct.ref* (...) @get_local_heads()
  store %struct.ref* %42, %struct.ref** %13, align 8
  %43 = load i32, i32* @MATCH_REFS_NONE, align 4
  store i32 %43, i32* %14, align 4
  %44 = load %struct.transport*, %struct.transport** %8, align 8
  %45 = getelementptr inbounds %struct.transport, %struct.transport* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %15, align 4
  %49 = load %struct.transport*, %struct.transport** %8, align 8
  %50 = getelementptr inbounds %struct.transport, %struct.transport* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @TRANSPORT_PUSH_PORCELAIN, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @TRANSPORT_PUSH_DRY_RUN, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %18, align 4
  %60 = bitcast %struct.argv_array* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %61 = load %struct.ref*, %struct.ref** %13, align 8
  %62 = load %struct.refspec*, %struct.refspec** %9, align 8
  %63 = call i64 @check_push_refs(%struct.ref* %61, %struct.refspec* %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %41
  store i32 -1, i32* %6, align 4
  br label %417

66:                                               ; preds = %41
  %67 = load %struct.refspec*, %struct.refspec** %9, align 8
  %68 = call i32 @refspec_ref_prefixes(%struct.refspec* %67, %struct.argv_array* %22)
  %69 = load %struct.repository*, %struct.repository** %7, align 8
  %70 = call i32 @trace2_region_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.repository* %69)
  %71 = load %struct.transport*, %struct.transport** %8, align 8
  %72 = getelementptr inbounds %struct.transport, %struct.transport* %71, i32 0, i32 2
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.ref* (%struct.transport*, i32, %struct.argv_array*)*, %struct.ref* (%struct.transport*, i32, %struct.argv_array*)** %74, align 8
  %76 = load %struct.transport*, %struct.transport** %8, align 8
  %77 = call %struct.ref* %75(%struct.transport* %76, i32 1, %struct.argv_array* %22)
  store %struct.ref* %77, %struct.ref** %12, align 8
  %78 = load %struct.repository*, %struct.repository** %7, align 8
  %79 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.repository* %78)
  %80 = call i32 @argv_array_clear(%struct.argv_array* %22)
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @TRANSPORT_PUSH_ALL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %66
  %86 = load i32, i32* @MATCH_REFS_ALL, align 4
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %85, %66
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @TRANSPORT_PUSH_MIRROR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @MATCH_REFS_MIRROR, align 4
  %96 = load i32, i32* %14, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @TRANSPORT_PUSH_PRUNE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @MATCH_REFS_PRUNE, align 4
  %105 = load i32, i32* %14, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %103, %98
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @TRANSPORT_PUSH_FOLLOW_TAGS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* @MATCH_REFS_FOLLOW_TAGS, align 4
  %114 = load i32, i32* %14, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %112, %107
  %117 = load %struct.ref*, %struct.ref** %13, align 8
  %118 = load %struct.refspec*, %struct.refspec** %9, align 8
  %119 = load i32, i32* %14, align 4
  %120 = call i64 @match_push_refs(%struct.ref* %117, %struct.ref** %12, %struct.refspec* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 -1, i32* %6, align 4
  br label %417

123:                                              ; preds = %116
  %124 = load %struct.transport*, %struct.transport** %8, align 8
  %125 = getelementptr inbounds %struct.transport, %struct.transport* %124, i32 0, i32 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = icmp ne %struct.TYPE_6__* %126, null
  br i1 %127, label %128, label %154

128:                                              ; preds = %123
  %129 = load %struct.transport*, %struct.transport** %8, align 8
  %130 = getelementptr inbounds %struct.transport, %struct.transport* %129, i32 0, i32 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %128
  %136 = load %struct.transport*, %struct.transport** %8, align 8
  %137 = getelementptr inbounds %struct.transport, %struct.transport* %136, i32 0, i32 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @is_empty_cas(i64 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %135
  %144 = load %struct.transport*, %struct.transport** %8, align 8
  %145 = getelementptr inbounds %struct.transport, %struct.transport* %144, i32 0, i32 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.transport*, %struct.transport** %8, align 8
  %150 = getelementptr inbounds %struct.transport, %struct.transport* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = load %struct.ref*, %struct.ref** %12, align 8
  %153 = call i32 @apply_push_cas(i64 %148, %struct.TYPE_8__* %151, %struct.ref* %152)
  br label %154

154:                                              ; preds = %143, %135, %128, %123
  %155 = load %struct.ref*, %struct.ref** %12, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @TRANSPORT_PUSH_MIRROR, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @TRANSPORT_PUSH_FORCE, align 4
  %161 = and i32 %159, %160
  %162 = call i32 @set_ref_status_for_push(%struct.ref* %155, i32 %158, i32 %161)
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @TRANSPORT_PUSH_NO_HOOK, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %154
  %168 = load %struct.transport*, %struct.transport** %8, align 8
  %169 = load %struct.ref*, %struct.ref** %12, align 8
  %170 = call i64 @run_pre_push_hook(%struct.transport* %168, %struct.ref* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store i32 -1, i32* %6, align 4
  br label %417

173:                                              ; preds = %167
  br label %174

174:                                              ; preds = %173, %154
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @TRANSPORT_RECURSE_SUBMODULES_ON_DEMAND, align 4
  %177 = load i32, i32* @TRANSPORT_RECURSE_SUBMODULES_ONLY, align 4
  %178 = or i32 %176, %177
  %179 = and i32 %175, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %228

181:                                              ; preds = %174
  %182 = call i32 (...) @is_bare_repository()
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %228, label %184

184:                                              ; preds = %181
  %185 = load %struct.ref*, %struct.ref** %12, align 8
  store %struct.ref* %185, %struct.ref** %23, align 8
  %186 = bitcast %struct.oid_array* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %186, i8* align 4 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 4, i1 false)
  %187 = load %struct.repository*, %struct.repository** %7, align 8
  %188 = call i32 @trace2_region_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.repository* %187)
  br label %189

189:                                              ; preds = %202, %184
  %190 = load %struct.ref*, %struct.ref** %23, align 8
  %191 = icmp ne %struct.ref* %190, null
  br i1 %191, label %192, label %206

192:                                              ; preds = %189
  %193 = load %struct.ref*, %struct.ref** %23, align 8
  %194 = getelementptr inbounds %struct.ref, %struct.ref* %193, i32 0, i32 2
  %195 = call i32 @is_null_oid(i32* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = load %struct.ref*, %struct.ref** %23, align 8
  %199 = getelementptr inbounds %struct.ref, %struct.ref* %198, i32 0, i32 2
  %200 = call i32 @oid_array_append(%struct.oid_array* %24, i32* %199)
  br label %201

201:                                              ; preds = %197, %192
  br label %202

202:                                              ; preds = %201
  %203 = load %struct.ref*, %struct.ref** %23, align 8
  %204 = getelementptr inbounds %struct.ref, %struct.ref* %203, i32 0, i32 1
  %205 = load %struct.ref*, %struct.ref** %204, align 8
  store %struct.ref* %205, %struct.ref** %23, align 8
  br label %189

206:                                              ; preds = %189
  %207 = load %struct.repository*, %struct.repository** %7, align 8
  %208 = load %struct.transport*, %struct.transport** %8, align 8
  %209 = getelementptr inbounds %struct.transport, %struct.transport* %208, i32 0, i32 0
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = load %struct.refspec*, %struct.refspec** %9, align 8
  %212 = load %struct.transport*, %struct.transport** %8, align 8
  %213 = getelementptr inbounds %struct.transport, %struct.transport* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %18, align 4
  %216 = call i32 @push_unpushed_submodules(%struct.repository* %207, %struct.oid_array* %24, %struct.TYPE_8__* %210, %struct.refspec* %211, i32 %214, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %206
  %219 = call i32 @oid_array_clear(%struct.oid_array* %24)
  %220 = load %struct.repository*, %struct.repository** %7, align 8
  %221 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.repository* %220)
  %222 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %223 = call i32 @die(i32 %222)
  br label %224

224:                                              ; preds = %218, %206
  %225 = call i32 @oid_array_clear(%struct.oid_array* %24)
  %226 = load %struct.repository*, %struct.repository** %7, align 8
  %227 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.repository* %226)
  br label %228

228:                                              ; preds = %224, %181, %174
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* @TRANSPORT_RECURSE_SUBMODULES_CHECK, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %228
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* @TRANSPORT_RECURSE_SUBMODULES_ON_DEMAND, align 4
  %236 = load i32, i32* @TRANSPORT_RECURSE_SUBMODULES_ONLY, align 4
  %237 = or i32 %235, %236
  %238 = and i32 %234, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %288

240:                                              ; preds = %233
  %241 = load i32, i32* %18, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %288, label %243

243:                                              ; preds = %240, %228
  %244 = call i32 (...) @is_bare_repository()
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %288, label %246

246:                                              ; preds = %243
  %247 = load %struct.ref*, %struct.ref** %12, align 8
  store %struct.ref* %247, %struct.ref** %25, align 8
  %248 = bitcast %struct.string_list* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %248, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %249 = bitcast %struct.oid_array* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %249, i8* align 4 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 4, i1 false)
  %250 = load %struct.repository*, %struct.repository** %7, align 8
  %251 = call i32 @trace2_region_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.repository* %250)
  br label %252

252:                                              ; preds = %265, %246
  %253 = load %struct.ref*, %struct.ref** %25, align 8
  %254 = icmp ne %struct.ref* %253, null
  br i1 %254, label %255, label %269

255:                                              ; preds = %252
  %256 = load %struct.ref*, %struct.ref** %25, align 8
  %257 = getelementptr inbounds %struct.ref, %struct.ref* %256, i32 0, i32 2
  %258 = call i32 @is_null_oid(i32* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %255
  %261 = load %struct.ref*, %struct.ref** %25, align 8
  %262 = getelementptr inbounds %struct.ref, %struct.ref* %261, i32 0, i32 2
  %263 = call i32 @oid_array_append(%struct.oid_array* %27, i32* %262)
  br label %264

264:                                              ; preds = %260, %255
  br label %265

265:                                              ; preds = %264
  %266 = load %struct.ref*, %struct.ref** %25, align 8
  %267 = getelementptr inbounds %struct.ref, %struct.ref* %266, i32 0, i32 1
  %268 = load %struct.ref*, %struct.ref** %267, align 8
  store %struct.ref* %268, %struct.ref** %25, align 8
  br label %252

269:                                              ; preds = %252
  %270 = load %struct.repository*, %struct.repository** %7, align 8
  %271 = load %struct.transport*, %struct.transport** %8, align 8
  %272 = getelementptr inbounds %struct.transport, %struct.transport* %271, i32 0, i32 0
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i64 @find_unpushed_submodules(%struct.repository* %270, %struct.oid_array* %27, i32 %275, %struct.string_list* %26)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %269
  %279 = call i32 @oid_array_clear(%struct.oid_array* %27)
  %280 = load %struct.repository*, %struct.repository** %7, align 8
  %281 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.repository* %280)
  %282 = call i32 @die_with_unpushed_submodules(%struct.string_list* %26)
  br label %283

283:                                              ; preds = %278, %269
  %284 = call i32 @string_list_clear(%struct.string_list* %26, i32 0)
  %285 = call i32 @oid_array_clear(%struct.oid_array* %27)
  %286 = load %struct.repository*, %struct.repository** %7, align 8
  %287 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.repository* %286)
  br label %288

288:                                              ; preds = %283, %243, %240, %233
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* @TRANSPORT_RECURSE_SUBMODULES_ONLY, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %307, label %293

293:                                              ; preds = %288
  %294 = load %struct.repository*, %struct.repository** %7, align 8
  %295 = call i32 @trace2_region_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.repository* %294)
  %296 = load %struct.transport*, %struct.transport** %8, align 8
  %297 = getelementptr inbounds %struct.transport, %struct.transport* %296, i32 0, i32 2
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 0
  %300 = load i32 (%struct.transport*, %struct.ref*, i32)*, i32 (%struct.transport*, %struct.ref*, i32)** %299, align 8
  %301 = load %struct.transport*, %struct.transport** %8, align 8
  %302 = load %struct.ref*, %struct.ref** %12, align 8
  %303 = load i32, i32* %10, align 4
  %304 = call i32 %300(%struct.transport* %301, %struct.ref* %302, i32 %303)
  store i32 %304, i32* %19, align 4
  %305 = load %struct.repository*, %struct.repository** %7, align 8
  %306 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.repository* %305)
  br label %308

307:                                              ; preds = %288
  store i32 0, i32* %19, align 4
  br label %308

308:                                              ; preds = %307, %293
  %309 = load %struct.ref*, %struct.ref** %12, align 8
  %310 = call i32 @push_had_errors(%struct.ref* %309)
  store i32 %310, i32* %21, align 4
  %311 = load i32, i32* %19, align 4
  %312 = load i32, i32* %21, align 4
  %313 = or i32 %311, %312
  store i32 %313, i32* %20, align 4
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* @TRANSPORT_PUSH_ATOMIC, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %341

318:                                              ; preds = %308
  %319 = load i32, i32* %21, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %341

321:                                              ; preds = %318
  %322 = load %struct.ref*, %struct.ref** %12, align 8
  store %struct.ref* %322, %struct.ref** %28, align 8
  br label %323

323:                                              ; preds = %336, %321
  %324 = load %struct.ref*, %struct.ref** %28, align 8
  %325 = icmp ne %struct.ref* %324, null
  br i1 %325, label %326, label %340

326:                                              ; preds = %323
  %327 = load %struct.ref*, %struct.ref** %28, align 8
  %328 = getelementptr inbounds %struct.ref, %struct.ref* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  switch i32 %329, label %334 [
    i32 130, label %330
    i32 128, label %330
    i32 129, label %330
  ]

330:                                              ; preds = %326, %326, %326
  %331 = load i32, i32* @REF_STATUS_ATOMIC_PUSH_FAILED, align 4
  %332 = load %struct.ref*, %struct.ref** %28, align 8
  %333 = getelementptr inbounds %struct.ref, %struct.ref* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 8
  br label %335

334:                                              ; preds = %326
  br label %335

335:                                              ; preds = %334, %330
  br label %336

336:                                              ; preds = %335
  %337 = load %struct.ref*, %struct.ref** %28, align 8
  %338 = getelementptr inbounds %struct.ref, %struct.ref* %337, i32 0, i32 1
  %339 = load %struct.ref*, %struct.ref** %338, align 8
  store %struct.ref* %339, %struct.ref** %28, align 8
  br label %323

340:                                              ; preds = %323
  br label %341

341:                                              ; preds = %340, %318, %308
  %342 = load i32, i32* %16, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %341
  %345 = load i32, i32* %21, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %358

347:                                              ; preds = %344, %341
  %348 = load %struct.transport*, %struct.transport** %8, align 8
  %349 = getelementptr inbounds %struct.transport, %struct.transport* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.ref*, %struct.ref** %12, align 8
  %352 = load i32, i32* %15, align 4
  %353 = load i32, i32* %17, align 4
  %354 = or i32 %352, %353
  %355 = load i32, i32* %17, align 4
  %356 = load i32*, i32** %11, align 8
  %357 = call i32 @transport_print_push_status(i32 %350, %struct.ref* %351, i32 %354, i32 %355, i32* %356)
  br label %358

358:                                              ; preds = %347, %344
  %359 = load i32, i32* %10, align 4
  %360 = load i32, i32* @TRANSPORT_PUSH_SET_UPSTREAM, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %358
  %364 = load %struct.transport*, %struct.transport** %8, align 8
  %365 = load %struct.ref*, %struct.ref** %12, align 8
  %366 = load i32, i32* %18, align 4
  %367 = call i32 @set_upstreams(%struct.transport* %364, %struct.ref* %365, i32 %366)
  br label %368

368:                                              ; preds = %363, %358
  %369 = load i32, i32* %10, align 4
  %370 = load i32, i32* @TRANSPORT_PUSH_DRY_RUN, align 4
  %371 = load i32, i32* @TRANSPORT_RECURSE_SUBMODULES_ONLY, align 4
  %372 = or i32 %370, %371
  %373 = and i32 %369, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %392, label %375

375:                                              ; preds = %368
  %376 = load %struct.ref*, %struct.ref** %12, align 8
  store %struct.ref* %376, %struct.ref** %29, align 8
  br label %377

377:                                              ; preds = %387, %375
  %378 = load %struct.ref*, %struct.ref** %29, align 8
  %379 = icmp ne %struct.ref* %378, null
  br i1 %379, label %380, label %391

380:                                              ; preds = %377
  %381 = load %struct.transport*, %struct.transport** %8, align 8
  %382 = getelementptr inbounds %struct.transport, %struct.transport* %381, i32 0, i32 0
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %382, align 8
  %384 = load %struct.ref*, %struct.ref** %29, align 8
  %385 = load i32, i32* %15, align 4
  %386 = call i32 @transport_update_tracking_ref(%struct.TYPE_8__* %383, %struct.ref* %384, i32 %385)
  br label %387

387:                                              ; preds = %380
  %388 = load %struct.ref*, %struct.ref** %29, align 8
  %389 = getelementptr inbounds %struct.ref, %struct.ref* %388, i32 0, i32 1
  %390 = load %struct.ref*, %struct.ref** %389, align 8
  store %struct.ref* %390, %struct.ref** %29, align 8
  br label %377

391:                                              ; preds = %377
  br label %392

392:                                              ; preds = %391, %368
  %393 = load i32, i32* %17, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %392
  %396 = load i32, i32* %19, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %400, label %398

398:                                              ; preds = %395
  %399 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %414

400:                                              ; preds = %395, %392
  %401 = load i32, i32* %16, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %413, label %403

403:                                              ; preds = %400
  %404 = load i32, i32* %20, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %413, label %406

406:                                              ; preds = %403
  %407 = load %struct.ref*, %struct.ref** %12, align 8
  %408 = call i32 @transport_refs_pushed(%struct.ref* %407)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %413, label %410

410:                                              ; preds = %406
  %411 = load i32, i32* @stderr, align 4
  %412 = call i32 @fprintf(i32 %411, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %413

413:                                              ; preds = %410, %406, %403, %400
  br label %414

414:                                              ; preds = %413, %398
  %415 = load i32, i32* %20, align 4
  store i32 %415, i32* %6, align 4
  br label %417

416:                                              ; preds = %34
  store i32 1, i32* %6, align 4
  br label %417

417:                                              ; preds = %416, %414, %172, %122, %65, %33
  %418 = load i32, i32* %6, align 4
  ret i32 %418
}

declare dso_local i64 @transport_color_config(...) #1

declare dso_local %struct.ref* @get_local_heads(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @check_push_refs(%struct.ref*, %struct.refspec*) #1

declare dso_local i32 @refspec_ref_prefixes(%struct.refspec*, %struct.argv_array*) #1

declare dso_local i32 @trace2_region_enter(i8*, i8*, %struct.repository*) #1

declare dso_local i32 @trace2_region_leave(i8*, i8*, %struct.repository*) #1

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #1

declare dso_local i64 @match_push_refs(%struct.ref*, %struct.ref**, %struct.refspec*, i32) #1

declare dso_local i32 @is_empty_cas(i64) #1

declare dso_local i32 @apply_push_cas(i64, %struct.TYPE_8__*, %struct.ref*) #1

declare dso_local i32 @set_ref_status_for_push(%struct.ref*, i32, i32) #1

declare dso_local i64 @run_pre_push_hook(%struct.transport*, %struct.ref*) #1

declare dso_local i32 @is_bare_repository(...) #1

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, i32*) #1

declare dso_local i32 @push_unpushed_submodules(%struct.repository*, %struct.oid_array*, %struct.TYPE_8__*, %struct.refspec*, i32, i32) #1

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @find_unpushed_submodules(%struct.repository*, %struct.oid_array*, i32, %struct.string_list*) #1

declare dso_local i32 @die_with_unpushed_submodules(%struct.string_list*) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @push_had_errors(%struct.ref*) #1

declare dso_local i32 @transport_print_push_status(i32, %struct.ref*, i32, i32, i32*) #1

declare dso_local i32 @set_upstreams(%struct.transport*, %struct.ref*, i32) #1

declare dso_local i32 @transport_update_tracking_ref(%struct.TYPE_8__*, %struct.ref*, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @transport_refs_pushed(%struct.ref*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
