; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__iterate.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@repo_index = common dso_local global i32 0, align 4
@CONFLICTS_ONE_ANCESTOR_OID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"conflicts-one.txt\00", align 1
@CONFLICTS_ONE_OUR_OID = common dso_local global i32 0, align 4
@CONFLICTS_ONE_THEIR_OID = common dso_local global i32 0, align 4
@CONFLICTS_TWO_ANCESTOR_OID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"conflicts-two.txt\00", align 1
@CONFLICTS_TWO_OUR_OID = common dso_local global i32 0, align 4
@CONFLICTS_TWO_THEIR_OID = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_conflicts__iterate() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [3 x %struct.TYPE_5__*], align 16
  %3 = alloca i32, align 4
  %4 = load i32, i32* @repo_index, align 4
  %5 = call i64 @git_index_conflict_iterator_new(i32** %1, i32 %4)
  %6 = call i32 @cl_git_pass(i64 %5)
  %7 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 0
  %8 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 1
  %9 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 2
  %10 = load i32*, i32** %1, align 8
  %11 = call i64 @git_index_conflict_next(%struct.TYPE_5__** %7, %struct.TYPE_5__** %8, %struct.TYPE_5__** %9, i32* %10)
  %12 = call i32 @cl_git_pass(i64 %11)
  %13 = load i32, i32* @CONFLICTS_ONE_ANCESTOR_OID, align 4
  %14 = call i32 @git_oid_fromstr(i32* %3, i32 %13)
  %15 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 16
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = call i32 @cl_assert_equal_oid(i32* %3, i32* %17)
  %19 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 16
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @git__strcmp(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32, i32* @CONFLICTS_ONE_OUR_OID, align 4
  %28 = call i32 @git_oid_fromstr(i32* %3, i32 %27)
  %29 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = call i32 @cl_assert_equal_oid(i32* %3, i32* %31)
  %33 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 16
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @git__strcmp(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = load i32, i32* @CONFLICTS_ONE_THEIR_OID, align 4
  %42 = call i32 @git_oid_fromstr(i32* %3, i32 %41)
  %43 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 16
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = call i32 @cl_assert_equal_oid(i32* %3, i32* %45)
  %47 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 16
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @git__strcmp(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @cl_assert(i32 %53)
  %55 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 0
  %56 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 1
  %57 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 2
  %58 = load i32*, i32** %1, align 8
  %59 = call i64 @git_index_conflict_next(%struct.TYPE_5__** %55, %struct.TYPE_5__** %56, %struct.TYPE_5__** %57, i32* %58)
  %60 = call i32 @cl_git_pass(i64 %59)
  %61 = load i32, i32* @CONFLICTS_TWO_ANCESTOR_OID, align 4
  %62 = call i32 @git_oid_fromstr(i32* %3, i32 %61)
  %63 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 16
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = call i32 @cl_assert_equal_oid(i32* %3, i32* %65)
  %67 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 16
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @git__strcmp(i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @cl_assert(i32 %73)
  %75 = load i32, i32* @CONFLICTS_TWO_OUR_OID, align 4
  %76 = call i32 @git_oid_fromstr(i32* %3, i32 %75)
  %77 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = call i32 @cl_assert_equal_oid(i32* %3, i32* %79)
  %81 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 16
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @git__strcmp(i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @cl_assert(i32 %87)
  %89 = load i32, i32* @CONFLICTS_TWO_THEIR_OID, align 4
  %90 = call i32 @git_oid_fromstr(i32* %3, i32 %89)
  %91 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 16
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = call i32 @cl_assert_equal_oid(i32* %3, i32* %93)
  %95 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 16
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @git__strcmp(i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @cl_assert(i32 %101)
  %103 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 0
  %104 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 1
  %105 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 2
  %106 = load i32*, i32** %1, align 8
  %107 = call i64 @git_index_conflict_next(%struct.TYPE_5__** %103, %struct.TYPE_5__** %104, %struct.TYPE_5__** %105, i32* %106)
  %108 = load i64, i64* @GIT_ITEROVER, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @cl_assert(i32 %110)
  %112 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 16
  %114 = icmp eq %struct.TYPE_5__* %113, null
  %115 = zext i1 %114 to i32
  %116 = call i32 @cl_assert(i32 %115)
  %117 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 2
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 16
  %119 = icmp eq %struct.TYPE_5__* %118, null
  %120 = zext i1 %119 to i32
  %121 = call i32 @cl_assert(i32 %120)
  %122 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %2, i64 0, i64 2
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 16
  %124 = icmp eq %struct.TYPE_5__* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i32 @cl_assert(i32 %125)
  %127 = load i32*, i32** %1, align 8
  %128 = call i32 @git_index_conflict_iterator_free(i32* %127)
  ret void
}

declare dso_local i32 @cl_git_pass(i64) #1

declare dso_local i64 @git_index_conflict_iterator_new(i32**, i32) #1

declare dso_local i64 @git_index_conflict_next(%struct.TYPE_5__**, %struct.TYPE_5__**, %struct.TYPE_5__**, i32*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git__strcmp(i32, i8*) #1

declare dso_local i32 @git_index_conflict_iterator_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
