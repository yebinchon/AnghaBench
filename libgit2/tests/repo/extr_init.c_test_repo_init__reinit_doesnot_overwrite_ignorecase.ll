; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__reinit_doesnot_overwrite_ignorecase.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__reinit_doesnot_overwrite_ignorecase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cleanup_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not.overwrite.git\00", align 1
@_repo = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_init__reinit_doesnot_overwrite_ignorecase() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @cl_set_cleanup(i32* @cleanup_repository, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @git_repository_init(i32** @_repo, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 1)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** @_repo, align 8
  %7 = call i32 @git_repository_config(i32** %1, i32* %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_config_set_int32(i32* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 42)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_config_free(i32* %10)
  %12 = load i32*, i32** @_repo, align 8
  %13 = call i32 @git_repository_free(i32* %12)
  store i32* null, i32** @_repo, align 8
  %14 = call i32 @git_repository_init(i32** @_repo, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 1)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** @_repo, align 8
  %17 = call i32 @git_repository_config(i32** %1, i32* %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_config_get_int32(i32* %2, i32* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @cl_assert_equal_i(i32 42, i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_config_free(i32* %23)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_repository_config(i32**, i32*) #1

declare dso_local i32 @git_config_set_int32(i32*, i8*, i32) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @git_config_get_int32(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
