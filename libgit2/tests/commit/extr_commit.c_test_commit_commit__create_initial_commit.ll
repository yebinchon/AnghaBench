; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_commit.c_test_commit_commit__create_initial_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_commit.c_test_commit_commit__create_initial_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"944c0f6e4dfa41595e6eb3ceecdb14f50fe18162\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"alice\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"alice@example.com\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"refs/heads/foo/bar\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"initial commit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_commit__create_initial_commit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @_repo, align 4
  %8 = call i32 @git_commit_lookup(i32** %3, i32 %7, i32* %1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @_repo, align 4
  %12 = call i32 @git_tree_lookup(i32** %2, i32 %11, i32* %1)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_signature_now(i32** %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @_repo, align 4
  %17 = call i32 @git_reference_lookup(i32** %5, i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 @cl_git_fail(i32 %17)
  %19 = load i32, i32* @_repo, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_commit_create(i32* %1, i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %20, i32* %21, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %22, i32 0, i32* null)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @_repo, align 4
  %26 = call i32 @git_reference_lookup(i32** %5, i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @git_reference_target(i32* %28)
  %30 = call i32 @cl_assert_equal_oid(i32* %1, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @git_tree_free(i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @git_commit_free(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @git_signature_free(i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @git_reference_free(i32* %37)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_commit_create(i32*, i32, i8*, i32*, i32*, i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
