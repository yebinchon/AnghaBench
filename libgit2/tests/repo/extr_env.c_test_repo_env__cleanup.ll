; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_env.c_test_repo_env__cleanup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_env.c_test_repo_env__cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"peeled.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_env__cleanup() #0 {
  %1 = call i32 (...) @cl_git_sandbox_cleanup()
  %2 = call i64 @git_path_isdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %6 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = call i64 @git_path_isdir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %12 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = call i64 @git_path_isdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %18 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = call i32 (...) @clear_git_env()
  ret void
}

declare dso_local i32 @cl_git_sandbox_cleanup(...) #1

declare dso_local i64 @git_path_isdir(i8*) #1

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #1

declare dso_local i32 @clear_git_env(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
