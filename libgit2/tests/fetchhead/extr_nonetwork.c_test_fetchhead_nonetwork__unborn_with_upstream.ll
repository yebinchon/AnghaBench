; ModuleID = '/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_test_fetchhead_nonetwork__unborn_with_upstream.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_test_fetchhead_nonetwork__unborn_with_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cleanup_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"./test1\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"./repowithunborn\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@assert_master_for_merge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fetchhead_nonetwork__unborn_with_upstream() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @cl_set_cleanup(i32* @cleanup_repository, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @git_repository_init(i32* @g_repo, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @cl_set_cleanup(i32* @cleanup_repository, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @git_clone(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @git_remote_set_url(i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_remote_lookup(i32** %2, i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_remote_fetch(i32* %16, i32* null, i32* null, i32* null)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_remote_free(i32* %19)
  %21 = load i32*, i32** %1, align 8
  %22 = load i32, i32* @assert_master_for_merge, align 4
  %23 = call i32 @git_repository_fetchhead_foreach(i32* %21, i32 %22, i32* null)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_repository_free(i32* %25)
  %27 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32*, i8*, i32) #1

declare dso_local i32 @git_clone(i32**, i8*, i8*, i32*) #1

declare dso_local i32 @git_remote_set_url(i32*, i8*, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_remote_lookup(i32**, i32*, i8*) #1

declare dso_local i32 @git_remote_fetch(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_remote_free(i32*) #1

declare dso_local i32 @git_repository_fetchhead_foreach(i32*, i32, i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
