; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_strtol.c_test_core_strtol__buffer_length_with_leading_ws_truncates.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_strtol.c_test_core_strtol__buffer_length_with_leading_ws_truncates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c" 1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" 11\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_strtol__buffer_length_with_leading_ws_truncates() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @git__strntol64(i32* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 1, i32* null, i32 10)
  %3 = call i32 @cl_git_fail(i32 %2)
  %4 = call i32 @git__strntol64(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 2, i32* null, i32 10)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @cl_assert_equal_i(i32 %6, i32 1)
  ret void
}

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git__strntol64(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
