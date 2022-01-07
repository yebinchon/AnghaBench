; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_diffiter.c_test_diff_diffiter__create.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_diffiter.c_test_diff_diffiter__create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"attr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_diffiter__create() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_diff_index_to_workdir(i32** %2, i32* %7, i32* null, i32* null)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @git_diff_num_deltas(i32* %10)
  store i64 %11, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %24, %0
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32*, i32** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32* @git_diff_get_delta(i32* %17, i64 %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @cl_assert(i32 %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %12

27:                                               ; preds = %12
  %28 = load i32*, i32** %2, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32* @git_diff_get_delta(i32* %28, i64 %29)
  %31 = icmp ne i32* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_diff_free(i32* %35)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, i32*) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32* @git_diff_get_delta(i32*, i64) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
