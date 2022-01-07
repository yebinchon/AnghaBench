; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__advance_over.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__advance_over.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@GIT_ITERATOR_STATUS_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"L/\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"item0\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"item1/\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"item2\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"item3/\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"item4\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"item5/\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"item6\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"item7/\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"k/\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_index__advance_over() #0 {
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
  %16 = call i32 @create_paths(i32* %15, i32* null, i32 1)
  %17 = load i32, i32* @g_repo, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @git_iterator_for_index(i32** %1, i32 %17, i32* %18, %struct.TYPE_4__* %2)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %23 = call i32 @expect_advance_over(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %26 = call i32 @expect_advance_over(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %29 = call i32 @expect_advance_over(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %32 = call i32 @expect_advance_over(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %35 = call i32 @expect_advance_over(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %38 = call i32 @expect_advance_over(i32* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %41 = call i32 @expect_advance_over(i32* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %44 = call i32 @expect_advance_over(i32* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %47 = call i32 @expect_advance_over(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %50 = call i32 @expect_advance_over(i32* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %53 = call i32 @expect_advance_over(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %56 = call i32 @expect_advance_over(i32* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %59 = call i32 @expect_advance_over(i32* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %62 = call i32 @expect_advance_over(i32* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %65 = call i32 @expect_advance_over(i32* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %68 = call i32 @expect_advance_over(i32* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %71 = call i32 @expect_advance_over(i32* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %74 = call i32 @expect_advance_over(i32* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %77 = call i32 @expect_advance_over(i32* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %80 = call i32 @expect_advance_over(i32* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @GIT_ITEROVER, align 4
  %82 = load i32*, i32** %1, align 8
  %83 = call i32 @git_iterator_advance(i32* null, i32* %82)
  %84 = call i32 @cl_git_fail_with(i32 %81, i32 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @git_iterator_free(i32* %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @git_index_free(i32* %87)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @create_paths(i32*, i32*, i32) #2

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
