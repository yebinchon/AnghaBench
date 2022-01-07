; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_get_next_submodule.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_get_next_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.child_process = type { i32, i32, i32, i32 }
%struct.submodule_parallel_fetch = type { i64, i32, i32, %struct.TYPE_9__, i32, %struct.fetch_task**, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.fetch_task = type { i32, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"on-demand\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Fetching submodule %s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"--submodule-prefix\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s%s/\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Could not access submodule '%s'\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@append_oid_to_argv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.child_process*, %struct.strbuf*, i8*, i8**)* @get_next_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_submodule(%struct.child_process* %0, %struct.strbuf* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.child_process*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.submodule_parallel_fetch*, align 8
  %11 = alloca %struct.cache_entry*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.fetch_task*, align 8
  %14 = alloca %struct.strbuf, align 8
  %15 = alloca %struct.fetch_task*, align 8
  %16 = alloca %struct.strbuf, align 8
  store %struct.child_process* %0, %struct.child_process** %6, align 8
  store %struct.strbuf* %1, %struct.strbuf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.submodule_parallel_fetch*
  store %struct.submodule_parallel_fetch* %18, %struct.submodule_parallel_fetch** %10, align 8
  br label %19

19:                                               ; preds = %199, %4
  %20 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %21 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %24 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %23, i32 0, i32 7
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %22, %29
  br i1 %30, label %31, label %204

31:                                               ; preds = %19
  %32 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %33 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %32, i32 0, i32 7
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.cache_entry**, %struct.cache_entry*** %37, align 8
  %39 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %40 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %38, i64 %41
  %43 = load %struct.cache_entry*, %struct.cache_entry** %42, align 8
  store %struct.cache_entry* %43, %struct.cache_entry** %11, align 8
  %44 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @S_ISGITLINK(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %31
  br label %199

50:                                               ; preds = %31
  %51 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %52 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %51, i32 0, i32 7
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %55 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.fetch_task* @fetch_task_create(%struct.TYPE_11__* %53, i32 %56)
  store %struct.fetch_task* %57, %struct.fetch_task** %13, align 8
  %58 = load %struct.fetch_task*, %struct.fetch_task** %13, align 8
  %59 = icmp ne %struct.fetch_task* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %199

61:                                               ; preds = %50
  %62 = load %struct.fetch_task*, %struct.fetch_task** %13, align 8
  %63 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %62, i32 0, i32 2
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %66 = call i32 @get_fetch_recurse_config(%struct.TYPE_12__* %64, %struct.submodule_parallel_fetch* %65)
  switch i32 %66, label %67 [
    i32 131, label %68
    i32 128, label %68
    i32 129, label %85
    i32 130, label %86
  ]

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %61, %61, %67
  %69 = load %struct.fetch_task*, %struct.fetch_task** %13, align 8
  %70 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %69, i32 0, i32 2
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = icmp ne %struct.TYPE_12__* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %75 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %74, i32 0, i32 8
  %76 = load %struct.fetch_task*, %struct.fetch_task** %13, align 8
  %77 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %76, i32 0, i32 2
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @string_list_lookup(i32* %75, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %73, %68
  br label %199

84:                                               ; preds = %73
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %87

85:                                               ; preds = %61
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %87

86:                                               ; preds = %61
  br label %199

87:                                               ; preds = %85, %84
  %88 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %89 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %88, i32 0, i32 7
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = load %struct.fetch_task*, %struct.fetch_task** %13, align 8
  %92 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %91, i32 0, i32 2
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = call %struct.TYPE_10__* @get_submodule_repo_for(%struct.TYPE_11__* %90, %struct.TYPE_12__* %93)
  %95 = load %struct.fetch_task*, %struct.fetch_task** %13, align 8
  %96 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %95, i32 0, i32 1
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %96, align 8
  %97 = load %struct.fetch_task*, %struct.fetch_task** %13, align 8
  %98 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = icmp ne %struct.TYPE_10__* %99, null
  br i1 %100, label %101, label %170

101:                                              ; preds = %87
  %102 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %103 = load %struct.child_process*, %struct.child_process** %6, align 8
  %104 = call i32 @child_process_init(%struct.child_process* %103)
  %105 = load %struct.fetch_task*, %struct.fetch_task** %13, align 8
  %106 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.child_process*, %struct.child_process** %6, align 8
  %111 = getelementptr inbounds %struct.child_process, %struct.child_process* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.child_process*, %struct.child_process** %6, align 8
  %113 = getelementptr inbounds %struct.child_process, %struct.child_process* %112, i32 0, i32 3
  %114 = call i32 @prepare_submodule_repo_env_in_gitdir(i32* %113)
  %115 = load %struct.child_process*, %struct.child_process** %6, align 8
  %116 = getelementptr inbounds %struct.child_process, %struct.child_process* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  %117 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %118 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %101
  %122 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %123 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %124 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %127 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %121, %101
  %131 = load %struct.child_process*, %struct.child_process** %6, align 8
  %132 = getelementptr inbounds %struct.child_process, %struct.child_process* %131, i32 0, i32 1
  %133 = call i32 @argv_array_init(i32* %132)
  %134 = load %struct.child_process*, %struct.child_process** %6, align 8
  %135 = getelementptr inbounds %struct.child_process, %struct.child_process* %134, i32 0, i32 1
  %136 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %137 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @argv_array_pushv(i32* %135, i32 %139)
  %141 = load %struct.child_process*, %struct.child_process** %6, align 8
  %142 = getelementptr inbounds %struct.child_process, %struct.child_process* %141, i32 0, i32 1
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @argv_array_push(i32* %142, i8* %143)
  %145 = load %struct.child_process*, %struct.child_process** %6, align 8
  %146 = getelementptr inbounds %struct.child_process, %struct.child_process* %145, i32 0, i32 1
  %147 = call i32 @argv_array_push(i32* %146, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %148 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %149 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.fetch_task*, %struct.fetch_task** %13, align 8
  %152 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %151, i32 0, i32 2
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %150, i32 %155)
  %157 = load %struct.child_process*, %struct.child_process** %6, align 8
  %158 = getelementptr inbounds %struct.child_process, %struct.child_process* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @argv_array_push(i32* %158, i8* %160)
  %162 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %163 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %163, align 8
  %166 = load %struct.fetch_task*, %struct.fetch_task** %13, align 8
  %167 = bitcast %struct.fetch_task* %166 to i8*
  %168 = load i8**, i8*** %9, align 8
  store i8* %167, i8** %168, align 8
  %169 = call i32 @strbuf_release(%struct.strbuf* %14)
  store i32 1, i32* %5, align 4
  br label %284

170:                                              ; preds = %87
  %171 = load %struct.fetch_task*, %struct.fetch_task** %13, align 8
  %172 = call i32 @fetch_task_release(%struct.fetch_task* %171)
  %173 = load %struct.fetch_task*, %struct.fetch_task** %13, align 8
  %174 = call i32 @free(%struct.fetch_task* %173)
  %175 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %176 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @S_ISGITLINK(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %170
  %181 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %182 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @is_empty_dir(i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %197, label %186

186:                                              ; preds = %180
  %187 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %188 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %187, i32 0, i32 1
  store i32 1, i32* %188, align 8
  %189 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %190 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %194 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %189, i8* %192, i32 %195)
  br label %197

197:                                              ; preds = %186, %180, %170
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198, %86, %83, %60, %49
  %200 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %201 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %201, align 8
  br label %19

204:                                              ; preds = %19
  %205 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %206 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %283

209:                                              ; preds = %204
  %210 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %211 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %210, i32 0, i32 5
  %212 = load %struct.fetch_task**, %struct.fetch_task*** %211, align 8
  %213 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %214 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.fetch_task*, %struct.fetch_task** %212, i64 %217
  %219 = load %struct.fetch_task*, %struct.fetch_task** %218, align 8
  store %struct.fetch_task* %219, %struct.fetch_task** %15, align 8
  %220 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %220, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %221 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %222 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %222, align 4
  %225 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %226 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.fetch_task*, %struct.fetch_task** %15, align 8
  %229 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %228, i32 0, i32 2
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %227, i32 %232)
  %234 = load %struct.child_process*, %struct.child_process** %6, align 8
  %235 = call i32 @child_process_init(%struct.child_process* %234)
  %236 = load %struct.child_process*, %struct.child_process** %6, align 8
  %237 = getelementptr inbounds %struct.child_process, %struct.child_process* %236, i32 0, i32 3
  %238 = call i32 @prepare_submodule_repo_env_in_gitdir(i32* %237)
  %239 = load %struct.child_process*, %struct.child_process** %6, align 8
  %240 = getelementptr inbounds %struct.child_process, %struct.child_process* %239, i32 0, i32 0
  store i32 1, i32* %240, align 4
  %241 = load %struct.fetch_task*, %struct.fetch_task** %15, align 8
  %242 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %241, i32 0, i32 1
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.child_process*, %struct.child_process** %6, align 8
  %247 = getelementptr inbounds %struct.child_process, %struct.child_process* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 4
  %248 = load %struct.child_process*, %struct.child_process** %6, align 8
  %249 = getelementptr inbounds %struct.child_process, %struct.child_process* %248, i32 0, i32 1
  %250 = call i32 @argv_array_init(i32* %249)
  %251 = load %struct.child_process*, %struct.child_process** %6, align 8
  %252 = getelementptr inbounds %struct.child_process, %struct.child_process* %251, i32 0, i32 1
  %253 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %254 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @argv_array_pushv(i32* %252, i32 %256)
  %258 = load %struct.child_process*, %struct.child_process** %6, align 8
  %259 = getelementptr inbounds %struct.child_process, %struct.child_process* %258, i32 0, i32 1
  %260 = call i32 @argv_array_push(i32* %259, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %261 = load %struct.child_process*, %struct.child_process** %6, align 8
  %262 = getelementptr inbounds %struct.child_process, %struct.child_process* %261, i32 0, i32 1
  %263 = call i32 @argv_array_push(i32* %262, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %264 = load %struct.child_process*, %struct.child_process** %6, align 8
  %265 = getelementptr inbounds %struct.child_process, %struct.child_process* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @argv_array_push(i32* %265, i8* %267)
  %269 = load %struct.child_process*, %struct.child_process** %6, align 8
  %270 = getelementptr inbounds %struct.child_process, %struct.child_process* %269, i32 0, i32 1
  %271 = call i32 @argv_array_push(i32* %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %272 = load %struct.fetch_task*, %struct.fetch_task** %15, align 8
  %273 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @append_oid_to_argv, align 4
  %276 = load %struct.child_process*, %struct.child_process** %6, align 8
  %277 = getelementptr inbounds %struct.child_process, %struct.child_process* %276, i32 0, i32 1
  %278 = call i32 @oid_array_for_each_unique(i32 %274, i32 %275, i32* %277)
  %279 = load %struct.fetch_task*, %struct.fetch_task** %15, align 8
  %280 = bitcast %struct.fetch_task* %279 to i8*
  %281 = load i8**, i8*** %9, align 8
  store i8* %280, i8** %281, align 8
  %282 = call i32 @strbuf_release(%struct.strbuf* %16)
  store i32 1, i32* %5, align 4
  br label %284

283:                                              ; preds = %204
  store i32 0, i32* %5, align 4
  br label %284

284:                                              ; preds = %283, %209, %130
  %285 = load i32, i32* %5, align 4
  ret i32 %285
}

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local %struct.fetch_task* @fetch_task_create(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @get_fetch_recurse_config(%struct.TYPE_12__*, %struct.submodule_parallel_fetch*) #1

declare dso_local i32 @string_list_lookup(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @get_submodule_repo_for(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @child_process_init(%struct.child_process*) #1

declare dso_local i32 @prepare_submodule_repo_env_in_gitdir(i32*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #1

declare dso_local i32 @argv_array_init(i32*) #1

declare dso_local i32 @argv_array_pushv(i32*, i32) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @fetch_task_release(%struct.fetch_task*) #1

declare dso_local i32 @free(%struct.fetch_task*) #1

declare dso_local i32 @is_empty_dir(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_array_for_each_unique(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
