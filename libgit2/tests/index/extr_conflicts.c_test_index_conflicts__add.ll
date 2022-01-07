; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__add.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32 }

@repo_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"test-one.txt\00", align 1
@CONFLICTS_ONE_ANCESTOR_OID = common dso_local global i32 0, align 4
@CONFLICTS_ONE_OUR_OID = common dso_local global i32 0, align 4
@CONFLICTS_ONE_THEIR_OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_conflicts__add() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = load i32, i32* @repo_index, align 4
  %5 = call i32 @git_index_entrycount(i32 %4)
  %6 = icmp eq i32 %5, 8
  %7 = zext i1 %6 to i32
  %8 = call i32 @cl_assert(i32 %7)
  %9 = call i32 @memset(%struct.TYPE_7__* %1, i32 0, i32 16)
  %10 = call i32 @memset(%struct.TYPE_7__* %2, i32 0, i32 16)
  %11 = call i32 @memset(%struct.TYPE_7__* %3, i32 0, i32 16)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i32 33188, i32* %13, align 8
  %14 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__* %1, i32 1)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %16 = load i32, i32* @CONFLICTS_ONE_ANCESTOR_OID, align 4
  %17 = call i32 @git_oid_fromstr(i32* %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 33188, i32* %19, align 8
  %20 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__* %2, i32 2)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %22 = load i32, i32* @CONFLICTS_ONE_OUR_OID, align 4
  %23 = call i32 @git_oid_fromstr(i32* %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i32 33188, i32* %25, align 8
  %26 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__* %1, i32 2)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  %28 = load i32, i32* @CONFLICTS_ONE_THEIR_OID, align 4
  %29 = call i32 @git_oid_fromstr(i32* %27, i32 %28)
  %30 = load i32, i32* @repo_index, align 4
  %31 = call i32 @git_index_conflict_add(i32 %30, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32, i32* @repo_index, align 4
  %34 = call i32 @git_index_entrycount(i32 %33)
  %35 = icmp eq i32 %34, 11
  %36 = zext i1 %35 to i32
  %37 = call i32 @cl_assert(i32 %36)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_entrycount(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_conflict_add(i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
