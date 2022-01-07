; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_transactions.c_test_refs_transactions__error_on_locking_locked_ref.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_transactions.c_test_refs_transactions__error_on_locking_locked_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@GIT_ELOCKED = common dso_local global i32 0, align 4
@g_tx = common dso_local global i32* null, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_transactions__error_on_locking_locked_ref() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i8* @git_repository_path(i32 %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @git_repository_open(i32** %3, i8* %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @git_transaction_new(i32** %2, i32* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_transaction_lock_ref(i32* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @GIT_ELOCKED, align 4
  %19 = load i32*, i32** @g_tx, align 8
  %20 = call i32 @git_transaction_lock_ref(i32* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @cl_git_fail_with(i32 %18, i32 %20)
  %22 = load i32, i32* @GIT_ENOTFOUND, align 4
  %23 = load i32*, i32** @g_tx, align 8
  %24 = call i32 @git_transaction_set_target(i32* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %1, i32* null, i32* null)
  %25 = call i32 @cl_git_fail_with(i32 %22, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @git_transaction_free(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @git_repository_free(i32* %28)
  ret void
}

declare dso_local i8* @git_repository_path(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @git_transaction_new(i32**, i32*) #1

declare dso_local i32 @git_transaction_lock_ref(i32*, i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_transaction_set_target(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @git_transaction_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
