; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_lookupbypath.c_test_object_lookupbypath__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_lookupbypath.c_test_object_lookupbypath__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"attr/.gitted\00", align 1
@g_head_commit = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@g_root_tree = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"subdir/subdir_test2.txt\00", align 1
@g_expectedobject = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@g_actualobject = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_lookupbypath__initialize() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @git_repository_open(i32* @g_repo, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_repository_head(i32** %1, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %11 = call i32 @git_reference_peel(i32** bitcast (i32* @g_head_commit to i32**), i32* %9, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @g_head_commit, align 4
  %14 = call i32 @git_commit_tree(i32* @g_root_tree, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @g_root_tree, align 4
  %17 = call i32 @git_tree_entry_bypath(i32** %2, i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @git_tree_entry_id(i32* %20)
  %22 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %23 = call i32 @git_object_lookup(i32* @g_expectedobject, i32 %19, i32 %21, i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_tree_entry_free(i32* %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_reference_free(i32* %27)
  store i32* null, i32** @g_actualobject, align 8
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32*, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_repository_head(i32**, i32) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_commit_tree(i32*, i32) #1

declare dso_local i32 @git_tree_entry_bypath(i32**, i32, i8*) #1

declare dso_local i32 @git_object_lookup(i32*, i32, i32, i32) #1

declare dso_local i32 @git_tree_entry_id(i32*) #1

declare dso_local i32 @git_tree_entry_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
