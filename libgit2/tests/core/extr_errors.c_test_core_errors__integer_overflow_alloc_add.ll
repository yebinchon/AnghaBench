; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_errors.c_test_core_errors__integer_overflow_alloc_add.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_errors.c_test_core_errors__integer_overflow_alloc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@SIZE_MAX = common dso_local global i32 0, align 4
@GIT_ERROR_NOMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_errors__integer_overflow_alloc_add() #0 {
  %1 = call i32 @test_arraysize_add(i32 10, i32 10)
  %2 = call i32 @cl_git_pass(i32 %1)
  %3 = call i32 @test_arraysize_add(i32 1000, i32 1000)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @SIZE_MAX, align 4
  %6 = sub nsw i32 %5, 10
  %7 = call i32 @test_arraysize_add(i32 %6, i32 10)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @SIZE_MAX, align 4
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @test_arraysize_multiply(i32 %10, i32 2)
  %12 = call i32 @cl_git_fail(i32 %11)
  %13 = load i32, i32* @SIZE_MAX, align 4
  %14 = load i32, i32* @SIZE_MAX, align 4
  %15 = call i32 @test_arraysize_multiply(i32 %13, i32 %14)
  %16 = call i32 @cl_git_fail(i32 %15)
  %17 = load i32, i32* @GIT_ERROR_NOMEMORY, align 4
  %18 = call %struct.TYPE_2__* (...) @git_error_last()
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cl_assert_equal_i(i32 %17, i32 %20)
  %22 = call %struct.TYPE_2__* (...) @git_error_last()
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @test_arraysize_add(i32, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @test_arraysize_multiply(i32, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local %struct.TYPE_2__* @git_error_last(...) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
