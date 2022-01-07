; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_isvalidname.c_test_refs_isvalidname__wont_hopefully_choke_on_valid_formats.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_isvalidname.c_test_refs_isvalidname__wont_hopefully_choke_on_valid_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"refs/tags/0.17.0\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"refs/LEVELS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ONE_LEVEL\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"refs/stash\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"refs/remotes/origin/bim_with_3d@11296\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"refs/master{yesterday\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"refs/master}yesterday\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"refs/master{yesterday}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_isvalidname__wont_hopefully_choke_on_valid_formats() #0 {
  %1 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @cl_assert_equal_i(i32 1, i32 %1)
  %3 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @cl_assert_equal_i(i32 1, i32 %3)
  %5 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 @cl_assert_equal_i(i32 1, i32 %5)
  %7 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 @cl_assert_equal_i(i32 1, i32 %7)
  %9 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @cl_assert_equal_i(i32 1, i32 %9)
  %11 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @cl_assert_equal_i(i32 1, i32 %11)
  %13 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 @cl_assert_equal_i(i32 1, i32 %13)
  %15 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %16 = call i32 @cl_assert_equal_i(i32 1, i32 %15)
  %17 = call i32 @git_reference_is_valid_name(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %18 = call i32 @cl_assert_equal_i(i32 1, i32 %17)
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
