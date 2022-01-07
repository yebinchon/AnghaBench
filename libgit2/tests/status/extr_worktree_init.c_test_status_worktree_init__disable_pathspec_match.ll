; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree_init.c_test_status_worktree_init__disable_pathspec_match.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree_init.c_test_status_worktree_init__disable_pathspec_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8** }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"LICENSE[1].md\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"LICENSE[1-2].md\00", align 1
@cleanup_new_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"pathspec\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"pathspec/LICENSE[1].md\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"screaming bracket\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"pathspec/LICENSE1.md\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"no bracket\0A\00", align 1
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH = common dso_local global i32 0, align 4
@cb_status__expected_path = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree_init__disable_pathspec_match() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %6 = call i32 @cl_set_cleanup(i32* @cleanup_new_repo, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %11 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %12 = load i32, i32* @GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i8** %3, i8*** %18, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @cb_status__expected_path, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @git_status_foreach_ext(i32* %19, %struct.TYPE_6__* %2, i32 %20, i8* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i8** %4, i8*** %25, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* @cb_status__expected_path, align 4
  %28 = call i32 @git_status_foreach_ext(i32* %26, %struct.TYPE_6__* %2, i32 %27, i8* null)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_repository_free(i32* %30)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_status_foreach_ext(i32*, %struct.TYPE_6__*, i32, i8*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
