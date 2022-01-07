; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__include_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__include_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"CONFLICT1\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ZZZ-CONFLICT2.ancestor\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ZZZ-CONFLICT2.ours\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ZZZ-CONFLICT2.theirs\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ancestor.conflict3\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ours.conflict3\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"theirs.conflict3\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"zzz-conflict4\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@GIT_ITERATOR_STATUS_NORMAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"L/\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"k/\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4
@GIT_ITERATOR_INCLUDE_CONFLICTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_index__include_conflicts() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %6 = load i32, i32* @GIT_ITERATOR_DONT_AUTOEXPAND, align 4
  %7 = or i32 %5, %6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %7
  store i32 %10, i32* %8, align 4
  %11 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* @g_repo, align 4
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_repository_index(i32** %3, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @add_conflict(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @add_conflict(i32* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @add_conflict(i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @add_conflict(i32* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %23 = load i32, i32* @g_repo, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @git_iterator_for_index(i32** %1, i32 %23, i32* %24, %struct.TYPE_4__* %2)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %29 = call i32 @expect_advance_over(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %32 = call i32 @expect_advance_over(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %35 = call i32 @expect_advance_over(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %38 = call i32 @expect_advance_over(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %41 = call i32 @expect_advance_over(i32* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %44 = call i32 @expect_advance_over(i32* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %47 = call i32 @expect_advance_over(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %50 = call i32 @expect_advance_over(i32* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %53 = call i32 @expect_advance_over(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %56 = call i32 @expect_advance_over(i32* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %59 = call i32 @expect_advance_over(i32* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %62 = call i32 @expect_advance_over(i32* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @GIT_ITEROVER, align 4
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @git_iterator_advance(i32* null, i32* %64)
  %66 = call i32 @cl_git_fail_with(i32 %63, i32 %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @git_iterator_free(i32* %67)
  %69 = load i32, i32* @GIT_ITERATOR_INCLUDE_CONFLICTS, align 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @g_repo, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @git_iterator_for_index(i32** %1, i32 %73, i32* %74, %struct.TYPE_4__* %2)
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %79 = call i32 @expect_advance_over(i32* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %82 = call i32 @expect_advance_over(i32* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %85 = call i32 @expect_advance_over(i32* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %1, align 8
  %87 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %88 = call i32 @expect_advance_over(i32* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %1, align 8
  %90 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %91 = call i32 @expect_advance_over(i32* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %1, align 8
  %93 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %94 = call i32 @expect_advance_over(i32* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %1, align 8
  %96 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %97 = call i32 @expect_advance_over(i32* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %1, align 8
  %99 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %100 = call i32 @expect_advance_over(i32* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %1, align 8
  %102 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %103 = call i32 @expect_advance_over(i32* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %102)
  %104 = load i32*, i32** %1, align 8
  %105 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %106 = call i32 @expect_advance_over(i32* %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %1, align 8
  %108 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %109 = call i32 @expect_advance_over(i32* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %1, align 8
  %111 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %112 = call i32 @expect_advance_over(i32* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32*, i32** %1, align 8
  %114 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %115 = call i32 @expect_advance_over(i32* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %1, align 8
  %117 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %118 = call i32 @expect_advance_over(i32* %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  %119 = load i32*, i32** %1, align 8
  %120 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %121 = call i32 @expect_advance_over(i32* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %1, align 8
  %123 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %124 = call i32 @expect_advance_over(i32* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 %123)
  %125 = load i32*, i32** %1, align 8
  %126 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %127 = call i32 @expect_advance_over(i32* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 %126)
  %128 = load i32*, i32** %1, align 8
  %129 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %130 = call i32 @expect_advance_over(i32* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %129)
  %131 = load i32*, i32** %1, align 8
  %132 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %133 = call i32 @expect_advance_over(i32* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 %132)
  %134 = load i32*, i32** %1, align 8
  %135 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %136 = call i32 @expect_advance_over(i32* %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %1, align 8
  %138 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %139 = call i32 @expect_advance_over(i32* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %138)
  %140 = load i32*, i32** %1, align 8
  %141 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %142 = call i32 @expect_advance_over(i32* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %141)
  %143 = load i32*, i32** %1, align 8
  %144 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %145 = call i32 @expect_advance_over(i32* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %144)
  %146 = load i32*, i32** %1, align 8
  %147 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %148 = call i32 @expect_advance_over(i32* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @GIT_ITEROVER, align 4
  %150 = load i32*, i32** %1, align 8
  %151 = call i32 @git_iterator_advance(i32* null, i32* %150)
  %152 = call i32 @cl_git_fail_with(i32 %149, i32 %151)
  %153 = load i32*, i32** %1, align 8
  %154 = call i32 @git_iterator_free(i32* %153)
  %155 = load i32*, i32** %3, align 8
  %156 = call i32 @git_index_free(i32* %155)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @add_conflict(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @git_iterator_for_index(i32**, i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @expect_advance_over(i32*, i8*, i32) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_iterator_advance(i32*, i32*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
