; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_simple.c_test_merge_workdir_simple__index_reload.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_simple.c_test_merge_workdir_simple__index_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@repo = common dso_local global i32 0, align 4
@repo_index = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"11deab00b2d3a6f5a3073988ac050c2d7b6655e2\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"automergeable.txt\00", align 1
@THEIRS_SIMPLE_OID = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_workdir_simple__index_reload() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [1 x i32*], align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32*, align 8
  %6 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = load i32, i32* @repo, align 4
  %8 = call i32 @git_repository_workdir(i32 %7)
  %9 = call i32 @git_repository_open(i32** %1, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_repository_index(i32** %5, i32* %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @repo_index, align 4
  %15 = call i32 @git_index_read(i32 %14, i32 0)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %20 = call i32 @git_oid_fromstr(i32* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* @repo_index, align 4
  %24 = call i32 @git_index_add(i32 %23, %struct.TYPE_5__* %4)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @git_index_add_bypath(i32* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @git_index_write(i32* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i8*, i8** @THEIRS_SIMPLE_OID, align 8
  %33 = call i32 @git_oid_fromstr(i32* %3, i8* %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = getelementptr inbounds [1 x i32*], [1 x i32*]* %2, i64 0, i64 0
  %36 = load i32, i32* @repo, align 4
  %37 = call i32 @git_annotated_commit_lookup(i32** %35, i32 %36, i32* %3)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* @repo, align 4
  %40 = getelementptr inbounds [1 x i32*], [1 x i32*]* %2, i64 0, i64 0
  %41 = call i32 @git_merge(i32 %39, i32** %40, i32 1, i32* null, i32* null)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @git_index_free(i32* %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_repository_free(i32* %45)
  %47 = getelementptr inbounds [1 x i32*], [1 x i32*]* %2, i64 0, i64 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @git_annotated_commit_free(i32* %48)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_open(i32**, i32) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_index_read(i32, i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_index_add(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_annotated_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_merge(i32, i32**, i32, i32*, i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
