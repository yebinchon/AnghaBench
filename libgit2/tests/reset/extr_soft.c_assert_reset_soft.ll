; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_soft.c_assert_reset_soft.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_soft.c_assert_reset_soft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@KNOWN_COMMIT_IN_BARE_REPO = common dso_local global i32 0, align 4
@target = common dso_local global i32 0, align 4
@GIT_RESET_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @assert_reset_soft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_reset_soft(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @repo, align 4
  %5 = call i32 @git_reference_name_to_id(i32* %3, i32 %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @KNOWN_COMMIT_IN_BARE_REPO, align 4
  %8 = call i32 @git_oid_streq(i32* %3, i32 %7)
  %9 = call i32 @cl_git_fail(i32 %8)
  %10 = load i32, i32* @repo, align 4
  %11 = load i32, i32* @KNOWN_COMMIT_IN_BARE_REPO, align 4
  %12 = call i32 @git_revparse_single(i32* @target, i32 %10, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @repo, align 4
  %15 = call i32 @git_repository_head_detached(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32, i32* @repo, align 4
  %21 = load i32, i32* @target, align 4
  %22 = load i32, i32* @GIT_RESET_SOFT, align 4
  %23 = call i32 @git_reset(i32 %20, i32 %21, i32 %22, i32* null)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @repo, align 4
  %26 = call i32 @git_repository_head_detached(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  %31 = load i32, i32* @repo, align 4
  %32 = call i32 @git_reference_name_to_id(i32* %3, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @KNOWN_COMMIT_IN_BARE_REPO, align 4
  %35 = call i32 @git_oid_streq(i32* %3, i32 %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_oid_streq(i32*, i32) #1

declare dso_local i32 @git_revparse_single(i32*, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_repository_head_detached(i32) #1

declare dso_local i32 @git_reset(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
