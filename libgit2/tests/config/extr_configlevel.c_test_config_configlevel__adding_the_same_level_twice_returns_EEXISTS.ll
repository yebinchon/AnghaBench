; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_configlevel.c_test_config_configlevel__adding_the_same_level_twice_returns_EEXISTS.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_configlevel.c_test_config_configlevel__adding_the_same_level_twice_returns_EEXISTS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"config/config9\00", align 1
@GIT_CONFIG_LEVEL_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"config/config15\00", align 1
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"config/config16\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_configlevel__adding_the_same_level_twice_returns_EEXISTS() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32 @git_config_new(i32** %2)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @cl_fixture(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GIT_CONFIG_LEVEL_LOCAL, align 4
  %8 = call i32 @git_config_add_file_ondisk(i32* %5, i32 %6, i32 %7, i32* null, i32 0)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @cl_fixture(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %13 = call i32 @git_config_add_file_ondisk(i32* %10, i32 %11, i32 %12, i32* null, i32 0)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @cl_fixture(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %18 = call i32 @git_config_add_file_ondisk(i32* %15, i32 %16, i32 %17, i32* null, i32 0)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @cl_git_fail(i32 %19)
  %21 = load i32, i32* @GIT_EEXISTS, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @cl_assert_equal_i(i32 %21, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_config_free(i32* %24)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_new(i32**) #1

declare dso_local i32 @git_config_add_file_ondisk(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
