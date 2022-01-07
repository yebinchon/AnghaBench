; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_delete.c_test_refs_delete__packed_loose.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_delete.c_test_refs_delete__packed_loose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@packed_test_head_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_delete__packed_loose() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_repository_path(i32 %5)
  %7 = load i32, i32* @packed_test_head_name, align 4
  %8 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %3, i32 %6, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @git_path_exists(i32 %11)
  %13 = call i32 @cl_assert(i32 %12)
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i32, i32* @packed_test_head_name, align 4
  %16 = call i32 @git_reference_lookup(i32** %1, i32 %14, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i64 @reference_is_packed(i32* %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_reference_delete(i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_reference_free(i32* %26)
  %28 = load i32, i32* @g_repo, align 4
  %29 = load i32, i32* @packed_test_head_name, align 4
  %30 = call i32 @git_reference_lookup(i32** %2, i32 %28, i32 %29)
  %31 = call i32 @cl_git_fail(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @git_path_exists(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @git_reference_free(i32* %39)
  %41 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i32) #2

declare dso_local i64 @reference_is_packed(i32*) #2

declare dso_local i32 @git_reference_delete(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
