; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__filesystem2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__filesystem2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_iterator_workdir__filesystem2.expect_base = internal global [17 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [10 x i8] c"heads/br2\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"heads/dir\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"heads/executable\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"heads/ident\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"heads/long-file-name\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"heads/master\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"heads/merge-conflict\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"heads/packed-test\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"heads/subtrees\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"heads/test\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"heads/testrepo-worktree\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"tags/e90810b\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"tags/foo/bar\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"tags/foo/foo/bar\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"tags/point_to_blob\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"tags/test\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"testrepo/.git/refs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__filesystem2() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  store i32 %2, i32* @g_repo, align 4
  %3 = call i32 @git_iterator_for_filesystem(i32** %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32* null)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @expect_iterator_items(i32* %5, i32 16, i8** getelementptr inbounds ([17 x i8*], [17 x i8*]* @test_iterator_workdir__filesystem2.expect_base, i64 0, i64 0), i32 16, i8** getelementptr inbounds ([17 x i8*], [17 x i8*]* @test_iterator_workdir__filesystem2.expect_base, i64 0, i64 0))
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_iterator_free(i32* %7)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_iterator_for_filesystem(i32**, i8*, i32*) #1

declare dso_local i32 @expect_iterator_items(i32*, i32, i8**, i32, i8**) #1

declare dso_local i32 @git_iterator_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
