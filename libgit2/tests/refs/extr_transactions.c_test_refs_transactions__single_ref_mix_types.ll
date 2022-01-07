; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_transactions.c_test_refs_transactions__single_ref_mix_types.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_transactions.c_test_refs_transactions__single_ref_mix_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@g_tx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"refs/heads/foo\00", align 1
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_transactions__single_ref_mix_types() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @g_tx, align 4
  %5 = call i32 @git_transaction_lock_ref(i32 %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @g_tx, align 4
  %8 = call i32 @git_transaction_lock_ref(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @g_tx, align 4
  %11 = call i32 @git_transaction_set_symbolic_target(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @g_tx, align 4
  %14 = call i32 @git_transaction_set_target(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %2, i32* null, i32* null)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @g_tx, align 4
  %17 = call i32 @git_transaction_commit(i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @g_repo, align 4
  %20 = call i32 @git_reference_lookup(i32** %1, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_reference_symbolic_target(i32* %22)
  %24 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_reference_free(i32* %25)
  %27 = load i32, i32* @g_repo, align 4
  %28 = call i32 @git_reference_lookup(i32** %1, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_reference_target(i32* %30)
  %32 = call i32 @git_oid_cmp(i32* %2, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_reference_free(i32* %37)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_transaction_lock_ref(i32, i8*) #1

declare dso_local i32 @git_transaction_set_symbolic_target(i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @git_transaction_set_target(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @git_transaction_commit(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_reference_symbolic_target(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_oid_cmp(i32*, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
