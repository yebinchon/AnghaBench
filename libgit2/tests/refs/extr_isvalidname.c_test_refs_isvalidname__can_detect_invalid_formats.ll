; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_isvalidname.c_test_refs_isvalidname__can_detect_invalid_formats.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_isvalidname.c_test_refs_isvalidname__can_detect_invalid_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"refs/tags/0.17.0^{}\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"TWO/LEVELS\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ONE.LEVEL\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"HEAD/\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"NO_TRAILING_UNDERSCORE_\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"_NO_LEADING_UNDERSCORE\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"HEAD/aa\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"lower_case\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"/stupid/name/master\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"refs/heads/sub.lock/webmatrix\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_isvalidname__can_detect_invalid_formats() #0 {
  %1 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @cl_assert_equal_i(i32 0, i32 %1)
  %3 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @cl_assert_equal_i(i32 0, i32 %3)
  %5 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 @cl_assert_equal_i(i32 0, i32 %5)
  %7 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 @cl_assert_equal_i(i32 0, i32 %7)
  %9 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @cl_assert_equal_i(i32 0, i32 %9)
  %11 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @cl_assert_equal_i(i32 0, i32 %11)
  %13 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 @cl_assert_equal_i(i32 0, i32 %13)
  %15 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %16 = call i32 @cl_assert_equal_i(i32 0, i32 %15)
  %17 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %18 = call i32 @cl_assert_equal_i(i32 0, i32 %17)
  %19 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %20 = call i32 @cl_assert_equal_i(i32 0, i32 %19)
  %21 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %22 = call i32 @cl_assert_equal_i(i32 0, i32 %21)
  %23 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %24 = call i32 @cl_assert_equal_i(i32 0, i32 %23)
  %25 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %26 = call i32 @cl_assert_equal_i(i32 0, i32 %25)
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_reference_is_valid_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
