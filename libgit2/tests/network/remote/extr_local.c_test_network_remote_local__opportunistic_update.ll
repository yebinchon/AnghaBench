; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__opportunistic_update.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__opportunistic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32 }

@.str = private unnamed_addr constant [7 x i8] c"master\00", align 1
@__const.test_network_remote_local__opportunistic_update.refspec_strings = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)], align 8
@remote = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"refs/remotes/origin/master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_local__opportunistic_update() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [1 x i8*], align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = bitcast [1 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast ([1 x i8*]* @__const.test_network_remote_local__opportunistic_update.refspec_strings to i8*), i64 8, i1 false)
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %2, i64 0, i64 0
  store i8** %6, i8*** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 1, i32* %7, align 8
  %8 = load i32, i32* @repo, align 4
  %9 = call i32 @cl_git_fixture_url(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @git_remote_create(i32* @remote, i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @remote, align 4
  %13 = call i32 @git_remote_fetch(i32 %12, %struct.TYPE_3__* %3, i32* null, i32* null)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @repo, align 4
  %16 = call i32 @git_reference_lookup(i32** %1, i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_reference_free(i32* %18)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_create(i32*, i32, i8*, i32) #2

declare dso_local i32 @cl_git_fixture_url(i8*) #2

declare dso_local i32 @git_remote_fetch(i32, %struct.TYPE_3__*, i32*, i32*) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
