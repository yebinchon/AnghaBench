; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__partial.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32 }

@repo_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"test-one.txt\00", align 1
@CONFLICTS_ONE_ANCESTOR_OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_conflicts__partial() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca [3 x %struct.TYPE_8__*], align 16
  %5 = load i32, i32* @repo_index, align 4
  %6 = call i32 @git_index_entrycount(i32 %5)
  %7 = icmp eq i32 %6, 8
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = call i32 @memset(%struct.TYPE_8__* %1, i32 0, i32 16)
  %11 = call i32 @memset(%struct.TYPE_8__* %2, i32 0, i32 16)
  %12 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 16)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store i32 33188, i32* %14, align 8
  %15 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_8__* %1, i32 1)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %17 = load i32, i32* @CONFLICTS_ONE_ANCESTOR_OID, align 4
  %18 = call i32 @git_oid_fromstr(i32* %16, i32 %17)
  %19 = load i32, i32* @repo_index, align 4
  %20 = call i32 @git_index_conflict_add(i32 %19, %struct.TYPE_8__* %1, i32* null, i32* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @repo_index, align 4
  %23 = call i32 @git_index_entrycount(i32 %22)
  %24 = icmp eq i32 %23, 9
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = getelementptr inbounds [3 x %struct.TYPE_8__*], [3 x %struct.TYPE_8__*]* %4, i64 0, i64 0
  %28 = getelementptr inbounds [3 x %struct.TYPE_8__*], [3 x %struct.TYPE_8__*]* %4, i64 0, i64 1
  %29 = getelementptr inbounds [3 x %struct.TYPE_8__*], [3 x %struct.TYPE_8__*]* %4, i64 0, i64 2
  %30 = load i32, i32* @repo_index, align 4
  %31 = call i32 @git_index_conflict_get(%struct.TYPE_8__** %27, %struct.TYPE_8__** %28, %struct.TYPE_8__** %29, i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %34 = getelementptr inbounds [3 x %struct.TYPE_8__*], [3 x %struct.TYPE_8__*]* %4, i64 0, i64 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 16
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = call i32 @cl_assert_equal_oid(i32* %33, i32* %36)
  %38 = getelementptr inbounds [3 x %struct.TYPE_8__*], [3 x %struct.TYPE_8__*]* %4, i64 0, i64 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = icmp eq %struct.TYPE_8__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = getelementptr inbounds [3 x %struct.TYPE_8__*], [3 x %struct.TYPE_8__*]* %4, i64 0, i64 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 16
  %45 = icmp eq %struct.TYPE_8__* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_entrycount(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_conflict_add(i32, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @git_index_conflict_get(%struct.TYPE_8__**, %struct.TYPE_8__**, %struct.TYPE_8__**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
