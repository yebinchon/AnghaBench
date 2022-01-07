; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_move.c_test_refs_branches_move__can_not_move_a_branch_if_its_destination_name_collide_with_an_existing_one.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_move.c_test_refs_branches_move__can_not_move_a_branch_if_its_destination_name_collide_with_an_existing_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"branch.master.remote\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"branch.master.merge\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"refs/heads/br2\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"cannot-fetch\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"refs/heads/track-local\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_move__can_not_move_a_branch_if_its_destination_name_collide_with_an_existing_one() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @repo, align 4
  %10 = call i32 @git_repository_config_snapshot(i32** %3, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @git_config_get_string_buf(i32* %4, i32* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i8* @git_buf_detach(i32* %4)
  store i8* %15, i8** %5, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_config_get_string_buf(i32* %4, i32* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i8* @git_buf_detach(i32* %4)
  store i8* %19, i8** %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_config_free(i32* %20)
  %22 = load i32, i32* @repo, align 4
  %23 = call i32 @git_reference_lookup(i32** %1, i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @GIT_EEXISTS, align 4
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_branch_move(i32** %2, i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %28 = call i32 @cl_assert_equal_i(i32 %25, i32 %27)
  %29 = call %struct.TYPE_2__* (...) @git_error_last()
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  %35 = load i32, i32* @repo, align 4
  %36 = call i32 @git_repository_config_snapshot(i32** %3, i32 %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @git_config_get_string(i8** %7, i32* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @cl_assert_equal_s(i8* %41, i8* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_config_get_string(i8** %7, i32* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @cl_assert_equal_s(i8* %47, i8* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @git_config_free(i32* %50)
  %52 = load i32, i32* @GIT_EEXISTS, align 4
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @git_branch_move(i32** %2, i32* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %55 = call i32 @cl_assert_equal_i(i32 %52, i32 %54)
  %56 = call %struct.TYPE_2__* (...) @git_error_last()
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @cl_assert(i32 %60)
  %62 = load i32, i32* @repo, align 4
  %63 = call i32 @git_repository_config_snapshot(i32** %3, i32 %62)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @git_config_get_string(i8** %7, i32* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @cl_assert_equal_s(i8* %68, i8* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @git_config_get_string(i8** %7, i32* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 @cl_git_pass(i32 %72)
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @cl_assert_equal_s(i8* %74, i8* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @git_config_free(i32* %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @git_reference_free(i32* %79)
  %81 = load i32, i32* @repo, align 4
  %82 = call i32 @git_reference_lookup(i32** %1, i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %83 = call i32 @cl_git_pass(i32 %82)
  %84 = load i32, i32* @GIT_EEXISTS, align 4
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @git_branch_move(i32** %2, i32* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %87 = call i32 @cl_assert_equal_i(i32 %84, i32 %86)
  %88 = call %struct.TYPE_2__* (...) @git_error_last()
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @cl_assert(i32 %92)
  %94 = load i32, i32* @repo, align 4
  %95 = call i32 @git_repository_config_snapshot(i32** %3, i32 %94)
  %96 = call i32 @cl_git_pass(i32 %95)
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @git_config_get_string(i8** %7, i32* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %99 = call i32 @cl_git_pass(i32 %98)
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @cl_assert_equal_s(i8* %100, i8* %101)
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @git_config_get_string(i8** %7, i32* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %105 = call i32 @cl_git_pass(i32 %104)
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @cl_assert_equal_s(i8* %106, i8* %107)
  %109 = load i8*, i8** %5, align 8
  %110 = call i32 @git__free(i8* %109)
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @git__free(i8* %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @git_reference_free(i32* %113)
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @git_config_free(i32* %115)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_config_snapshot(i32**, i32) #1

declare dso_local i32 @git_config_get_string_buf(i32*, i32*, i8*) #1

declare dso_local i8* @git_buf_detach(i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_branch_move(i32**, i32*, i8*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_2__* @git_error_last(...) #1

declare dso_local i32 @git_config_get_string(i8**, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
