; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__relative_gitdir_2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__relative_gitdir_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@GIT_REPOSITORY_INIT_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"root/b/c_wd\00", align 1
@GIT_REPOSITORY_INIT_MKPATH = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_RELATIVE_GITLINK = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_NO_DOTGIT_DIR = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"root/b/my_repository\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"root/b/c_wd/\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"root/b/my_repository/\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"core.worktree\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"../c_wd/\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"root/b/c_wd/.git\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"gitdir: ../my_repository/\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"root\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_init__relative_gitdir_2() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca %struct.TYPE_11__, align 4
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_REPOSITORY_INIT_OPTIONS_INIT to i8*), i64 8, i1 false)
  %5 = bitcast %struct.TYPE_11__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %6 = bitcast %struct.TYPE_11__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = call i32 @git_path_prettify(%struct.TYPE_11__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @git_buf_joinpath(%struct.TYPE_11__* %3, i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @GIT_REPOSITORY_INIT_MKPATH, align 4
  %17 = load i32, i32* @GIT_REPOSITORY_INIT_RELATIVE_GITLINK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @GIT_REPOSITORY_INIT_NO_DOTGIT_DIR, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = call i32 @git_repository_init_ext(i32* @_repo, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %1)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = call i32 @git_buf_dispose(%struct.TYPE_11__* %3)
  %25 = load i32, i32* @_repo, align 4
  %26 = call i32 @git_repository_workdir(i32 %25)
  %27 = call i32 @git__suffixcmp(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = load i32, i32* @_repo, align 4
  %33 = call i32 @git_repository_path(i32 %32)
  %34 = call i32 @git__suffixcmp(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = load i32, i32* @_repo, align 4
  %40 = call i32 @git_repository_is_bare(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  %45 = load i32, i32* @_repo, align 4
  %46 = call i32 @git_repository_is_empty(i32 %45)
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32, i32* @_repo, align 4
  %49 = call i32 @assert_config_entry_value(i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %50 = call i32 @git_futils_readbuffer(%struct.TYPE_11__* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %53)
  %55 = call i32 @git_buf_dispose(%struct.TYPE_11__* %2)
  %56 = call i32 @cleanup_repository(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_path_prettify(%struct.TYPE_11__*, i8*, i32*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_11__*, i32, i8*) #2

declare dso_local i32 @git_repository_init_ext(i32*, i8*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git__suffixcmp(i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @git_repository_is_bare(i32) #2

declare dso_local i32 @git_repository_is_empty(i32) #2

declare dso_local i32 @assert_config_entry_value(i32, i8*, i8*) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @cleanup_repository(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
