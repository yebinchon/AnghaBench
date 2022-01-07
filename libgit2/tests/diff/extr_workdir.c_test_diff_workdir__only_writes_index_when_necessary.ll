; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__only_writes_index_when_necessary.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__only_writes_index_when_necessary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.stat = type { i64 }
%struct.p_timeval = type { i64, i64 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_UPDATE_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"status/.git/index\00", align 1
@touch_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__only_writes_index_when_necessary() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  %11 = alloca [2 x %struct.p_timeval], align 16
  %12 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %3, align 8
  %13 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %15 = load i32, i32* @GIT_DIFF_UPDATE_INDEX, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  %20 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* @g_repo, align 4
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_repository_index(i32** %1, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = call i32 @git_repository_head(i32** %4, i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %29 = call i32 @git_reference_peel(i32** %5, i32* %27, i32 %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32, i32* @g_repo, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @GIT_RESET_HARD, align 4
  %34 = call i32 @git_reset(i32 %31, i32* %32, i32 %33, i32* null)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_index_checksum(i32* %36)
  %38 = call i32 @git_oid_cpy(i32* %6, i32 %37)
  %39 = call i32 @p_stat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %10)
  %40 = call i32 @cl_must_pass(i32 %39)
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 5
  %44 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %11, i64 0, i64 0
  %45 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %11, i64 0, i64 0
  %47 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %46, i32 0, i32 0
  store i64 0, i64* %47, align 16
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 5
  %51 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %11, i64 0, i64 1
  %52 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %11, i64 0, i64 1
  %54 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %53, i32 0, i32 0
  store i64 0, i64* %54, align 16
  %55 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %11, i64 0, i64 0
  %56 = call i32 @p_utimes(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.p_timeval* %55)
  %57 = call i32 @cl_must_pass(i32 %56)
  %58 = load i32, i32* @g_repo, align 4
  %59 = call i32 @git_diff_index_to_workdir(i32** %3, i32 %58, i32* null, %struct.TYPE_4__* %2)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @git_diff_free(i32* %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @git_index_checksum(i32* %63)
  %65 = call i32 @git_oid_cpy(i32* %7, i32 %64)
  %66 = call i32 @git_oid_equal(i32* %6, i32* %7)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @cl_assert(i32 %69)
  %71 = call i32 @git_buf_sets(i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %72 = call i32 @cl_git_pass(i32 %71)
  %73 = load i32, i32* @touch_file, align 4
  %74 = call i32 @git_path_direach(i32* %9, i32 0, i32 %73, i32* null)
  %75 = call i32 @cl_git_pass(i32 %74)
  %76 = load i32, i32* @g_repo, align 4
  %77 = call i32 @git_diff_index_to_workdir(i32** %3, i32 %76, i32* null, %struct.TYPE_4__* %2)
  %78 = call i32 @cl_git_pass(i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @git_diff_free(i32* %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @git_index_checksum(i32* %81)
  %83 = call i32 @git_oid_cpy(i32* %8, i32 %82)
  %84 = call i32 @git_oid_equal(i32* %7, i32* %8)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @cl_assert(i32 %87)
  %89 = call i32 @git_buf_dispose(i32* %9)
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @git_object_free(i32* %90)
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @git_reference_free(i32* %92)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @git_index_free(i32* %94)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_repository_head(i32**, i32) #2

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32) #2

declare dso_local i32 @git_index_checksum(i32*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_stat(i8*, %struct.stat*) #2

declare dso_local i32 @p_utimes(i8*, %struct.p_timeval*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_oid_equal(i32*, i32*) #2

declare dso_local i32 @git_buf_sets(i32*, i8*) #2

declare dso_local i32 @git_path_direach(i32*, i32, i32, i32*) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
