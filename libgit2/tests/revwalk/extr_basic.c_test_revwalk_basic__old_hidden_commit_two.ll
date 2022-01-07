; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__old_hidden_commit_two.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__old_hidden_commit_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"bd758010071961f28336333bc41e9c64c9a64866\00", align 1
@_walk = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"b91e763008b10db366442469339f90a2b8400d0a\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_basic__old_hidden_commit_two() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @revwalk_basic_setup_walk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @_walk, align 4
  %8 = call i32 @git_revwalk_push(i32 %7, i32* %1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @_walk, align 4
  %13 = call i32 @git_revwalk_hide(i32 %12, i32* %2)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @_walk, align 4
  %16 = call i32 @git_revwalk_next(i32* %3, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 @git_oid_streq(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = load i32, i32* @GIT_ITEROVER, align 4
  %24 = load i32, i32* @_walk, align 4
  %25 = call i32 @git_revwalk_next(i32* %3, i32 %24)
  %26 = call i32 @cl_git_fail_with(i32 %23, i32 %25)
  ret void
}

declare dso_local i32 @revwalk_basic_setup_walk(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_revwalk_push(i32, i32*) #1

declare dso_local i32 @git_revwalk_hide(i32, i32*) #1

declare dso_local i32 @git_revwalk_next(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_oid_streq(i32*, i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
