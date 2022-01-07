; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_pathspec.c_test_repo_pathspec__in_memory.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_pathspec.c_test_repo_pathspec__in_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32 }

@test_repo_pathspec__in_memory.strings = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"two*\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"!three*\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"*four\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ONE\00", align 1
@GIT_PATHSPEC_IGNORE_CASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"two.txt\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"three.txt\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"anything.four\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"three.four\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"nomatch\00", align 1
@GIT_PATHSPEC_NO_GLOB = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"anyfour\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_pathspec__in_memory() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32*, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @test_repo_pathspec__in_memory.strings, i64 0, i64 0), i8*** %3, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %5 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @test_repo_pathspec__in_memory.strings, i64 0, i64 0))
  store i32 %5, i32* %4, align 8
  %6 = call i32 @git_pathspec_new(i32** %2, %struct.TYPE_3__* %1)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @git_pathspec_matches_path(i32* %8, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @cl_assert(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @git_pathspec_matches_path(i32* %11, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @GIT_PATHSPEC_IGNORE_CASE, align 4
  %19 = call i32 @git_pathspec_matches_path(i32* %17, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_pathspec_matches_path(i32* %21, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 @cl_assert(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_pathspec_matches_path(i32* %24, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_pathspec_matches_path(i32* %27, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @git_pathspec_matches_path(i32* %33, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @git_pathspec_matches_path(i32* %36, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @git_pathspec_matches_path(i32* %42, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* @GIT_PATHSPEC_NO_GLOB, align 4
  %50 = call i32 @git_pathspec_matches_path(i32* %48, i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @cl_assert(i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* @GIT_PATHSPEC_NO_GLOB, align 4
  %57 = call i32 @git_pathspec_matches_path(i32* %55, i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @cl_assert(i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @GIT_PATHSPEC_NO_GLOB, align 4
  %61 = call i32 @git_pathspec_matches_path(i32* %59, i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @cl_assert(i32 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = load i32, i32* @GIT_PATHSPEC_NO_GLOB, align 4
  %68 = call i32 @git_pathspec_matches_path(i32* %66, i32 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %69 = call i32 @cl_assert(i32 %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @git_pathspec_free(i32* %70)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_pathspec_new(i32**, %struct.TYPE_3__*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_pathspec_matches_path(i32*, i32, i8*) #1

declare dso_local i32 @git_pathspec_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
