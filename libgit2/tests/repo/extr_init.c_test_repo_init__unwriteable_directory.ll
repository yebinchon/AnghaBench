; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__unwriteable_directory.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__unwriteable_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"unwriteable\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unwriteable/repo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_init__unwriteable_directory() #0 {
  %1 = alloca i32*, align 8
  %2 = call i64 (...) @geteuid()
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @clar__skip()
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i32 @p_mkdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 292)
  %8 = call i32 @cl_must_pass(i32 %7)
  %9 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %10 = call i32 @cl_git_fail(i32 %9)
  %11 = call i32 @p_rmdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @cl_must_pass(i32 %11)
  ret void
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @clar__skip(...) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @p_rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
