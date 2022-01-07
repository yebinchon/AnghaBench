; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_modify.c_test_submodule_modify__init.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_modify.c_test_submodule_modify__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"submodule\\..*\00", align 1
@delete_one_config = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"submodule.sm_unchanged.url\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"submodule.sm_changed_head.url\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"submodule.sm_added_and_uncommited.url\00", align 1
@init_one_submodule = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"/submod2_target\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_modify__init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i32 @git_repository_config(i32** %1, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = load i32, i32* @delete_one_config, align 4
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_config_foreach_match(i32* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7, i32* %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_config_free(i32* %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_repository_config_snapshot(i32** %1, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @GIT_ENOTFOUND, align 4
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_config_get_string(i8** %2, i32* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @cl_git_fail_with(i32 %16, i32 %18)
  %20 = load i32, i32* @GIT_ENOTFOUND, align 4
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_config_get_string(i8** %2, i32* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @cl_git_fail_with(i32 %20, i32 %22)
  %24 = load i32, i32* @GIT_ENOTFOUND, align 4
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_config_get_string(i8** %2, i32* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @cl_git_fail_with(i32 %24, i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_config_free(i32* %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i32, i32* @init_one_submodule, align 4
  %32 = call i32 @git_submodule_foreach(i32 %30, i32 %31, i32* null)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @g_repo, align 4
  %35 = call i32 @git_repository_config_snapshot(i32** %1, i32 %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_config_get_string(i8** %2, i32* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @git__suffixcmp(i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_config_get_string(i8** %2, i32* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i8*, i8** %2, align 8
  %49 = call i64 @git__suffixcmp(i8* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @cl_assert(i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @git_config_get_string(i8** %2, i32* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = load i8*, i8** %2, align 8
  %57 = call i64 @git__suffixcmp(i8* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @cl_assert(i32 %59)
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @git_config_free(i32* %61)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_config(i32**, i32) #1

declare dso_local i32 @git_config_foreach_match(i32*, i8*, i32, i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_repository_config_snapshot(i32**, i32) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_config_get_string(i8**, i32*, i8*) #1

declare dso_local i32 @git_submodule_foreach(i32, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git__suffixcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
