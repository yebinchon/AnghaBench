; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__simple_read_from_specific_level.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__simple_read_from_specific_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"config/config18\00", align 1
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"config/config19\00", align 1
@GIT_CONFIG_LEVEL_SYSTEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"core.int32global\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"core.int64global\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"core.boolglobal\00", align 1
@buf = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"core.stringglobal\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"I'm a global config value!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_read__simple_read_from_specific_level() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 9223372036854775803, i64* %5, align 8
  %6 = call i32 @git_config_new(i32** %1)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @cl_fixture(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %11 = call i32 @git_config_add_file_ondisk(i32* %8, i32 %9, i32 %10, i32* null, i32 0)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @cl_fixture(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @GIT_CONFIG_LEVEL_SYSTEM, align 4
  %16 = call i32 @git_config_add_file_ondisk(i32* %13, i32 %14, i32 %15, i32* null, i32 0)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %20 = call i32 @git_config_open_level(i32** %2, i32* %18, i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_config_get_int32(i32* %3, i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @cl_assert_equal_i(i32 28, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_config_get_int64(i64* %4, i32* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_config_get_bool(i32* %3, i32* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @cl_assert_equal_b(i32 1, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_config_get_string_buf(i32* @buf, i32* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = call i32 @git_buf_cstr(i32* @buf)
  %44 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @git_config_free(i32* %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_config_free(i32* %47)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_new(i32**) #1

declare dso_local i32 @git_config_add_file_ondisk(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_config_open_level(i32**, i32*, i32) #1

declare dso_local i32 @git_config_get_int32(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_config_get_int64(i64*, i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_config_get_bool(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_b(i32, i32) #1

declare dso_local i32 @git_config_get_string_buf(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
