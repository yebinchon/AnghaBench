; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_errors.c_test_core_errors__integer_overflow_sets_oom.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_errors.c_test_core_errors__integer_overflow_sets_oom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SIZE_MAX = common dso_local global i32 0, align 4
@GIT_ERROR_NOMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_errors__integer_overflow_sets_oom() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @git_error_clear()
  %3 = load i32, i32* @SIZE_MAX, align 4
  %4 = sub nsw i32 %3, 1
  %5 = call i32 @GIT_ADD_SIZET_OVERFLOW(i64* %1, i32 %4, i32 1)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = call %struct.TYPE_3__* (...) @git_error_last()
  %11 = call i32 @cl_assert_equal_p(i32* null, %struct.TYPE_3__* %10)
  %12 = call i32 (...) @git_error_clear()
  %13 = call i32 @GIT_ADD_SIZET_OVERFLOW(i64* %1, i32 42, i32 69)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  %18 = call %struct.TYPE_3__* (...) @git_error_last()
  %19 = call i32 @cl_assert_equal_p(i32* null, %struct.TYPE_3__* %18)
  %20 = call i32 (...) @git_error_clear()
  %21 = load i32, i32* @SIZE_MAX, align 4
  %22 = load i32, i32* @SIZE_MAX, align 4
  %23 = call i32 @GIT_ADD_SIZET_OVERFLOW(i64* %1, i32 %21, i32 %22)
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i32, i32* @GIT_ERROR_NOMEMORY, align 4
  %26 = call %struct.TYPE_3__* (...) @git_error_last()
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cl_assert_equal_i(i32 %25, i32 %28)
  %30 = call %struct.TYPE_3__* (...) @git_error_last()
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = call i32 (...) @git_error_clear()
  %35 = load i32, i32* @SIZE_MAX, align 4
  %36 = load i32, i32* @SIZE_MAX, align 4
  %37 = call i32 @GIT_ADD_SIZET_OVERFLOW(i64* %1, i32 %35, i32 %36)
  %38 = call i32 @cl_assert(i32 %37)
  %39 = load i32, i32* @GIT_ERROR_NOMEMORY, align 4
  %40 = call %struct.TYPE_3__* (...) @git_error_last()
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cl_assert_equal_i(i32 %39, i32 %42)
  %44 = call %struct.TYPE_3__* (...) @git_error_last()
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %46)
  ret void
}

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @GIT_ADD_SIZET_OVERFLOW(i64*, i32, i32) #1

declare dso_local i32 @cl_assert_equal_p(i32*, %struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @git_error_last(...) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
