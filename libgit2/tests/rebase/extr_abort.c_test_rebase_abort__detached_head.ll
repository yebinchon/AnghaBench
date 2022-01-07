; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_abort.c_test_rebase_abort__detached_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_abort.c_test_rebase_abort__detached_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"b146bd7608eac53d9bf9e1a6963543588b555c64\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Rebaser\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"rebaser@example.com\00", align 1
@GIT_REPOSITORY_STATE_REBASE_MERGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_abort__detached_head() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @repo, align 4
  %10 = call i32 @git_annotated_commit_lookup(i32** %5, i32 %9, i32* %2)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @repo, align 4
  %13 = call i32 @git_annotated_commit_lookup(i32** %6, i32 %12, i32* %3)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @git_signature_new(i32** %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1404157834, i32 -400)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @repo, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @git_rebase_init(i32** %1, i32 %17, i32* %18, i32* null, i32* %19, i32* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @GIT_REPOSITORY_STATE_REBASE_MERGE, align 4
  %23 = load i32, i32* @repo, align 4
  %24 = call i32 @git_repository_state(i32 %23)
  %25 = call i32 @cl_assert_equal_i(i32 %22, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @test_abort(i32* %26, i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @git_signature_free(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @git_annotated_commit_free(i32* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @git_annotated_commit_free(i32* %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @git_rebase_free(i32* %35)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_annotated_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_signature_new(i32**, i8*, i8*, i32, i32) #1

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_repository_state(i32) #1

declare dso_local i32 @test_abort(i32*, i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_rebase_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
