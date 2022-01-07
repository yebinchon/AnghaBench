; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__fallback_from_local_to_global_and_from_global_to_system.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__fallback_from_local_to_global_and_from_global_to_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"config/config9\00", align 1
@GIT_CONFIG_LEVEL_SYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"config/config15\00", align 1
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"config/config16\00", align 1
@GIT_CONFIG_LEVEL_LOCAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"core.global\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"core.system\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_read__fallback_from_local_to_global_and_from_global_to_system() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @git_config_new(i32** %1)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @cl_fixture(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GIT_CONFIG_LEVEL_SYSTEM, align 4
  %8 = call i32 @git_config_add_file_ondisk(i32* %5, i32 %6, i32 %7, i32* null, i32 0)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @cl_fixture(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %13 = call i32 @git_config_add_file_ondisk(i32* %10, i32 %11, i32 %12, i32* null, i32 0)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @cl_fixture(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* @GIT_CONFIG_LEVEL_LOCAL, align 4
  %18 = call i32 @git_config_add_file_ondisk(i32* %15, i32 %16, i32 %17, i32* null, i32 0)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_config_get_int32(i32* %2, i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @cl_assert_equal_i(i32 17, i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_config_get_int32(i32* %2, i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @cl_assert_equal_i(i32 11, i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_config_free(i32* %30)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_new(i32**) #1

declare dso_local i32 @git_config_add_file_ondisk(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_config_get_int32(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
