; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_simplify.c_test_revwalk_simplify__first_parent.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_simplify.c_test_revwalk_simplify__first_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expected_str = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@commit_head = common dso_local global i32 0, align 4
@GIT_SORT_TOPOLOGICAL = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_simplify__first_parent() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %20, %0
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %12
  %14 = load i32*, i32** @expected_str, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @git_oid_fromstr(i32* %13, i32 %18)
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %7

23:                                               ; preds = %7
  %24 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %1, align 8
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_revwalk_new(i32** %2, i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @commit_head, align 4
  %29 = call i32 @git_oid_fromstr(i32* %3, i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_revwalk_push(i32* %30, i32* %3)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @GIT_SORT_TOPOLOGICAL, align 4
  %35 = call i32 @git_revwalk_sorting(i32* %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @git_revwalk_simplify_first_parent(i32* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %42, %23
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @git_revwalk_next(i32* %3, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %44
  %46 = call i32 @cl_assert_equal_oid(i32* %45, i32* %3)
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %38

49:                                               ; preds = %38
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @cl_assert_equal_i(i32 %50, i32 4)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @GIT_ITEROVER, align 4
  %54 = call i32 @cl_assert_equal_i(i32 %52, i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @git_revwalk_free(i32* %55)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revwalk_new(i32**, i32*) #1

declare dso_local i32 @git_revwalk_push(i32*, i32*) #1

declare dso_local i32 @git_revwalk_sorting(i32*, i32) #1

declare dso_local i32 @git_revwalk_simplify_first_parent(i32*) #1

declare dso_local i32 @git_revwalk_next(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_revwalk_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
