; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_setup.c_test_rebase_setup__merge_root.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_setup.c_test_rebase_setup__merge_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_REPOSITORY_STATE_NONE = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"refs/heads/beef\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"b146bd7608eac53d9bf9e1a6963543588b555c64\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"rebase/.git/ORIG_HEAD\00", align 1
@GIT_REPOSITORY_STATE_REBASE_MERGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"da9c51a23d02d931a486f45ad18cda05cf5d2b94\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"rebase/.git/rebase-merge/cmt.1\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"8d1f13f93c4995760ac07d129246ac1ff64c0be9\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"rebase/.git/rebase-merge/cmt.2\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"3069cc907e6294623e5917ef6de663928c1febfb\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"rebase/.git/rebase-merge/cmt.3\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"588e5d2f04d49707fe4aab865e1deacaf7ef6787\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"rebase/.git/rebase-merge/cmt.4\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"rebase/.git/rebase-merge/cmt.5\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"5\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"rebase/.git/rebase-merge/end\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"rebase/.git/rebase-merge/onto\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"master\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"rebase/.git/rebase-merge/onto_name\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"rebase/.git/rebase-merge/orig-head\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_setup__merge_root() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @GIT_REPOSITORY_STATE_NONE, align 4
  %10 = load i32, i32* @repo, align 4
  %11 = call i32 @git_repository_state(i32 %10)
  %12 = call i32 @cl_assert_equal_i(i32 %9, i32 %11)
  %13 = load i32, i32* @repo, align 4
  %14 = call i32 @git_reference_lookup(i32** %2, i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @repo, align 4
  %17 = call i32 @git_reference_lookup(i32** %3, i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @repo, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @git_annotated_commit_from_ref(i32** %4, i32 %19, i32* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @repo, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %23, i32* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* @repo, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @git_rebase_init(i32** %1, i32 %27, i32* %28, i32* null, i32* %29, i32* null)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = call i32 @git_oid_fromstr(i32* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @repo, align 4
  %34 = call i32 @git_repository_head(i32** %6, i32 %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %38 = call i32 @git_reference_peel(i32** %7, i32* %36, i32 %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @git_commit_id(i32* %40)
  %42 = call i32 @cl_assert_equal_oid(i32* %8, i32 %41)
  %43 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* @GIT_REPOSITORY_STATE_REBASE_MERGE, align 4
  %45 = load i32, i32* @repo, align 4
  %46 = call i32 @git_repository_state(i32 %45)
  %47 = call i32 @cl_assert_equal_i(i32 %44, i32 %46)
  %48 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %49 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %50 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %51 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %52 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %53 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %54 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  %55 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0))
  %56 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0))
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @git_commit_free(i32* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @git_reference_free(i32* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @git_annotated_commit_free(i32* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @git_annotated_commit_free(i32* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @git_reference_free(i32* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @git_reference_free(i32* %67)
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @git_rebase_free(i32* %69)
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_repository_state(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #1

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_repository_head(i32**, i32) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_commit_id(i32*) #1

declare dso_local i32 @cl_assert_equal_file(i8*, i32, i8*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_rebase_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
