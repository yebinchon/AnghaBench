; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_pack.c_test_refs_pack__loose.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_pack.c_test_refs_pack__loose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@loose_tag_ref_name = common dso_local global i32 0, align 4
@GIT_PACKEDREFS_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_pack__loose() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %4 = load i32, i32* @g_repo, align 4
  %5 = load i32, i32* @loose_tag_ref_name, align 4
  %6 = call i32 @git_reference_lookup(%struct.TYPE_9__** %1, i32 %4, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %9 = call i32 @reference_is_packed(%struct.TYPE_9__* %8)
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @loose_tag_ref_name, align 4
  %17 = call i32 @cl_assert_equal_s(i32 %15, i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %19 = call i32 @git_reference_free(%struct.TYPE_9__* %18)
  %20 = call i32 (...) @packall()
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_repository_path(i32 %21)
  %23 = load i32, i32* @GIT_PACKEDREFS_FILE, align 4
  %24 = call i32 @git_buf_joinpath(%struct.TYPE_10__* %2, i32 %22, i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @git_path_exists(i32 %27)
  %29 = call i32 @cl_assert(i32 %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i32, i32* @loose_tag_ref_name, align 4
  %32 = call i32 @git_reference_lookup(%struct.TYPE_9__** %1, i32 %30, i32 %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %35 = call i32 @reference_is_packed(%struct.TYPE_9__* %34)
  %36 = call i32 @cl_assert(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @loose_tag_ref_name, align 4
  %41 = call i32 @cl_assert_equal_s(i32 %39, i32 %40)
  %42 = load i32, i32* @g_repo, align 4
  %43 = call i32 @git_repository_path(i32 %42)
  %44 = load i32, i32* @loose_tag_ref_name, align 4
  %45 = call i32 @git_buf_joinpath(%struct.TYPE_10__* %2, i32 %43, i32 %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @git_path_exists(i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @cl_assert(i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %55 = call i32 @git_reference_free(%struct.TYPE_9__* %54)
  %56 = call i32 @git_buf_dispose(%struct.TYPE_10__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(%struct.TYPE_9__**, i32, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @reference_is_packed(%struct.TYPE_9__*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_reference_free(%struct.TYPE_9__*) #2

declare dso_local i32 @packall(...) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
