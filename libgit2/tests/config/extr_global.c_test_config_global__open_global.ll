; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_global.c_test_config_global__open_global.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_global.c_test_config_global__open_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"home/.gitconfig\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"[global]\0A  test = 4567\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"global.test\00", align 1
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_XDG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_global__open_global() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @git_config_open_default(i32** %1)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_config_get_int32(i32* %5, i32* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @cl_assert_equal_i(i32 4567, i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %16 = call i32 @git_config_open_level(i32** %2, i32* %14, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @git_config_get_int32(i32* %5, i32* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @cl_assert_equal_i(i32 4567, i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @GIT_CONFIG_LEVEL_XDG, align 4
  %25 = call i32 @git_config_open_level(i32** %4, i32* %23, i32 %24)
  %26 = call i32 @cl_git_fail(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_config_open_global(i32** %3, i32* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @git_config_get_int32(i32* %5, i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @cl_assert_equal_i(i32 4567, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @git_config_free(i32* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @git_config_free(i32* %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_config_free(i32* %39)
  ret void
}

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_default(i32**) #1

declare dso_local i32 @git_config_get_int32(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_config_open_level(i32**, i32*, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_config_open_global(i32**, i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
