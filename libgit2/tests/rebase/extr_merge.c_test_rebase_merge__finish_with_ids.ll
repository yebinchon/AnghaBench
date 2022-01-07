; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__finish_with_ids.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__finish_with_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"d616d97082eb7bb2dc6f180a7cca940993b7a56f\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"f87d14a4a236582a0278a916340a793714256864\00", align 1
@repo = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_REFERENCE_DIRECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"rebase: Modification 3 to gravy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_merge__finish_with_ids() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @repo, align 4
  %17 = call i32 @git_annotated_commit_lookup(i32** %5, i32 %16, i32* %3)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @repo, align 4
  %20 = call i32 @git_annotated_commit_lookup(i32** %6, i32 %19, i32* %4)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @repo, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @git_rebase_init(i32** %1, i32 %22, i32* %23, i32* %24, i32* null, i32* null)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_rebase_next(i32** %7, i32* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* @signature, align 4
  %32 = call i32 @git_rebase_commit(i32* %8, i32* %30, i32* null, i32 %31, i32* null, i32* null)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_rebase_next(i32** %7, i32* %34)
  store i32 %35, i32* %11, align 4
  %36 = call i32 @cl_git_fail(i32 %35)
  %37 = load i32, i32* @GIT_ITEROVER, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @cl_assert_equal_i(i32 %37, i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @signature, align 4
  %42 = call i32 @git_rebase_finish(i32* %40, i32 %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32, i32* @GIT_REPOSITORY_STATE_NONE, align 4
  %45 = load i32, i32* @repo, align 4
  %46 = call i32 @git_repository_state(i32 %45)
  %47 = call i32 @cl_assert_equal_i(i32 %44, i32 %46)
  %48 = load i32, i32* @repo, align 4
  %49 = call i32 @git_reference_lookup(i32** %2, i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32, i32* @GIT_REFERENCE_DIRECT, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @git_reference_type(i32* %52)
  %54 = call i32 @cl_assert_equal_i(i32 %51, i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @git_reference_target(i32* %55)
  %57 = call i32 @cl_assert_equal_oid(i32* %8, i32 %56)
  %58 = load i32, i32* @repo, align 4
  %59 = call i32 @git_reflog_read(i32** %9, i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32* @git_reflog_entry_byindex(i32* %61, i32 0)
  store i32* %62, i32** %10, align 8
  %63 = call i32 @cl_assert(i32* %62)
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @git_reflog_entry_id_new(i32* %64)
  %66 = call i32 @cl_assert_equal_oid(i32* %8, i32 %65)
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @git_reflog_entry_message(i32* %67)
  %69 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @git_reflog_free(i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @git_annotated_commit_free(i32* %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @git_annotated_commit_free(i32* %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @git_reference_free(i32* %76)
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @git_rebase_free(i32* %78)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_annotated_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_rebase_next(i32**, i32*) #1

declare dso_local i32 @git_rebase_commit(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_rebase_finish(i32*, i32) #1

declare dso_local i32 @git_repository_state(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_reference_type(i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32* @git_reflog_entry_byindex(i32*, i32) #1

declare dso_local i32 @git_reflog_entry_id_new(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_reflog_entry_message(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_rebase_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
