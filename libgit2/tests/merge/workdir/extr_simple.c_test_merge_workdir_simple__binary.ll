; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_simple.c_test_merge_workdir_simple__binary.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_simple.c_test_merge_workdir_simple__binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i32, i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"1c51d885170f57a0c4e8c69ff6363d91a5b51f85\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"23ed141a6ae1e798b2f721afedbe947c119111ba\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"836b8b82b26cab22eaaed8820877c76d6c8bca19\00", align 1
@__const.test_merge_workdir_simple__binary.merge_index_entries = private unnamed_addr constant [3 x %struct.merge_index_entry] [%struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0) }], align 16
@.str.4 = private unnamed_addr constant [41 x i8] c"cc338e4710c9b257106b8d16d82f86458d5beaf1\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"ad01aebfdf2ac13145efafe3f9fcf798882f1730\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@repo_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_workdir_simple__binary() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [3 x %struct.merge_index_entry], align 16
  %8 = bitcast [3 x %struct.merge_index_entry]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([3 x %struct.merge_index_entry]* @__const.test_merge_workdir_simple__binary.merge_index_entries to i8*), i64 96, i1 false)
  %9 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @repo, align 4
  %14 = call i32 @git_commit_lookup(i32** %4, i32 %13, i32* %1)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @repo, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @GIT_RESET_HARD, align 4
  %19 = call i32 @git_reset(i32 %16, i32* %17, i32 %18, i32* null)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @repo, align 4
  %22 = call i32 @git_annotated_commit_lookup(i32** %5, i32 %21, i32* %2)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @repo, align 4
  %25 = call i32 @git_merge(i32 %24, i32** %5, i32 1, i32* null, i32* null)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* @repo_index, align 4
  %28 = getelementptr inbounds [3 x %struct.merge_index_entry], [3 x %struct.merge_index_entry]* %7, i64 0, i64 0
  %29 = call i32 @merge_test_index(i32 %27, %struct.merge_index_entry* %28, i32 3)
  %30 = call i32 @cl_assert(i32 %29)
  %31 = load i32, i32* @repo_index, align 4
  %32 = call i32 @git_index_add_bypath(i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @repo_index, align 4
  %35 = call %struct.TYPE_3__* @git_index_get_bypath(i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %6, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i64 @git_oid_cmp(i32* %42, i32* %3)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @cl_assert(i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @git_annotated_commit_free(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @git_commit_free(i32* %49)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @git_annotated_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_merge(i32, i32**, i32, i32*, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @git_index_add_bypath(i32, i8*) #2

declare dso_local %struct.TYPE_3__* @git_index_get_bypath(i32, i8*, i32) #2

declare dso_local i64 @git_oid_cmp(i32*, i32*) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
