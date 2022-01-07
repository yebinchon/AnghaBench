; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_setup.c_test_rebase_setup__merge_onto_upstream_and_branch_by_id.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_setup.c_test_rebase_setup__merge_onto_upstream_and_branch_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_NONE = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"refs/heads/beef\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"f87d14a4a236582a0278a916340a793714256864\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"d616d97082eb7bb2dc6f180a7cca940993b7a56f\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"d616d97082eb7bb2dc6f180a7cca940993b7a56f\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"rebase/.git/ORIG_HEAD\00", align 1
@GIT_REPOSITORY_STATE_REBASE_MERGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"rebase/.git/rebase-merge/cmt.1\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"rebase/.git/rebase-merge/end\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"rebase/.git/rebase-merge/onto\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"rebase/.git/rebase-merge/onto_name\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"rebase/.git/rebase-merge/orig-head\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_setup__merge_onto_upstream_and_branch_by_id() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %13 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @GIT_REPOSITORY_STATE_NONE, align 4
  %16 = load i32, i32* @repo, align 4
  %17 = call i32 @git_repository_state(i32 %16)
  %18 = call i32 @cl_assert_equal_i(i32 %15, i32 %17)
  %19 = load i32, i32* @repo, align 4
  %20 = call i32 @git_repository_set_head(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @repo, align 4
  %23 = call i32 @git_checkout_head(i32 %22, %struct.TYPE_4__* %11)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32, i32* @repo, align 4
  %32 = call i32 @git_annotated_commit_lookup(i32** %5, i32 %31, i32* %2)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @repo, align 4
  %35 = call i32 @git_annotated_commit_lookup(i32** %6, i32 %34, i32* %3)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32, i32* @repo, align 4
  %38 = call i32 @git_annotated_commit_lookup(i32** %7, i32 %37, i32* %4)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32, i32* @repo, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @git_rebase_init(i32** %1, i32 %40, i32* %41, i32* %42, i32* %43, i32* null)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = call i32 @git_oid_fromstr(i32* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @repo, align 4
  %48 = call i32 @git_repository_head(i32** %8, i32 %47)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %52 = call i32 @git_reference_peel(i32** %9, i32* %50, i32 %51)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @git_commit_id(i32* %54)
  %56 = call i32 @cl_assert_equal_oid(i32* %10, i32 %55)
  %57 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* @GIT_REPOSITORY_STATE_REBASE_MERGE, align 4
  %59 = load i32, i32* @repo, align 4
  %60 = call i32 @git_repository_state(i32 %59)
  %61 = call i32 @cl_assert_equal_i(i32 %58, i32 %60)
  %62 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %63 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %64 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %65 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %66 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @git_commit_free(i32* %67)
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @git_reference_free(i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @git_annotated_commit_free(i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @git_annotated_commit_free(i32* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @git_annotated_commit_free(i32* %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @git_rebase_free(i32* %77)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_repository_state(i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_set_head(i32, i8*) #2

declare dso_local i32 @git_checkout_head(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_annotated_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @git_repository_head(i32**, i32) #2

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #2

declare dso_local i32 @git_commit_id(i32*) #2

declare dso_local i32 @cl_assert_equal_file(i8*, i32, i8*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

declare dso_local i32 @git_rebase_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
