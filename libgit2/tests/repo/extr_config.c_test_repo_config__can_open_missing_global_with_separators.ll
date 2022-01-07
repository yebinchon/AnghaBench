; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_config.c_test_repo_config__can_open_missing_global_with_separators.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_config.c_test_repo_config__can_open_missing_global_with_separators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@path = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@GIT_PATH_LIST_SEPARATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@GIT_OPT_SET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_SYSTEM = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_XDG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"test.set\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"42\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_config__can_open_missing_global_with_separators() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @GIT_PATH_LIST_SEPARATOR, align 4
  %5 = call i32 @git_buf_printf(%struct.TYPE_4__* @path, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %8 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @path, i32 0, i32 0), align 4
  %10 = call i32 @git_libgit2_opts(i32 %7, i32 %8, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %13 = load i32, i32* @GIT_CONFIG_LEVEL_SYSTEM, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @path, i32 0, i32 0), align 4
  %15 = call i32 @git_libgit2_opts(i32 %12, i32 %13, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %18 = load i32, i32* @GIT_CONFIG_LEVEL_XDG, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @path, i32 0, i32 0), align 4
  %20 = call i32 @git_libgit2_opts(i32 %17, i32 %18, i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @git_buf_dispose(%struct.TYPE_4__* @path)
  %23 = call i32 @git_repository_open(i32** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_repository_config(i32** %2, i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %30 = call i32 @git_config_open_level(i32** %3, i32* %28, i32 %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @git_config_set_string(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @git_config_free(i32* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @git_config_free(i32* %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_repository_free(i32* %39)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_buf_printf(%struct.TYPE_4__*, i8*, i32, i8*) #1

declare dso_local i32 @git_libgit2_opts(i32, i32, i32) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_4__*) #1

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
