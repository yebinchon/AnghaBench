; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__add_value_at_specific_level.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__add_value_at_specific_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"config9\00", align 1
@GIT_CONFIG_LEVEL_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"config15\00", align 1
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"core.int32global\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"core.int64global\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"core.boolglobal\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"core.stringglobal\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"I'm a global config value!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_write__add_value_at_specific_level() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 9223372036854775803, i64* %5, align 8
  %7 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %7, i32* %6, align 4
  %8 = call i32 @git_config_new(i32** %1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @GIT_CONFIG_LEVEL_LOCAL, align 4
  %12 = call i32 @git_config_add_file_ondisk(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11, i32* null, i32 0)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %16 = call i32 @git_config_add_file_ondisk(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32* null, i32 0)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %20 = call i32 @git_config_open_level(i32** %2, i32* %18, i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_config_set_int32(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 28)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @git_config_set_int64(i32* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @git_config_set_bool(i32* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_config_set_string(i32* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_config_free(i32* %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_config_free(i32* %37)
  %39 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_config_get_int32(i32* %3, i32* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @cl_assert_equal_i(i32 28, i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @git_config_get_int64(i64* %4, i32* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @cl_assert(i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_config_get_bool(i32* %3, i32* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @cl_assert_equal_b(i32 1, i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @git_config_get_string_buf(i32* %6, i32* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = call i32 @git_buf_cstr(i32* %6)
  %63 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  %64 = call i32 @git_buf_dispose(i32* %6)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @git_config_free(i32* %65)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_new(i32**) #1

declare dso_local i32 @git_config_add_file_ondisk(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @git_config_open_level(i32**, i32*, i32) #1

declare dso_local i32 @git_config_set_int32(i32*, i8*, i32) #1

declare dso_local i32 @git_config_set_int64(i32*, i8*, i64) #1

declare dso_local i32 @git_config_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @git_config_get_int32(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_config_get_int64(i64*, i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_config_get_bool(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_b(i32, i32) #1

declare dso_local i32 @git_config_get_string_buf(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
