; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_unicode.c_test_refs_unicode__create_and_lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_unicode.c_test_refs_unicode__create_and_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"refs/heads/\C3\85ngstr\C3\B6m\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@repo = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@REFNAME_DECOMPOSED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_unicode__create_and_lookup() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %7 = load i32*, i32** @repo, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @git_reference_lookup(i32** %1, i32* %7, i8* %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** @repo, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_reference_target(i32* %13)
  %15 = call i32 @git_reference_create(i32** %2, i32* %11, i8* %12, i32 %14, i32 0, i32* null)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @git_reference_name(i32* %18)
  %20 = call i32 @cl_assert_equal_s(i8* %17, i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_reference_free(i32* %21)
  %23 = call i32 @git_repository_open(i32** %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @git_reference_lookup(i32** %3, i32* %25, i8* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @git_reference_target(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_reference_target(i32* %31)
  %33 = call i32 @cl_assert_equal_oid(i32 %30, i32 %32)
  %34 = load i8*, i8** %5, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @git_reference_name(i32* %35)
  %37 = call i32 @cl_assert_equal_s(i8* %34, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @git_reference_free(i32* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_reference_free(i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @git_repository_free(i32* %42)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #1

declare dso_local i32 @git_reference_create(i32**, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_reference_name(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @cl_assert_equal_oid(i32, i32) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
