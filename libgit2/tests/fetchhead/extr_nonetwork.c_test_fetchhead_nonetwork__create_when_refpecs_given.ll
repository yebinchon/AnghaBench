; ModuleID = '/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_test_fetchhead_nonetwork__create_when_refpecs_given.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_test_fetchhead_nonetwork__create_when_refpecs_given.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8**, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"refs/heads/haacked\00", align 1
@cleanup_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"./test1\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"FETCH_HEAD\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@find_master_haacked = common dso_local global i32 0, align 4
@find_master_haacked_called = common dso_local global i32 0, align 4
@found_master = common dso_local global i32 0, align 4
@found_haacked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fetchhead_nonetwork__create_when_refpecs_given() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = bitcast %struct.TYPE_8__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %8 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 1
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8** %13, i8*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 2, i32* %14, align 8
  %15 = call i32 @cl_set_cleanup(i32* @cleanup_repository, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @git_repository_init(i32* @g_repo, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @git_repository_path(i32 %18)
  %20 = call i32 @git_buf_joinpath(%struct.TYPE_8__* %2, i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %24 = call i32 @git_remote_create(i32** %1, i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @git_path_exists(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_remote_fetch(i32* %33, %struct.TYPE_7__* %6, i32* null, i32* null)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @git_path_exists(i32 %37)
  %39 = call i32 @cl_assert(i32 %38)
  %40 = load i32, i32* @g_repo, align 4
  %41 = load i32, i32* @find_master_haacked, align 4
  %42 = call i32 @git_repository_fetchhead_foreach(i32 %40, i32 %41, i32* null)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32, i32* @find_master_haacked_called, align 4
  %45 = call i32 @cl_assert(i32 %44)
  %46 = load i32, i32* @found_master, align 4
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32, i32* @found_haacked, align 4
  %49 = call i32 @cl_assert(i32 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @git_remote_free(i32* %50)
  %52 = call i32 @git_buf_dispose(%struct.TYPE_8__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init(i32*, i8*, i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_8__*, i32, i8*) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @git_remote_create(i32**, i32, i8*, i32) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @git_remote_fetch(i32*, %struct.TYPE_7__*, i32*, i32*) #2

declare dso_local i32 @git_repository_fetchhead_foreach(i32, i32, i32*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
