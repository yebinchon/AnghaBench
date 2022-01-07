; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__find_prefix.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__find_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TEST_INDEX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"src/block-sha1/sha1.c\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"src/co\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"src/commit.c\00", align 1
@GIT_ENOTFOUND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"blah\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__find_prefix() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @TEST_INDEX_PATH, align 4
  %5 = call i64 @git_index_open(i32** %1, i32 %4)
  %6 = call i32 @cl_git_pass(i64 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i64 @git_index_find_prefix(i64* %3, i32* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i64 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call %struct.TYPE_3__* @git_index_get_byindex(i32* %10, i64 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @git__strcmp(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i64 @git_index_find_prefix(i64* %3, i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i64 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call %struct.TYPE_3__* @git_index_get_byindex(i32* %23, i64 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %2, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @git__strcmp(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  %33 = load i64, i64* @GIT_ENOTFOUND, align 8
  %34 = load i32*, i32** %1, align 8
  %35 = call i64 @git_index_find_prefix(i64* null, i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp eq i64 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_index_free(i32* %39)
  ret void
}

declare dso_local i32 @cl_git_pass(i64) #1

declare dso_local i64 @git_index_open(i32**, i32) #1

declare dso_local i64 @git_index_find_prefix(i64*, i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @git_index_get_byindex(i32*, i64) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git__strcmp(i32, i8*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
