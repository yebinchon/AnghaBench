; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__relative_gitdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__relative_gitdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i32 }

@GIT_REPOSITORY_INIT_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"../c_wd\00", align 1
@GIT_REPOSITORY_INIT_MKPATH = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_RELATIVE_GITLINK = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_NO_DOTGIT_DIR = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"root/b/my_repository\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"root/b/c_wd/\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"root/b/my_repository/\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"core.worktree\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"../c_wd/\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"root/b/c_wd/.git\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"gitdir: ../my_repository/\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"root\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_init__relative_gitdir() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_REPOSITORY_INIT_OPTIONS_INIT to i8*), i64 16, i1 false)
  %4 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i32, i32* @GIT_REPOSITORY_INIT_MKPATH, align 4
  %7 = load i32, i32* @GIT_REPOSITORY_INIT_RELATIVE_GITLINK, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @GIT_REPOSITORY_INIT_NO_DOTGIT_DIR, align 4
  %10 = or i32 %8, %9
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = call i32 @git_repository_init_ext(i32* @_repo, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %1)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @_repo, align 4
  %15 = call i32 @git_repository_workdir(i32 %14)
  %16 = call i32 @git__suffixcmp(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32, i32* @_repo, align 4
  %22 = call i32 @git_repository_path(i32 %21)
  %23 = call i32 @git__suffixcmp(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @cl_assert(i32 %26)
  %28 = load i32, i32* @_repo, align 4
  %29 = call i32 @git_repository_is_bare(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32, i32* @_repo, align 4
  %35 = call i32 @git_repository_is_empty(i32 %34)
  %36 = call i32 @cl_assert(i32 %35)
  %37 = load i32, i32* @_repo, align 4
  %38 = call i32 @assert_config_entry_value(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %39 = call i32 @git_futils_readbuffer(%struct.TYPE_9__* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %42)
  %44 = call i32 @git_buf_dispose(%struct.TYPE_9__* %2)
  %45 = call i32 @cleanup_repository(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init_ext(i32*, i8*, %struct.TYPE_8__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git__suffixcmp(i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @git_repository_is_bare(i32) #2

declare dso_local i32 @git_repository_is_empty(i32) #2

declare dso_local i32 @assert_config_entry_value(i32, i8*, i8*) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

declare dso_local i32 @cleanup_repository(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
