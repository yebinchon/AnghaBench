; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_normalize.c_test_refs_normalize__buffer_has_to_be_big_enough_to_hold_the_normalized_version.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_normalize.c_test_refs_normalize__buffer_has_to_be_big_enough_to_hold_the_normalized_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"refs//heads///long///name\00", align 1
@GIT_REFERENCE_FORMAT_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_normalize__buffer_has_to_be_big_enough_to_hold_the_normalized_version() #0 {
  %1 = alloca [21 x i8], align 16
  %2 = getelementptr inbounds [21 x i8], [21 x i8]* %1, i64 0, i64 0
  %3 = load i32, i32* @GIT_REFERENCE_FORMAT_NORMAL, align 4
  %4 = call i32 @git_reference_normalize_name(i8* %2, i32 21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = getelementptr inbounds [21 x i8], [21 x i8]* %1, i64 0, i64 0
  %7 = load i32, i32* @GIT_REFERENCE_FORMAT_NORMAL, align 4
  %8 = call i32 @git_reference_normalize_name(i8* %6, i32 20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 @cl_git_fail(i32 %8)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_normalize_name(i8*, i32, i8*, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
