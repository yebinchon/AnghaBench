; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_update.c_test_submodule_update__update_and_init_submodule.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_update.c_test_submodule_update__update_and_init_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_SUBMODULE_UPDATE_OPTIONS_INIT = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@GIT_SUBMODULE_IGNORE_UNSPECIFIED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_HEAD = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_INDEX = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_CONFIG = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_UNINITIALIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"be3563ae3f795b2b4353bcce3a527ad0a4f7f644\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_update__update_and_init_submodule() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GIT_SUBMODULE_UPDATE_OPTIONS_INIT, align 4
  store i32 %4, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32 (...) @setup_fixture_submodule_simple()
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_submodule_lookup(i32** %1, i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNSPECIFIED, align 4
  %11 = call i32 @git_submodule_status(i32* %3, i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_HEAD, align 4
  %15 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_INDEX, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_CONFIG, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_UNINITIALIZED, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @cl_assert_equal_i(i32 %13, i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_submodule_update(i32* %22, i32 1, i32* %2)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_submodule_head_id(i32* %25)
  %27 = call i64 @git_oid_streq(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_submodule_wd_id(i32* %31)
  %33 = call i64 @git_oid_streq(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_submodule_index_id(i32* %37)
  %39 = call i64 @git_oid_streq(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @git_submodule_free(i32* %43)
  ret void
}

declare dso_local i32 @setup_fixture_submodule_simple(...) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_submodule_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_submodule_status(i32*, i32, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_submodule_update(i32*, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_oid_streq(i32, i8*) #1

declare dso_local i32 @git_submodule_head_id(i32*) #1

declare dso_local i32 @git_submodule_wd_id(i32*) #1

declare dso_local i32 @git_submodule_index_id(i32*) #1

declare dso_local i32 @git_submodule_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
