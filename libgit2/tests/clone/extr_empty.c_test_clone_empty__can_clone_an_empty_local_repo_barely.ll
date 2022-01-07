; ModuleID = '/home/carl/AnghaBench/libgit2/tests/clone/extr_empty.c_test_clone_empty__can_clone_an_empty_local_repo_barely.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/clone/extr_empty.c_test_clone_empty__can_clone_an_empty_local_repo_barely.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"refs/remotes/origin/master\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@cleanup_repository = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"./empty\00", align 1
@g_options = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@g_repo_cloned = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"./empty_bare.git\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_clone_empty__can_clone_an_empty_local_repo_barely() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i32*, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %6 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = call i32 @cl_set_cleanup(i32* @cleanup_repository, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 0), align 4
  %8 = call i32 @git_clone(i32* @g_repo_cloned, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* @g_options)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @GIT_ENOTFOUND, align 4
  %11 = load i32, i32* @g_repo_cloned, align 4
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @git_reference_lookup(i32** %5, i32 %11, i8* %12)
  %14 = call i32 @cl_assert_equal_i(i32 %10, i32 %13)
  %15 = load i32, i32* @g_repo_cloned, align 4
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @git_branch_upstream_name(%struct.TYPE_8__* %4, i32 %15, i8* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cl_assert_equal_s(i8* %19, i32 %21)
  %23 = call i32 @git_buf_dispose(%struct.TYPE_8__* %4)
  %24 = load i32, i32* @g_repo_cloned, align 4
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @git_branch_remote_name(%struct.TYPE_8__* %4, i32 %24, i8* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cl_assert_equal_s(i8* %28, i32 %30)
  %32 = call i32 @git_buf_dispose(%struct.TYPE_8__* %4)
  %33 = load i32, i32* @GIT_ENOTFOUND, align 4
  %34 = load i32, i32* @g_repo_cloned, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @git_reference_lookup(i32** %5, i32 %34, i8* %35)
  %37 = call i32 @cl_assert_equal_i(i32 %33, i32 %36)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_clone(i32*, i8*, i8*, %struct.TYPE_9__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_branch_upstream_name(%struct.TYPE_8__*, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

declare dso_local i32 @git_branch_remote_name(%struct.TYPE_8__*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
