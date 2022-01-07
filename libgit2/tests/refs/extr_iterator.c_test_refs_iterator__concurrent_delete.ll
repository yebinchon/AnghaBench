; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_iterator.c_test_refs_iterator__concurrent_delete.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_iterator.c_test_refs_iterator__concurrent_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_iterator__concurrent_delete() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %6 = call i32 (...) @cl_git_sandbox_cleanup()
  %7 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @repo, align 4
  %8 = load i32, i32* @repo, align 4
  %9 = call i32 @git_reference_iterator_new(i32** %1, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  br label %11

11:                                               ; preds = %15, %0
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_reference_next_name(i8** %4, i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %2, align 8
  br label %11

18:                                               ; preds = %11
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_reference_iterator_free(i32* %19)
  %21 = load i64, i64* @GIT_ITEROVER, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = call i32 @cl_assert_equal_i(i64 %21, i64 %23)
  %25 = load i32, i32* @repo, align 4
  %26 = call i32 @git_reference_iterator_new(i32** %1, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  br label %28

28:                                               ; preds = %32, %18
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @git_reference_next_name(i8** %4, i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* @repo, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @git_reference_remove(i32 %33, i8* %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %3, align 8
  br label %28

39:                                               ; preds = %28
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_reference_iterator_free(i32* %40)
  %42 = load i64, i64* @GIT_ITEROVER, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @cl_assert_equal_i(i64 %42, i64 %44)
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @cl_assert_equal_i(i64 %46, i64 %47)
  ret void
}

declare dso_local i32 @cl_git_sandbox_cleanup(...) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_iterator_new(i32**, i32) #1

declare dso_local i32 @git_reference_next_name(i8**, i32*) #1

declare dso_local i32 @git_reference_iterator_free(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i64, i64) #1

declare dso_local i32 @git_reference_remove(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
