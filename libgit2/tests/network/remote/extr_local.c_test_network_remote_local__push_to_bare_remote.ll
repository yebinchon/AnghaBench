; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__push_to_bare_remote.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__push_to_bare_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32 }

@.str = private unnamed_addr constant [14 x i8] c"master:master\00", align 1
@__const.test_network_remote_local__push_to_bare_remote.refspec_strings = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)], align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@remote = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"./localbare.git\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_DIRECTION_PUSH = common dso_local global i32 0, align 4
@push_array = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"localbare.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_local__push_to_bare_remote() #0 {
  %1 = alloca [1 x i8*], align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = bitcast [1 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast ([1 x i8*]* @__const.test_network_remote_local__push_to_bare_remote.refspec_strings to i8*), i64 8, i1 false)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %7 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  store i8** %7, i8*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 1, i32* %8, align 8
  %9 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @connect_to_local_repository(i32 %9)
  %11 = load i32, i32* @remote, align 4
  %12 = call i32 @git_remote_fetch(i32 %11, %struct.TYPE_3__* %2, i32* null, i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_repository_init(i32** %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @git_repository_free(i32* %16)
  %18 = load i32, i32* @repo, align 4
  %19 = call i32 @git_remote_create_anonymous(i32** %3, i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @GIT_DIRECTION_PUSH, align 4
  %23 = call i32 @git_remote_connect(i32* %21, i32 %22, i32* null, i32* null, i32* null)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @git_remote_upload(i32* %25, i32* @push_array, i32* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @git_remote_free(i32* %28)
  %30 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @connect_to_local_repository(i32) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_fetch(i32, %struct.TYPE_3__*, i32*, i32*) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_remote_create_anonymous(i32**, i32, i8*) #2

declare dso_local i32 @git_remote_connect(i32*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_remote_upload(i32*, i32*, i32*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @cl_fixture_cleanup(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
