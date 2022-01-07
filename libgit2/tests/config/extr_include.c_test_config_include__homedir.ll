; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_include.c_test_config_include__homedir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_include.c_test_config_include__homedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OPT_SET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"config-include-homedir\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"[include]\0Apath = ~/config-included\00", align 1
@cfg = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"foo.bar.baz\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"huzzah\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_include__homedir() #0 {
  %1 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %2 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %3 = call i32 @cl_fixture(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @git_libgit2_opts(i32 %1, i32 %2, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @git_config_open_ondisk(i32* @cfg, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @cfg, align 4
  %10 = call i32 @git_config_get_string_buf(i32* @buf, i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_buf_cstr(i32* @buf)
  %13 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %12)
  %14 = call i32 (...) @cl_sandbox_set_search_path_defaults()
  %15 = call i32 @p_unlink(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_libgit2_opts(i32, i32, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_config_open_ondisk(i32*, i8*) #1

declare dso_local i32 @git_config_get_string_buf(i32*, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @cl_sandbox_set_search_path_defaults(...) #1

declare dso_local i32 @p_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
