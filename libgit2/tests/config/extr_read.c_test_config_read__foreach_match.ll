; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__foreach_match.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__foreach_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"config/config9\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"core.*\00", align 1
@count_cfg_entries = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"remote\\.ab.*\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c".*url$\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c".*dummy.*\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c".*nomatch.*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_read__foreach_match() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @cl_fixture(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @git_config_open_ondisk(i32** %1, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  store i32 0, i32* %2, align 4
  %6 = load i32*, i32** %1, align 8
  %7 = load i32, i32* @count_cfg_entries, align 4
  %8 = call i32 @git_config_foreach_match(i32* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32* %2)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @cl_assert_equal_i(i32 3, i32 %10)
  store i32 0, i32* %2, align 4
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @count_cfg_entries, align 4
  %14 = call i32 @git_config_foreach_match(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32* %2)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @cl_assert_equal_i(i32 2, i32 %16)
  store i32 0, i32* %2, align 4
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* @count_cfg_entries, align 4
  %20 = call i32 @git_config_foreach_match(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32* %2)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @cl_assert_equal_i(i32 2, i32 %22)
  store i32 0, i32* %2, align 4
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* @count_cfg_entries, align 4
  %26 = call i32 @git_config_foreach_match(i32* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %25, i32* %2)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @cl_assert_equal_i(i32 2, i32 %28)
  store i32 0, i32* %2, align 4
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* @count_cfg_entries, align 4
  %32 = call i32 @git_config_foreach_match(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %31, i32* %2)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @cl_assert_equal_i(i32 0, i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_config_free(i32* %36)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_config_foreach_match(i32*, i8*, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
