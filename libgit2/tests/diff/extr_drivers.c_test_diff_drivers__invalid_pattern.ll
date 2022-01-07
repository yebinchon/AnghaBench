; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_drivers.c_test_diff_drivers__invalid_pattern.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_drivers.c_test_diff_drivers__invalid_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"userdiff\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"userdiff/.gitattributes\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"*.storyboard diff=storyboard\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"diff.storyboard.xfuncname\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"<!--(.*?)-->\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"userdiff/dummy.storyboard\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"dummy.storyboard\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"some content\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_drivers__invalid_pattern() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @g_repo, align 4
  %8 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_repository_config__weakptr(i32** %1, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_config_set_string(i32* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_repository_index__weakptr(i32** %2, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_index_add_bypath(i32* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %23 = load i32, i32* @g_repo, align 4
  %24 = call i32 @git_diff_index_to_workdir(i32** %3, i32 %23, i32* null, i32* %5)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @git_patch_from_diff(i32** %4, i32* %26, i32 0)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @git_patch_free(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_diff_free(i32* %31)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_config__weakptr(i32**, i32) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_repository_index__weakptr(i32**, i32) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, i32*) #1

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #1

declare dso_local i32 @git_patch_free(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
