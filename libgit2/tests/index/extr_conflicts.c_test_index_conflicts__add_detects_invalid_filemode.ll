; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__add_detects_invalid_filemode.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__add_detects_invalid_filemode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32 }

@repo_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"test-one.txt\00", align 1
@CONFLICTS_ONE_ANCESTOR_OID = common dso_local global i32 0, align 4
@CONFLICTS_ONE_OUR_OID = common dso_local global i32 0, align 4
@CONFLICTS_ONE_THEIR_OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_conflicts__add_detects_invalid_filemode() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca [3 x %struct.TYPE_7__*], align 16
  %5 = alloca i32, align 4
  %6 = load i32, i32* @repo_index, align 4
  %7 = call i32 @git_index_entrycount(i32 %6)
  %8 = icmp eq i32 %7, 8
  %9 = zext i1 %8 to i32
  %10 = call i32 @cl_assert(i32 %9)
  %11 = call i32 @memset(%struct.TYPE_7__* %1, i32 0, i32 16)
  %12 = call i32 @memset(%struct.TYPE_7__* %2, i32 0, i32 16)
  %13 = call i32 @memset(%struct.TYPE_7__* %3, i32 0, i32 16)
  %14 = getelementptr inbounds [3 x %struct.TYPE_7__*], [3 x %struct.TYPE_7__*]* %4, i64 0, i64 0
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %14, align 16
  %15 = getelementptr inbounds [3 x %struct.TYPE_7__*], [3 x %struct.TYPE_7__*]* %4, i64 0, i64 1
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %15, align 8
  %16 = getelementptr inbounds [3 x %struct.TYPE_7__*], [3 x %struct.TYPE_7__*]* %4, i64 0, i64 2
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %16, align 16
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %47, %0
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i32 33188, i32* %22, align 8
  %23 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__* %1, i32 3)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %25 = load i32, i32* @CONFLICTS_ONE_ANCESTOR_OID, align 4
  %26 = call i32 @git_oid_fromstr(i32* %24, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 33188, i32* %28, align 8
  %29 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__* %2, i32 1)
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %31 = load i32, i32* @CONFLICTS_ONE_OUR_OID, align 4
  %32 = call i32 @git_oid_fromstr(i32* %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i32 33188, i32* %34, align 8
  %35 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__* %3, i32 2)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  %37 = load i32, i32* @CONFLICTS_ONE_THEIR_OID, align 4
  %38 = call i32 @git_oid_fromstr(i32* %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x %struct.TYPE_7__*], [3 x %struct.TYPE_7__*]* %4, i64 0, i64 %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32 6173669, i32* %43, align 8
  %44 = load i32, i32* @repo_index, align 4
  %45 = call i32 @git_index_conflict_add(i32 %44, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3)
  %46 = call i32 @cl_git_fail(i32 %45)
  br label %47

47:                                               ; preds = %20
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load i32, i32* @repo_index, align 4
  %52 = call i32 @git_index_entrycount(i32 %51)
  %53 = icmp eq i32 %52, 8
  %54 = zext i1 %53 to i32
  %55 = call i32 @cl_assert(i32 %54)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_entrycount(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_index_conflict_add(i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
