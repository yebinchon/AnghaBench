; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_errors.c_test_core_errors__integer_overflow_alloc_multiply.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_errors.c_test_core_errors__integer_overflow_alloc_multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@SIZE_MAX = common dso_local global i32 0, align 4
@GIT_ERROR_NOMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_errors__integer_overflow_alloc_multiply() #0 {
  %1 = call i32 @test_arraysize_multiply(i32 10, i32 10)
  %2 = call i32 @cl_git_pass(i32 %1)
  %3 = call i32 @test_arraysize_multiply(i32 1000, i32 1000)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @SIZE_MAX, align 4
  %6 = sext i32 %5 to i64
  %7 = udiv i64 %6, 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @test_arraysize_multiply(i32 %8, i32 8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @test_arraysize_multiply(i32 0, i32 10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @test_arraysize_multiply(i32 10, i32 0)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @SIZE_MAX, align 4
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @test_arraysize_multiply(i32 %16, i32 8)
  %18 = call i32 @cl_git_fail(i32 %17)
  %19 = load i32, i32* @SIZE_MAX, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 8
  %22 = add i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = call i32 @test_arraysize_multiply(i32 %23, i32 8)
  %25 = call i32 @cl_git_fail(i32 %24)
  %26 = load i32, i32* @GIT_ERROR_NOMEMORY, align 4
  %27 = call %struct.TYPE_2__* (...) @git_error_last()
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cl_assert_equal_i(i32 %26, i32 %29)
  %31 = call %struct.TYPE_2__* (...) @git_error_last()
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %33)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @test_arraysize_multiply(i32, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local %struct.TYPE_2__* @git_error_last(...) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
