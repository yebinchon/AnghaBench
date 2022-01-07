; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_walk.c_test_object_tree_walk__2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_walk.c_test_object_tree_walk__2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treewalk_skip_data = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"ae90f12eea699729ed24555e40b9fd669da12a12\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@GIT_TREEWALK_PRE = common dso_local global i32 0, align 4
@treewalk_skip_de_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"3.txt\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"new.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_walk__2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.treewalk_skip_data, align 8
  %4 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_tree_lookup(i32** %2, i32 %5, i32* %1)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @memset(%struct.treewalk_skip_data* %3, i32 0, i32 24)
  %9 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @GIT_TREEWALK_PRE, align 4
  %12 = load i32, i32* @treewalk_skip_de_cb, align 4
  %13 = call i32 @git_tree_walk(i32* %10, i32 %11, i32 %12, %struct.treewalk_skip_data* %3)
  %14 = call i32 @cl_assert_equal_i(i32 0, i32 %13)
  %15 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %3, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cl_assert_equal_i(i32 5, i32 %16)
  %18 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %3, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @cl_assert_equal_i(i32 3, i32 %19)
  %21 = call i32 @memset(%struct.treewalk_skip_data* %3, i32 0, i32 24)
  %22 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @GIT_TREEWALK_PRE, align 4
  %25 = load i32, i32* @treewalk_skip_de_cb, align 4
  %26 = call i32 @git_tree_walk(i32* %23, i32 %24, i32 %25, %struct.treewalk_skip_data* %3)
  %27 = call i32 @cl_assert_equal_i(i32 -1, i32 %26)
  %28 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %3, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cl_assert_equal_i(i32 3, i32 %29)
  %31 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %3, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cl_assert_equal_i(i32 2, i32 %32)
  %34 = call i32 @memset(%struct.treewalk_skip_data* %3, i32 0, i32 24)
  %35 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %35, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @GIT_TREEWALK_PRE, align 4
  %38 = load i32, i32* @treewalk_skip_de_cb, align 4
  %39 = call i32 @git_tree_walk(i32* %36, i32 %37, i32 %38, %struct.treewalk_skip_data* %3)
  %40 = call i32 @cl_assert_equal_i(i32 0, i32 %39)
  %41 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %3, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cl_assert_equal_i(i32 7, i32 %42)
  %44 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %3, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cl_assert_equal_i(i32 4, i32 %45)
  %47 = call i32 @memset(%struct.treewalk_skip_data* %3, i32 0, i32 24)
  %48 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %48, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @GIT_TREEWALK_PRE, align 4
  %51 = load i32, i32* @treewalk_skip_de_cb, align 4
  %52 = call i32 @git_tree_walk(i32* %49, i32 %50, i32 %51, %struct.treewalk_skip_data* %3)
  %53 = call i32 @cl_assert_equal_i(i32 -1, i32 %52)
  %54 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %3, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cl_assert_equal_i(i32 7, i32 %55)
  %57 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %3, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @cl_assert_equal_i(i32 4, i32 %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @git_tree_free(i32* %60)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @memset(%struct.treewalk_skip_data*, i32, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_tree_walk(i32*, i32, i32, %struct.treewalk_skip_data*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
