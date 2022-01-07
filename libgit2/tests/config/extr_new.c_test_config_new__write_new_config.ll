; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_new.c_test_config_new__write_new_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_new.c_test_config_new__write_new_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@TEST_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"color.ui\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"core.editor\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_new__write_new_config() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @TEST_CONFIG, align 4
  %5 = call i32 @cl_git_mkfile(i32 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @TEST_CONFIG, align 4
  %7 = call i32 @git_config_open_ondisk(i32** %1, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_config_set_string(i32* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_config_set_string(i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_config_free(i32* %15)
  %17 = load i32, i32* @TEST_CONFIG, align 4
  %18 = call i32 @git_config_open_ondisk(i32** %1, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_config_get_string_buf(i32* %2, i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @git_buf_cstr(i32* %2)
  %24 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = call i32 @git_buf_clear(i32* %2)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_config_get_string_buf(i32* %2, i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = call i32 @git_buf_cstr(i32* %2)
  %30 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = call i32 @git_buf_dispose(i32* %2)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_config_free(i32* %32)
  %34 = load i32, i32* @TEST_CONFIG, align 4
  %35 = call i32 @p_unlink(i32 %34)
  ret void
}

declare dso_local i32 @cl_git_mkfile(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i32) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_config_get_string_buf(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @p_unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
