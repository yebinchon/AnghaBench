; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__add_removes_stage_zero.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__add_removes_stage_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32 }

@repo_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"./mergedrepo/test-one.txt\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"new-file\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"test-one.txt\00", align 1
@CONFLICTS_ONE_ANCESTOR_OID = common dso_local global i32 0, align 4
@CONFLICTS_ONE_OUR_OID = common dso_local global i32 0, align 4
@CONFLICTS_ONE_THEIR_OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_conflicts__add_removes_stage_zero() #0 {
  %1 = alloca %struct.TYPE_11__, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca [3 x %struct.TYPE_11__*], align 16
  %5 = load i32, i32* @repo_index, align 4
  %6 = call i32 @git_index_entrycount(i32 %5)
  %7 = icmp eq i32 %6, 8
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = call i32 @memset(%struct.TYPE_11__* %1, i32 0, i32 16)
  %11 = call i32 @memset(%struct.TYPE_11__* %2, i32 0, i32 16)
  %12 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %13 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @repo_index, align 4
  %15 = call i32 @git_index_add_bypath(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @repo_index, align 4
  %18 = call i32 @git_index_entrycount(i32 %17)
  %19 = icmp eq i32 %18, 9
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 1
  store i32 33188, i32* %23, align 8
  %24 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_11__* %1, i32 3)
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 2
  %26 = load i32, i32* @CONFLICTS_ONE_ANCESTOR_OID, align 4
  %27 = call i32 @git_oid_fromstr(i32* %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i32 33188, i32* %29, align 8
  %30 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_11__* %2, i32 1)
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  %32 = load i32, i32* @CONFLICTS_ONE_OUR_OID, align 4
  %33 = call i32 @git_oid_fromstr(i32* %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  store i32 33188, i32* %35, align 8
  %36 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_11__* %3, i32 2)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %38 = load i32, i32* @CONFLICTS_ONE_THEIR_OID, align 4
  %39 = call i32 @git_oid_fromstr(i32* %37, i32 %38)
  %40 = load i32, i32* @repo_index, align 4
  %41 = call i32 @git_index_conflict_add(i32 %40, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @repo_index, align 4
  %44 = call i32 @git_index_entrycount(i32 %43)
  %45 = icmp eq i32 %44, 11
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32, i32* @repo_index, align 4
  %49 = call i32 @git_index_get_bypath(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %50 = call i32 @cl_assert_equal_p(i32* null, i32 %49)
  %51 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 0
  %52 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 1
  %53 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 2
  %54 = load i32, i32* @repo_index, align 4
  %55 = call i32 @git_index_conflict_get(%struct.TYPE_11__** %51, %struct.TYPE_11__** %52, %struct.TYPE_11__** %53, i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 2
  %58 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 16
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = call i32 @cl_assert_equal_oid(i32* %57, i32* %60)
  %62 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 16
  %64 = call i32 @git_index_entry_stage(%struct.TYPE_11__* %63)
  %65 = call i32 @cl_assert_equal_i(i32 1, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  %67 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = call i32 @cl_assert_equal_oid(i32* %66, i32* %69)
  %71 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = call i32 @git_index_entry_stage(%struct.TYPE_11__* %72)
  %74 = call i32 @cl_assert_equal_i(i32 2, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %76 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 2
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 16
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = call i32 @cl_assert_equal_oid(i32* %75, i32* %78)
  %80 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 2
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 16
  %82 = call i32 @git_index_entry_stage(%struct.TYPE_11__* %81)
  %83 = call i32 @cl_assert_equal_i(i32 3, i32 %82)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_entrycount(i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_add_bypath(i32, i8*) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @git_index_conflict_add(i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @cl_assert_equal_p(i32*, i32) #1

declare dso_local i32 @git_index_get_bypath(i32, i8*, i32) #1

declare dso_local i32 @git_index_conflict_get(%struct.TYPE_11__**, %struct.TYPE_11__**, %struct.TYPE_11__**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_entry_stage(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
