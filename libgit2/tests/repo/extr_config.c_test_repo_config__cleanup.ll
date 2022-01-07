; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_config.c_test_repo_config__cleanup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_config.c_test_repo_config__cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_config__cleanup() #0 {
  %1 = call i32 (...) @cl_sandbox_set_search_path_defaults()
  %2 = call i32 @git_buf_dispose(i32* @path)
  %3 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %4 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @git_path_isdir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @cl_assert(i32 %9)
  %11 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_sandbox_set_search_path_defaults(...) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_isdir(i8*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
