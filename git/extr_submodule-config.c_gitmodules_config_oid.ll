; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_gitmodules_config_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_gitmodules_config_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@the_repository = common dso_local global %struct.TYPE_6__* null, align 8
@gitmodules_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gitmodules_config_oid(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca %struct.object_id, align 4
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_repository, align 8
  %7 = call i32 @submodule_cache_check_init(%struct.TYPE_6__* %6)
  %8 = load %struct.object_id*, %struct.object_id** %2, align 8
  %9 = call i64 @gitmodule_oid_from_commit(%struct.object_id* %8, %struct.object_id* %4, %struct.strbuf* %3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @gitmodules_cb, align 4
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_repository, align 8
  %16 = call i32 @git_config_from_blob_oid(i32 %12, i32 %14, %struct.object_id* %4, %struct.TYPE_6__* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = call i32 @strbuf_release(%struct.strbuf* %3)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_repository, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @submodule_cache_check_init(%struct.TYPE_6__*) #2

declare dso_local i64 @gitmodule_oid_from_commit(%struct.object_id*, %struct.object_id*, %struct.strbuf*) #2

declare dso_local i32 @git_config_from_blob_oid(i32, i32, %struct.object_id*, %struct.TYPE_6__*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
