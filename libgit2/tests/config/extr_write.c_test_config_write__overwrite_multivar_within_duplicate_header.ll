; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__overwrite_multivar_within_duplicate_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__overwrite_multivar_within_duplicate_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"config-duplicate-header\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"remote.origin.url\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"[remote \22origin\22]\0A\09url = \22bar\22\0A[branch \22master\22]\0A\09remote = \22origin\22\0A[remote \22origin\22]\0A\09url = \22foo\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"newurl\00", align 1
@multivar_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_write__overwrite_multivar_within_duplicate_header() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @cl_git_mkfile(i8* %7, i8* %8)
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @git_config_open_ondisk(i32** %3, i8* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @git_config_get_entry(i32** %4, i32* %13, i8* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @git_config_set_multivar(i32* %17, i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @git_config_entry_free(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_config_free(i32* %23)
  %25 = load i8*, i8** %1, align 8
  %26 = call i32 @git_config_open_ondisk(i32** %3, i8* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = load i32, i32* @multivar_cb, align 4
  %31 = call i32 @git_config_get_multivar_foreach(i32* %28, i8* %29, i32* null, i32 %30, i32* %5)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @cl_assert_equal_i(i32 2, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @git_config_free(i32* %35)
  ret void
}

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @git_config_get_entry(i32**, i32*, i8*) #1

declare dso_local i32 @git_config_set_multivar(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @git_config_entry_free(i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_config_get_multivar_foreach(i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
