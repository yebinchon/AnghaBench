; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_read_index.c_test_index_read_index__handles_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_read_index.c_test_index_read_index__handles_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"ae90f12eea699729ed24555e40b9fd669da12a12\00", align 1
@_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"orig_side-1.txt\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"orig_side-2.txt\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"both_sides-1.txt\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"both_sides-2.txt\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"new_side-1.txt\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"new_side-2.txt\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_read_index__handles_conflicts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @_repo, align 4
  %12 = call i32 @git_tree_lookup(i32** %2, i32 %11, i32* %1)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_index_new(i32** %3)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_index_new(i32** %4)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_index_read_tree(i32* %18, i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_index_read_tree(i32* %22, i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @add_conflicts(i32* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @add_conflicts(i32* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @add_conflicts(i32* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @add_conflicts(i32* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @add_conflicts(i32* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @add_conflicts(i32* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @add_conflicts(i32* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @add_conflicts(i32* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @git_index_read_index(i32* %42, i32* %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @git_index_conflict_iterator_new(i32** %5, i32* %46)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @git_index_conflict_next(%struct.TYPE_5__** %6, %struct.TYPE_5__** %7, %struct.TYPE_5__** %8, i32* %49)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @git_index_conflict_next(%struct.TYPE_5__** %6, %struct.TYPE_5__** %7, %struct.TYPE_5__** %8, i32* %64)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @git_index_conflict_next(%struct.TYPE_5__** %6, %struct.TYPE_5__** %7, %struct.TYPE_5__** %8, i32* %79)
  %81 = call i32 @cl_git_pass(i32 %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @git_index_conflict_next(%struct.TYPE_5__** %6, %struct.TYPE_5__** %7, %struct.TYPE_5__** %8, i32* %94)
  %96 = call i32 @cl_git_pass(i32 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @GIT_ITEROVER, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @git_index_conflict_next(%struct.TYPE_5__** %6, %struct.TYPE_5__** %7, %struct.TYPE_5__** %8, i32* %110)
  %112 = call i32 @cl_git_fail_with(i32 %109, i32 %111)
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @git_index_conflict_iterator_free(i32* %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @git_tree_free(i32* %115)
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @git_index_free(i32* %117)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @git_index_free(i32* %119)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_index_new(i32**) #1

declare dso_local i32 @git_index_read_tree(i32*, i32*) #1

declare dso_local i32 @add_conflicts(i32*, i8*) #1

declare dso_local i32 @git_index_read_index(i32*, i32*) #1

declare dso_local i32 @git_index_conflict_iterator_new(i32**, i32*) #1

declare dso_local i32 @git_index_conflict_next(%struct.TYPE_5__**, %struct.TYPE_5__**, %struct.TYPE_5__**, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_index_conflict_iterator_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
