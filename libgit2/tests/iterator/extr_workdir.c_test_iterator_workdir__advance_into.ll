; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__advance_into.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__advance_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"icase/Empty\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Empty/\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"L/\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"L/1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"L/B\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"L/D\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"L/a\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"L/c\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"k/\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"k/1\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"k/B\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"k/D\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"k/a\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"k/c\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__advance_into() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  %4 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* @g_repo, align 4
  %5 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %6 = load i32, i32* @GIT_ITERATOR_DONT_AUTOEXPAND, align 4
  %7 = or i32 %5, %6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %7
  store i32 %10, i32* %8, align 4
  %11 = call i32 @p_mkdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %12 = call i32 @cl_must_pass(i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_iterator_for_workdir(i32** %1, i32 %13, i32* null, i32* null, %struct.TYPE_4__* %2)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @expect_advance_into(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @expect_advance_into(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @expect_advance_into(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @expect_advance_into(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @expect_advance_into(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @expect_advance_into(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @expect_advance_into(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @expect_advance_into(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @expect_advance_into(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @expect_advance_into(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @expect_advance_into(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @expect_advance_into(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @expect_advance_into(i32* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @expect_advance_into(i32* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @expect_advance_into(i32* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @expect_advance_into(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @expect_advance_into(i32* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @expect_advance_into(i32* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @expect_advance_into(i32* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @expect_advance_into(i32* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @expect_advance_into(i32* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @expect_advance_into(i32* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @expect_advance_into(i32* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  %62 = load i32, i32* @GIT_ITEROVER, align 4
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @git_iterator_advance(i32* null, i32* %63)
  %65 = call i32 @cl_git_fail_with(i32 %62, i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @git_iterator_free(i32* %66)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32, i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @expect_advance_into(i32*, i8*) #2

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
