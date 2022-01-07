; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__get.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@repo_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"conflicts-one.txt\00", align 1
@CONFLICTS_ONE_ANCESTOR_OID = common dso_local global i32 0, align 4
@CONFLICTS_ONE_OUR_OID = common dso_local global i32 0, align 4
@CONFLICTS_ONE_THEIR_OID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"conflicts-two.txt\00", align 1
@CONFLICTS_TWO_ANCESTOR_OID = common dso_local global i32 0, align 4
@CONFLICTS_TWO_OUR_OID = common dso_local global i32 0, align 4
@CONFLICTS_TWO_THEIR_OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_conflicts__get() #0 {
  %1 = alloca [3 x %struct.TYPE_5__*], align 16
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 1
  %5 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 2
  %6 = load i32, i32* @repo_index, align 4
  %7 = call i32 @git_index_conflict_get(%struct.TYPE_5__** %3, %struct.TYPE_5__** %4, %struct.TYPE_5__** %5, i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 16
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @CONFLICTS_ONE_ANCESTOR_OID, align 4
  %15 = call i32 @git_oid_fromstr(i32* %2, i32 %14)
  %16 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @cl_assert_equal_oid(i32* %2, i32* %18)
  %20 = load i32, i32* @CONFLICTS_ONE_OUR_OID, align 4
  %21 = call i32 @git_oid_fromstr(i32* %2, i32 %20)
  %22 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @cl_assert_equal_oid(i32* %2, i32* %24)
  %26 = load i32, i32* @CONFLICTS_ONE_THEIR_OID, align 4
  %27 = call i32 @git_oid_fromstr(i32* %2, i32 %26)
  %28 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 16
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @cl_assert_equal_oid(i32* %2, i32* %30)
  %32 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 0
  %33 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 1
  %34 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 2
  %35 = load i32, i32* @repo_index, align 4
  %36 = call i32 @git_index_conflict_get(%struct.TYPE_5__** %32, %struct.TYPE_5__** %33, %struct.TYPE_5__** %34, i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 16
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @CONFLICTS_TWO_ANCESTOR_OID, align 4
  %44 = call i32 @git_oid_fromstr(i32* %2, i32 %43)
  %45 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 16
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @cl_assert_equal_oid(i32* %2, i32* %47)
  %49 = load i32, i32* @CONFLICTS_TWO_OUR_OID, align 4
  %50 = call i32 @git_oid_fromstr(i32* %2, i32 %49)
  %51 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @cl_assert_equal_oid(i32* %2, i32* %53)
  %55 = load i32, i32* @CONFLICTS_TWO_THEIR_OID, align 4
  %56 = call i32 @git_oid_fromstr(i32* %2, i32 %55)
  %57 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %1, i64 0, i64 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 16
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @cl_assert_equal_oid(i32* %2, i32* %59)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_conflict_get(%struct.TYPE_5__**, %struct.TYPE_5__**, %struct.TYPE_5__**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
