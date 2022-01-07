; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_fetchhead.c_test_online_fetchhead__no_merges.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_fetchhead.c_test_online_fetchhead__no_merges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"branch.master.remote\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"branch.master.merge\00", align 1
@FETCH_HEAD_NO_MERGE_DATA2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"annotated_tag\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"commit_tree\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"nearly-dangling\00", align 1
@FETCH_HEAD_NO_MERGE_DATA = common dso_local global i32 0, align 4
@FETCH_HEAD_NO_MERGE_DATA3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_fetchhead__no_merges() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @fetchhead_test_clone()
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i32 @git_repository_config(i32** %1, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_config_delete_entry(i32* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_config_delete_entry(i32* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_config_free(i32* %12)
  %14 = load i32, i32* @FETCH_HEAD_NO_MERGE_DATA2, align 4
  %15 = call i32 @fetchhead_test_fetch(i32* null, i32 %14)
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_tag_delete(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @g_repo, align 4
  %20 = call i32 @git_tag_delete(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_tag_delete(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @g_repo, align 4
  %26 = call i32 @git_tag_delete(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @FETCH_HEAD_NO_MERGE_DATA, align 4
  %29 = call i32 @fetchhead_test_fetch(i32* null, i32 %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = call i32 @git_tag_delete(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32, i32* @FETCH_HEAD_NO_MERGE_DATA3, align 4
  %34 = call i32 @fetchhead_test_fetch(i32* null, i32 %33)
  ret void
}

declare dso_local i32 @fetchhead_test_clone(...) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_config(i32**, i32) #1

declare dso_local i32 @git_config_delete_entry(i32*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @fetchhead_test_fetch(i32*, i32) #1

declare dso_local i32 @git_tag_delete(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
