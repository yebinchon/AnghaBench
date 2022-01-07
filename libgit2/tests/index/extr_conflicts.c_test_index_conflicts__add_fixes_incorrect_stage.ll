; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__add_fixes_incorrect_stage.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__add_fixes_incorrect_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32 }

@repo_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"test-one.txt\00", align 1
@CONFLICTS_ONE_ANCESTOR_OID = common dso_local global i32 0, align 4
@CONFLICTS_ONE_OUR_OID = common dso_local global i32 0, align 4
@CONFLICTS_ONE_THEIR_OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_conflicts__add_fixes_incorrect_stage() #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 1
  store i32 33188, i32* %14, align 8
  %15 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_11__* %1, i32 3)
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 2
  %17 = load i32, i32* @CONFLICTS_ONE_ANCESTOR_OID, align 4
  %18 = call i32 @git_oid_fromstr(i32* %16, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i32 33188, i32* %20, align 8
  %21 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_11__* %2, i32 1)
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  %23 = load i32, i32* @CONFLICTS_ONE_OUR_OID, align 4
  %24 = call i32 @git_oid_fromstr(i32* %22, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  store i32 33188, i32* %26, align 8
  %27 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_11__* %3, i32 2)
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %29 = load i32, i32* @CONFLICTS_ONE_THEIR_OID, align 4
  %30 = call i32 @git_oid_fromstr(i32* %28, i32 %29)
  %31 = load i32, i32* @repo_index, align 4
  %32 = call i32 @git_index_conflict_add(i32 %31, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @repo_index, align 4
  %35 = call i32 @git_index_entrycount(i32 %34)
  %36 = icmp eq i32 %35, 11
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 0
  %40 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 1
  %41 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 2
  %42 = load i32, i32* @repo_index, align 4
  %43 = call i32 @git_index_conflict_get(%struct.TYPE_11__** %39, %struct.TYPE_11__** %40, %struct.TYPE_11__** %41, i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 16
  %47 = call i32 @git_index_entry_stage(%struct.TYPE_11__* %46)
  %48 = icmp eq i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = call i32 @cl_assert(i32 %49)
  %51 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = call i32 @git_index_entry_stage(%struct.TYPE_11__* %52)
  %54 = icmp eq i32 %53, 2
  %55 = zext i1 %54 to i32
  %56 = call i32 @cl_assert(i32 %55)
  %57 = getelementptr inbounds [3 x %struct.TYPE_11__*], [3 x %struct.TYPE_11__*]* %4, i64 0, i64 2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 16
  %59 = call i32 @git_index_entry_stage(%struct.TYPE_11__* %58)
  %60 = icmp eq i32 %59, 3
  %61 = zext i1 %60 to i32
  %62 = call i32 @cl_assert(i32 %61)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_entrycount(i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_conflict_add(i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @git_index_conflict_get(%struct.TYPE_11__**, %struct.TYPE_11__**, %struct.TYPE_11__**, i32, i8*) #1

declare dso_local i32 @git_index_entry_stage(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
