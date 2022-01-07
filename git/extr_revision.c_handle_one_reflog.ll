; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_handle_one_reflog.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_handle_one_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }
%struct.all_refs_cb = type { i32, i32, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@handle_one_reflog_ent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @handle_one_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_one_reflog(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.all_refs_cb*, align 8
  %10 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.all_refs_cb*
  store %struct.all_refs_cb* %12, %struct.all_refs_cb** %9, align 8
  %13 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = load %struct.all_refs_cb*, %struct.all_refs_cb** %9, align 8
  %15 = getelementptr inbounds %struct.all_refs_cb, %struct.all_refs_cb* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.all_refs_cb*, %struct.all_refs_cb** %9, align 8
  %17 = getelementptr inbounds %struct.all_refs_cb, %struct.all_refs_cb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strbuf_worktree_ref(i32 %18, %struct.strbuf* %10, i8* %19)
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.all_refs_cb*, %struct.all_refs_cb** %9, align 8
  %24 = getelementptr inbounds %struct.all_refs_cb, %struct.all_refs_cb* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @the_repository, align 4
  %26 = call i32 @get_main_ref_store(i32 %25)
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @handle_one_reflog_ent, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @refs_for_each_reflog_ent(i32 %26, i32 %28, i32 %29, i8* %30)
  %32 = call i32 @strbuf_release(%struct.strbuf* %10)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_worktree_ref(i32, %struct.strbuf*, i8*) #2

declare dso_local i32 @refs_for_each_reflog_ent(i32, i32, i32, i8*) #2

declare dso_local i32 @get_main_ref_store(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
