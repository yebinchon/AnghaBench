; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__rename.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.merge_index_entry = type { i32, i8*, i32, i8* }
%struct.merge_name_entry = type { i8*, i8*, i8* }

@GIT_REVERT_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"55acf326a69f0aab7a974ec53ffa55a50bcac14e\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"file4.txt\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"file5.txt\00", align 1
@__const.test_revert_workdir__rename.merge_index_entries = private unnamed_addr constant [2 x %struct.merge_index_entry] [%struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0) }], align 16
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.test_revert_workdir__rename.merge_name_entries = private unnamed_addr constant [1 x %struct.merge_name_entry] [%struct.merge_name_entry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0) }], align 16
@GIT_MERGE_FIND_RENAMES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"55568c8de5322ff9a95d72747a239cdb64a19965\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"0aa8c7e40d342fff78d60b29a4ba8e993ed79c51\00", align 1
@repo_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revert_workdir__rename() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca [2 x %struct.merge_index_entry], align 16
  %7 = alloca [1 x %struct.merge_name_entry], align 16
  %8 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_REVERT_OPTIONS_INIT to i8*), i64 8, i1 false)
  %9 = bitcast [2 x %struct.merge_index_entry]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([2 x %struct.merge_index_entry]* @__const.test_revert_workdir__rename.merge_index_entries to i8*), i64 64, i1 false)
  %10 = bitcast [1 x %struct.merge_name_entry]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([1 x %struct.merge_name_entry]* @__const.test_revert_workdir__rename.merge_name_entries to i8*), i64 24, i1 false)
  %11 = load i32, i32* @GIT_MERGE_FIND_RENAMES, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 50, i32* %17, align 4
  %18 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i32, i32* @repo, align 4
  %20 = call i32 @git_commit_lookup(i32** %1, i32 %19, i32* %3)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @repo, align 4
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @GIT_RESET_HARD, align 4
  %25 = call i32 @git_reset(i32 %22, i32* %23, i32 %24, i32* null)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32, i32* @repo, align 4
  %29 = call i32 @git_commit_lookup(i32** %2, i32 %28, i32* %4)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32, i32* @repo, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_revert(i32 %31, i32* %32, %struct.TYPE_6__* %5)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @repo_index, align 4
  %36 = getelementptr inbounds [2 x %struct.merge_index_entry], [2 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %37 = call i32 @merge_test_index(i32 %35, %struct.merge_index_entry* %36, i32 2)
  %38 = call i32 @cl_assert(i32 %37)
  %39 = load i32, i32* @repo_index, align 4
  %40 = getelementptr inbounds [1 x %struct.merge_name_entry], [1 x %struct.merge_name_entry]* %7, i64 0, i64 0
  %41 = call i32 @merge_test_names(i32 %39, %struct.merge_name_entry* %40, i32 1)
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_commit_free(i32* %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_commit_free(i32* %45)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @git_revert(i32, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @merge_test_names(i32, %struct.merge_name_entry*, i32) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
