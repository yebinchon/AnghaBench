; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_submodule_helpers.c_setup_fixture_submod3.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_submodule_helpers.c_setup_fixture_submod3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"submod3\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"submod2_target\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"submod2_target/.gitted\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"submod2_target/.git\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"submod3/One/.gitted\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"submod3/One/.git\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"submod3/TWO/.gitted\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"submod3/TWO/.git\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"submod3/three/.gitted\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"submod3/three/.git\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"submod3/FoUr/.gitted\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"submod3/FoUr/.git\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"submod3/Five/.gitted\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"submod3/Five/.git\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"submod3/six/.gitted\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"submod3/six/.git\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"submod3/sEvEn/.gitted\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"submod3/sEvEn/.git\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"submod3/EIGHT/.gitted\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"submod3/EIGHT/.git\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"submod3/nine/.gitted\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"submod3/nine/.git\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"submod3/TEN/.gitted\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"submod3/TEN/.git\00", align 1
@cleanup_fixture_submodules = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @setup_fixture_submod3() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %2, i32** %1, align 8
  %3 = call i32 @cl_fixture_sandbox(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @p_rename(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @git_repository_workdir(i32* %5)
  %7 = call i32 @rewrite_gitmodules(i32 %6)
  %8 = call i32 @p_rename(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %9 = call i32 @p_rename(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %10 = call i32 @p_rename(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %11 = call i32 @p_rename(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %12 = call i32 @p_rename(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %13 = call i32 @p_rename(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %14 = call i32 @p_rename(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %15 = call i32 @p_rename(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  %16 = call i32 @p_rename(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %17 = call i32 @p_rename(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  %18 = load i32, i32* @cleanup_fixture_submodules, align 4
  %19 = call i32 @cl_set_cleanup(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_repository_reinit_filesystem(i32* %20, i32 1)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %1, align 8
  ret i32* %23
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_fixture_sandbox(i8*) #1

declare dso_local i32 @p_rename(i8*, i8*) #1

declare dso_local i32 @rewrite_gitmodules(i32) #1

declare dso_local i32 @git_repository_workdir(i32*) #1

declare dso_local i32 @cl_set_cleanup(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_reinit_filesystem(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
