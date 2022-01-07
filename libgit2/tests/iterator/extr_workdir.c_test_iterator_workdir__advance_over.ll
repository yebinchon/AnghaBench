; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__advance_over.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__advance_over.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"icase/empty\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"icase/all_ignored\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"icase/all_ignored/one\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"This is ignored\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"icase/all_ignored/two\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"This, too, is ignored\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"icase/all_ignored/.gitignore\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c".gitignore\0Aone\0Atwo\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"icase/some_ignored\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"icase/some_ignored/one\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"icase/some_ignored/two\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"This is not ignored\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"icase/some_ignored/.gitignore\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c".gitignore\0Aone\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"icase/empty_children\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"icase/empty_children/empty1\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"icase/empty_children/empty2\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"icase/empty_children/empty3\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"icase/missing_directory\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@GIT_ITERATOR_STATUS_NORMAL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"L/\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"all_ignored/\00", align 1
@GIT_ITERATOR_STATUS_IGNORED = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"empty/\00", align 1
@GIT_ITERATOR_STATUS_EMPTY = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [16 x i8] c"empty_children/\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"k/\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"missing_directory/\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"some_ignored/\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__advance_over() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  %4 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %5 = load i32, i32* @GIT_ITERATOR_DONT_AUTOEXPAND, align 4
  %6 = or i32 %4, %5
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %6
  store i32 %9, i32* %7, align 4
  %10 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* @g_repo, align 4
  %11 = call i32 @p_mkdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %12 = call i32 @cl_must_pass(i32 %11)
  %13 = call i32 @p_mkdir(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %14 = call i32 @cl_must_pass(i32 %13)
  %15 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %17 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %18 = call i32 @p_mkdir(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 511)
  %19 = call i32 @cl_must_pass(i32 %18)
  %20 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %22 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %23 = call i32 @p_mkdir(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 511)
  %24 = call i32 @cl_must_pass(i32 %23)
  %25 = call i32 @p_mkdir(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 511)
  %26 = call i32 @cl_must_pass(i32 %25)
  %27 = call i32 @p_mkdir(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 511)
  %28 = call i32 @cl_must_pass(i32 %27)
  %29 = call i32 @p_mkdir(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 511)
  %30 = call i32 @cl_must_pass(i32 %29)
  %31 = call i32 @p_mkdir(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 511)
  %32 = call i32 @cl_must_pass(i32 %31)
  %33 = load i32, i32* @g_repo, align 4
  %34 = call i32 @git_iterator_for_workdir(i32** %1, i32 %33, i32* null, i32* null, %struct.TYPE_4__* %2)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = call i32 @p_rmdir(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %37 = call i32 @cl_must_pass(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %40 = call i32 @expect_advance_over(i32* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %43 = call i32 @expect_advance_over(i32* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %46 = call i32 @expect_advance_over(i32* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %49 = call i32 @expect_advance_over(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %52 = call i32 @expect_advance_over(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %55 = call i32 @expect_advance_over(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %58 = call i32 @expect_advance_over(i32* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = load i32, i32* @GIT_ITERATOR_STATUS_IGNORED, align 4
  %61 = call i32 @expect_advance_over(i32* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %64 = call i32 @expect_advance_over(i32* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %67 = call i32 @expect_advance_over(i32* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %1, align 8
  %69 = load i32, i32* @GIT_ITERATOR_STATUS_EMPTY, align 4
  %70 = call i32 @expect_advance_over(i32* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = load i32, i32* @GIT_ITERATOR_STATUS_EMPTY, align 4
  %73 = call i32 @expect_advance_over(i32* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %1, align 8
  %75 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %76 = call i32 @expect_advance_over(i32* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %79 = call i32 @expect_advance_over(i32* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %82 = call i32 @expect_advance_over(i32* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = load i32, i32* @GIT_ITERATOR_STATUS_EMPTY, align 4
  %85 = call i32 @expect_advance_over(i32* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %1, align 8
  %87 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %88 = call i32 @expect_advance_over(i32* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @GIT_ITEROVER, align 4
  %90 = load i32*, i32** %1, align 8
  %91 = call i32 @git_iterator_advance(i32* null, i32* %90)
  %92 = call i32 @cl_git_fail_with(i32 %89, i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @git_iterator_free(i32* %93)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32, i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @p_rmdir(i8*) #2

declare dso_local i32 @expect_advance_over(i32*, i8*, i32) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_iterator_advance(i32*, i32*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
