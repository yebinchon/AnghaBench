; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__value_containing_quotes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__value_containing_quotes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"config9\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"core.somevar\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"this \22has\22 quotes\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"this also \22has\22 quotes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_write__value_containing_quotes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %3, i32* %2, align 4
  %4 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_config_set_string(i32* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_config_get_string_buf(i32* %2, i32* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_buf_cstr(i32* %2)
  %13 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %14 = call i32 @git_buf_clear(i32* %2)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_config_free(i32* %15)
  %17 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_config_get_string_buf(i32* %2, i32* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @git_buf_cstr(i32* %2)
  %23 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = call i32 @git_buf_clear(i32* %2)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_config_free(i32* %25)
  %27 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @git_config_set_string(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_config_get_string_buf(i32* %2, i32* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = call i32 @git_buf_cstr(i32* %2)
  %36 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = call i32 @git_buf_clear(i32* %2)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @git_config_free(i32* %38)
  %40 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @git_config_get_string_buf(i32* %2, i32* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = call i32 @git_buf_cstr(i32* %2)
  %46 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = call i32 @git_buf_dispose(i32* %2)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @git_config_free(i32* %48)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_get_string_buf(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
