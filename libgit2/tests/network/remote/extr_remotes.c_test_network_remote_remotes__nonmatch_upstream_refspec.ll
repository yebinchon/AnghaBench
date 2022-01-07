; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__nonmatch_upstream_refspec.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__nonmatch_upstream_refspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32 }

@.str = private unnamed_addr constant [24 x i8] c"refs/tags/*:refs/tags/*\00", align 1
@__const.test_network_remote_remotes__nonmatch_upstream_refspec.specstr = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)], align 8
@_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"taggy\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"branch.master.remote\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"branch.master.merge\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"refs/heads/foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_remotes__nonmatch_upstream_refspec() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [1 x i8*], align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = bitcast [1 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast ([1 x i8*]* @__const.test_network_remote_remotes__nonmatch_upstream_refspec.specstr to i8*), i64 8, i1 false)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %7 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0
  store i8** %7, i8*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* @_repo, align 4
  %10 = load i32, i32* @_repo, align 4
  %11 = call i32 @git_repository_path(i32 %10)
  %12 = call i32 @git_remote_create(i32** %2, i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @_repo, align 4
  %15 = call i32 @git_repository_config(i32** %1, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_config_set_string(i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_config_set_string(i32* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_remote_fetch(i32* %23, %struct.TYPE_3__* %4, i32* null, i32* null)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @git_remote_free(i32* %26)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_create(i32**, i32, i8*, i32) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @git_repository_config(i32**, i32) #2

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #2

declare dso_local i32 @git_remote_fetch(i32*, %struct.TYPE_3__*, i32*, i32*) #2

declare dso_local i32 @git_remote_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
