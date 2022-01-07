; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__tagopt.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__tagopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_FETCH_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@remote = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tagopt\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@GIT_REMOTE_DOWNLOAD_TAGS_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"refs/remotes/tagopt/master\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"refs/tags/hard_tag\00", align 1
@GIT_REMOTE_DOWNLOAD_TAGS_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_local__tagopt() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_FETCH_OPTIONS_INIT to i8*), i64 4, i1 false)
  %4 = load i32, i32* @repo, align 4
  %5 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_path_url(i32 %5)
  %7 = call i32 @git_remote_create(i32* @remote, i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @GIT_REMOTE_DOWNLOAD_TAGS_ALL, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @remote, align 4
  %12 = call i32 @git_remote_fetch(i32 %11, i32* null, %struct.TYPE_4__* %2, i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @repo, align 4
  %15 = call i32 @git_reference_lookup(i32** %1, i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_reference_free(i32* %17)
  %19 = load i32, i32* @repo, align 4
  %20 = call i32 @git_reference_lookup(i32** %1, i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_reference_free(i32* %22)
  %24 = load i32, i32* @GIT_REMOTE_DOWNLOAD_TAGS_AUTO, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @remote, align 4
  %27 = call i32 @git_remote_fetch(i32 %26, i32* null, %struct.TYPE_4__* %2, i32* null)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @repo, align 4
  %30 = call i32 @git_reference_lookup(i32** %1, i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_reference_free(i32* %32)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_create(i32*, i32, i8*, i32) #2

declare dso_local i32 @cl_git_path_url(i32) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @git_remote_fetch(i32, i32*, %struct.TYPE_4__*, i32*) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
