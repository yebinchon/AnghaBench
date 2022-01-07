; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_signature.c_test_commit_signature__angle_brackets_in_email_are_not_supported.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_signature.c_test_commit_signature__angle_brackets_in_email_are_not_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Phil Haack\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c">phil@haack\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"phil@>haack\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"<phil@haack>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_signature__angle_brackets_in_email_are_not_supported() #0 {
  %1 = call i32 @try_build_signature(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1234567890, i32 60)
  %2 = call i32 @cl_git_fail(i32 %1)
  %3 = call i32 @try_build_signature(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 1234567890, i32 60)
  %4 = call i32 @cl_git_fail(i32 %3)
  %5 = call i32 @try_build_signature(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 1234567890, i32 60)
  %6 = call i32 @cl_git_fail(i32 %5)
  ret void
}

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @try_build_signature(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
