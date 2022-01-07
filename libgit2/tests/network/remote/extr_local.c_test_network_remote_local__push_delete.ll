; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__push_delete.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__push_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32, i8** }

@.str = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@__const.test_network_remote_local__push_delete.spec_push = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)], align 8
@.str.1 = private unnamed_addr constant [19 x i8] c":refs/heads/master\00", align 1
@__const.test_network_remote_local__push_delete.spec_delete = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)], align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"target.git\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"./target.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_local__push_delete() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1 x i8*], align 8
  %6 = alloca [1 x i8*], align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = bitcast [1 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([1 x i8*]* @__const.test_network_remote_local__push_delete.spec_push to i8*), i64 8, i1 false)
  %9 = bitcast [1 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast ([1 x i8*]* @__const.test_network_remote_local__push_delete.spec_delete to i8*), i64 8, i1 false)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %11 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0
  store i8** %11, i8*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i8** null, i8*** %13, align 8
  %14 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %14, i32** %1, align 8
  %15 = call i32 @git_repository_init(i32** %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_remote_create(i32** %3, i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_remote_push(i32* %20, %struct.TYPE_3__* %7, i32* null)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_reference_lookup(i32** %4, i32* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @git_reference_free(i32* %26)
  %28 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i8** %28, i8*** %29, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @git_remote_push(i32* %30, %struct.TYPE_3__* %7, i32* null)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @git_reference_lookup(i32** %4, i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @cl_git_fail(i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @git_remote_free(i32* %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @git_repository_free(i32* %38)
  %40 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 (...) @cl_git_sandbox_cleanup()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @git_remote_create(i32**, i32*, i8*, i8*) #2

declare dso_local i32 @git_remote_push(i32*, %struct.TYPE_3__*, i32*) #2

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @cl_fixture_cleanup(i8*) #2

declare dso_local i32 @cl_git_sandbox_cleanup(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
