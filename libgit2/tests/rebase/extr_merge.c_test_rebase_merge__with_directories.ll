; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__with_directories.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__with_directories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"a4d6d9c3d57308fd8e320cf2525bae8f1adafa57\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"refs/heads/deep_gravy\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"refs/heads/veal\00", align 1
@signature = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_merge__with_directories() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = call i32 @git_oid_fromstr(i32* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @repo, align 4
  %12 = call i32 @git_reference_lookup(i32** %2, i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @repo, align 4
  %15 = call i32 @git_reference_lookup(i32** %3, i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @repo, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @git_annotated_commit_from_ref(i32** %4, i32 %17, i32* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @repo, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %21, i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @repo, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @git_rebase_init(i32** %1, i32 %25, i32* %26, i32* %27, i32* null, i32* null)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_rebase_next(i32** %6, i32* %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @signature, align 4
  %35 = call i32 @git_rebase_commit(i32* %7, i32* %33, i32* null, i32 %34, i32* null, i32* null)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_rebase_next(i32** %6, i32* %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @signature, align 4
  %42 = call i32 @git_rebase_commit(i32* %7, i32* %40, i32* null, i32 %41, i32* null, i32* null)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32, i32* @GIT_ITEROVER, align 4
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_rebase_next(i32** %6, i32* %45)
  %47 = call i32 @cl_git_fail_with(i32 %44, i32 %46)
  %48 = load i32, i32* @repo, align 4
  %49 = call i32 @git_commit_lookup(i32** %9, i32 %48, i32* %7)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @git_commit_tree_id(i32* %51)
  %53 = call i32 @cl_assert_equal_oid(i32* %8, i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @git_commit_free(i32* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @git_annotated_commit_free(i32* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @git_annotated_commit_free(i32* %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @git_reference_free(i32* %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @git_reference_free(i32* %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @git_rebase_free(i32* %64)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #1

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_rebase_next(i32**, i32*) #1

declare dso_local i32 @git_rebase_commit(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_commit_tree_id(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_rebase_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
