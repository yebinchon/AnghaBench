; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_config.c_test_repo_config__can_open_global_when_there_is_no_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_config.c_test_repo_config__can_open_global_when_there_is_no_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@GIT_OPT_SET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@path = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GIT_CONFIG_LEVEL_SYSTEM = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_XDG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test.set\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"42\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_config__can_open_global_when_there_is_no_file() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %5 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @path, i32 0, i32 0), align 4
  %7 = call i32 @git_libgit2_opts(i32 %4, i32 %5, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %10 = load i32, i32* @GIT_CONFIG_LEVEL_SYSTEM, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @path, i32 0, i32 0), align 4
  %12 = call i32 @git_libgit2_opts(i32 %9, i32 %10, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %15 = load i32, i32* @GIT_CONFIG_LEVEL_XDG, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @path, i32 0, i32 0), align 4
  %17 = call i32 @git_libgit2_opts(i32 %14, i32 %15, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @git_repository_open(i32** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_repository_config(i32** %2, i32* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %26 = call i32 @git_config_open_level(i32** %3, i32* %24, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @git_config_set_string(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_config_free(i32* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @git_config_free(i32* %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @git_repository_free(i32* %35)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_libgit2_opts(i32, i32, i32) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @git_repository_config(i32**, i32*) #1

declare dso_local i32 @git_config_open_level(i32**, i32*, i32) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
