; ModuleID = '/home/carl/AnghaBench/libgit2/tests/cherrypick/extr_workdir.c_test_cherrypick_workdir__rename.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/cherrypick/extr_workdir.c_test_cherrypick_workdir__rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@GIT_CHERRYPICK_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"19c5c7207054604b69c84d08a7571ef9672bb5c2\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"file1.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"a58ca3fee5eb68b11adc2703e5843f968c9dad1e\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"file2.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"28d9eb4208074ad1cc84e71ccc908b34573f05d2\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"file3.txt.renamed\00", align 1
@GIT_MERGE_FIND_RENAMES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"cfc4f0999a8367568e049af4f72e452d40828a15\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"2a26c7e88b285613b302ba76712bc998863f3cbc\00", align 1
@repo_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_cherrypick_workdir__rename() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca [3 x %struct.merge_index_entry], align 16
  %7 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_CHERRYPICK_OPTIONS_INIT to i8*), i64 8, i1 false)
  %8 = getelementptr inbounds [3 x %struct.merge_index_entry], [3 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 0
  store i32 33188, i32* %9, align 16
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 2
  store i8* null, i8** %11, align 16
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.1 to i32), i32* %12, align 8
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i64 1
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i32 0, i32 0
  store i32 33188, i32* %14, align 16
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i32 0, i32 2
  store i8* null, i8** %16, align 16
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.3 to i32), i32* %17, align 8
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i64 1
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i32 0, i32 0
  store i32 33188, i32* %19, align 16
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i32 0, i32 2
  store i8* null, i8** %21, align 16
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str.5 to i32), i32* %22, align 8
  %23 = load i32, i32* @GIT_MERGE_FIND_RENAMES, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 50, i32* %29, align 4
  %30 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %31 = load i32, i32* @repo, align 4
  %32 = call i32 @git_commit_lookup(i32** %1, i32 %31, i32* %3)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @repo, align 4
  %35 = load i32*, i32** %1, align 8
  %36 = load i32, i32* @GIT_RESET_HARD, align 4
  %37 = call i32 @git_reset(i32 %34, i32* %35, i32 %36, i32* null)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %40 = load i32, i32* @repo, align 4
  %41 = call i32 @git_commit_lookup(i32** %2, i32 %40, i32* %4)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @repo, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @git_cherrypick(i32 %43, i32* %44, %struct.TYPE_6__* %5)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32, i32* @repo_index, align 4
  %48 = getelementptr inbounds [3 x %struct.merge_index_entry], [3 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %49 = call i32 @merge_test_index(i32 %47, %struct.merge_index_entry* %48, i32 3)
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @git_commit_free(i32* %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @git_commit_free(i32* %53)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @git_cherrypick(i32, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
