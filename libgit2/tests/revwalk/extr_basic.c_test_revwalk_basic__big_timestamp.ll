; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__big_timestamp.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__big_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@_repo = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"Joe\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"joe@example.com\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"some message\00", align 1
@_walk = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_basic__big_timestamp() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @revwalk_basic_setup_walk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @_repo, align 4
  %9 = call i32 @git_repository_head(i32** %1, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %13 = call i32 @git_reference_peel(i32** %2, i32* %11, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @git_signature_new(i32** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 2399662595, i32 0)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @git_commit_tree(i32** %4, i32* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @_repo, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @git_commit_create(i32* %5, i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %21, i32* %22, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %23, i32 1, i32** %2)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @_walk, align 4
  %27 = call i32 @git_revwalk_push_head(i32 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  br label %29

29:                                               ; preds = %33, %0
  %30 = load i32, i32* @_walk, align 4
  %31 = call i32 @git_revwalk_next(i32* %5, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %29

34:                                               ; preds = %29
  %35 = load i32, i32* @GIT_ITEROVER, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @cl_assert_equal_i(i32 %35, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @git_tree_free(i32* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_commit_free(i32* %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @git_reference_free(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_signature_free(i32* %44)
  ret void
}

declare dso_local i32 @revwalk_basic_setup_walk(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_head(i32**, i32) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_signature_new(i32**, i8*, i8*, i64, i32) #1

declare dso_local i32 @git_commit_tree(i32**, i32*) #1

declare dso_local i32 @git_commit_create(i32*, i32, i8*, i32*, i32*, i32*, i8*, i32*, i32, i32**) #1

declare dso_local i32 @git_revwalk_push_head(i32) #1

declare dso_local i32 @git_revwalk_next(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
