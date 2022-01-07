; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_transactions.c_test_refs_transactions__single_ref_delete.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_transactions.c_test_refs_transactions__single_ref_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_tx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_transactions__single_ref_delete() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @g_tx, align 4
  %3 = call i32 @git_transaction_lock_ref(i32 %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @g_tx, align 4
  %6 = call i32 @git_transaction_remove(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @g_tx, align 4
  %9 = call i32 @git_transaction_commit(i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @GIT_ENOTFOUND, align 4
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_reference_lookup(i32** %1, i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @cl_git_fail_with(i32 %11, i32 %13)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_transaction_lock_ref(i32, i8*) #1

declare dso_local i32 @git_transaction_remove(i32, i8*) #1

declare dso_local i32 @git_transaction_commit(i32) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
