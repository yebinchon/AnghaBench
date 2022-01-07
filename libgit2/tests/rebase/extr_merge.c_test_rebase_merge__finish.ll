; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__finish.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"refs/heads/gravy\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"refs/heads/veal\00", align 1
@signature = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_REFERENCE_SYMBOLIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"rebase finished: returning to refs/heads/gravy\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"rebase finished: refs/heads/gravy onto f87d14a4a236582a0278a916340a793714256864\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_merge__finish() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = load i32, i32* @repo, align 4
  %13 = call i32 @git_reference_lookup(i32** %2, i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @repo, align 4
  %16 = call i32 @git_reference_lookup(i32** %3, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %18, i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @repo, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_annotated_commit_from_ref(i32** %6, i32 %22, i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @repo, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @git_rebase_init(i32** %1, i32 %26, i32* %27, i32* %28, i32* null, i32* null)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_rebase_next(i32** %7, i32* %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = load i32, i32* @signature, align 4
  %36 = call i32 @git_rebase_commit(i32* %8, i32* %34, i32* null, i32 %35, i32* null, i32* null)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @git_rebase_next(i32** %7, i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = call i32 @cl_git_fail(i32 %39)
  %41 = load i32, i32* @GIT_ITEROVER, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @cl_assert_equal_i(i32 %41, i32 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = load i32, i32* @signature, align 4
  %46 = call i32 @git_rebase_finish(i32* %44, i32 %45)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32, i32* @GIT_REPOSITORY_STATE_NONE, align 4
  %49 = load i32, i32* @repo, align 4
  %50 = call i32 @git_repository_state(i32 %49)
  %51 = call i32 @cl_assert_equal_i(i32 %48, i32 %50)
  %52 = load i32, i32* @repo, align 4
  %53 = call i32 @git_reference_lookup(i32** %4, i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32, i32* @GIT_REFERENCE_SYMBOLIC, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @git_reference_type(i32* %56)
  %58 = call i32 @cl_assert_equal_i(i32 %55, i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @git_reference_symbolic_target(i32* %59)
  %61 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @repo, align 4
  %63 = call i32 @git_reflog_read(i32** %9, i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = call i32* @git_reflog_entry_byindex(i32* %65, i32 0)
  store i32* %66, i32** %10, align 8
  %67 = call i32 @cl_assert(i32* %66)
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @git_reflog_entry_id_old(i32* %68)
  %70 = call i32 @cl_assert_equal_oid(i32* %8, i32 %69)
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @git_reflog_entry_id_new(i32* %71)
  %73 = call i32 @cl_assert_equal_oid(i32* %8, i32 %72)
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @git_reflog_entry_message(i32* %74)
  %76 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @git_reflog_free(i32* %77)
  %79 = load i32, i32* @repo, align 4
  %80 = call i32 @git_reflog_read(i32** %9, i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %81 = call i32 @cl_git_pass(i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = call i32* @git_reflog_entry_byindex(i32* %82, i32 0)
  store i32* %83, i32** %10, align 8
  %84 = call i32 @cl_assert(i32* %83)
  %85 = load i32*, i32** %5, align 8
  %86 = call i32* @git_annotated_commit_id(i32* %85)
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @git_reflog_entry_id_old(i32* %87)
  %89 = call i32 @cl_assert_equal_oid(i32* %86, i32 %88)
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @git_reflog_entry_id_new(i32* %90)
  %92 = call i32 @cl_assert_equal_oid(i32* %8, i32 %91)
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @git_reflog_entry_message(i32* %93)
  %95 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @git_reflog_free(i32* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @git_annotated_commit_free(i32* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @git_annotated_commit_free(i32* %100)
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @git_reference_free(i32* %102)
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @git_reference_free(i32* %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @git_reference_free(i32* %106)
  %108 = load i32*, i32** %1, align 8
  %109 = call i32 @git_rebase_free(i32* %108)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #1

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_rebase_next(i32**, i32*) #1

declare dso_local i32 @git_rebase_commit(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_rebase_finish(i32*, i32) #1

declare dso_local i32 @git_repository_state(i32) #1

declare dso_local i32 @git_reference_type(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_reference_symbolic_target(i32*) #1

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32* @git_reflog_entry_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_reflog_entry_id_old(i32*) #1

declare dso_local i32 @git_reflog_entry_id_new(i32*) #1

declare dso_local i32 @git_reflog_entry_message(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

declare dso_local i32* @git_annotated_commit_id(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_rebase_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
