; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_create.c_test_refs_branches_create__can_create_branch_with_unicode.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_create.c_test_refs_branches_create__can_create_branch_with_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"\C3\85str\C3\B6m\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"A\CC\8Astro\CC\88m\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\F0\9F\8D\B7\00", align 1
@repo = common dso_local global i32 0, align 4
@target = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"core.precomposeunicode\00", align 1
@branch = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_create__can_create_branch_with_unicode() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [3 x i8*], align 16
  %5 = alloca [3 x i8*], align 16
  %6 = alloca [3 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %10 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %11 = load i8*, i8** %1, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 1
  %13 = load i8*, i8** %2, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 1
  %15 = load i8*, i8** %3, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %17 = load i8*, i8** %2, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 1
  %19 = load i8*, i8** %1, align 8
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* null, i8** %20, align 8
  %21 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %22 = load i8*, i8** %1, align 8
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 1
  %24 = load i8*, i8** %2, align 8
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 1
  %26 = load i8*, i8** %3, align 8
  store i8* %26, i8** %25, align 8
  %27 = load i32, i32* @repo, align 4
  %28 = call i32 @git_repository_path(i32 %27)
  %29 = call i32 @git_path_does_fs_decompose_unicode(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @repo, align 4
  %31 = call i32 @retrieve_known_commit(i32* @target, i32 %30)
  %32 = load i32, i32* @repo, align 4
  %33 = call i64 @cl_repo_get_bool(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %0
  %36 = load i8*, i8** %1, align 8
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1
  store i8* %36, i8** %37, align 8
  br label %45

38:                                               ; preds = %0
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** %2, align 8
  %43 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  store i8* %42, i8** %43, align 16
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %35
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %108, %45
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %49 = call i32 @ARRAY_SIZE(i8** %48)
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %111

51:                                               ; preds = %46
  %52 = load i32, i32* @repo, align 4
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* @target, align 4
  %58 = call i32 @git_branch_create(i32** @branch, i32 %52, i8* %56, i32 %57, i32 0)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32*, i32** @branch, align 8
  %61 = call i32 @git_reference_target(i32* %60)
  %62 = load i32, i32* @target, align 4
  %63 = call i32 @git_commit_id(i32 %62)
  %64 = call i32 @git_oid_cmp(i32 %61, i32 %63)
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = load i32*, i32** @branch, align 8
  %67 = call i32 @git_branch_name(i8** %9, i32* %66)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @cl_assert_equal_s(i8* %72, i8* %73)
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @assert_branch_matches_name(i8* %78, i8* %82)
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %51
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @assert_branch_matches_name(i8* %96, i8* %100)
  br label %102

102:                                              ; preds = %92, %86, %51
  %103 = load i32*, i32** @branch, align 8
  %104 = call i32 @git_branch_delete(i32* %103)
  %105 = call i32 @cl_git_pass(i32 %104)
  %106 = load i32*, i32** @branch, align 8
  %107 = call i32 @git_reference_free(i32* %106)
  store i32* null, i32** @branch, align 8
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %7, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %46

111:                                              ; preds = %46
  ret void
}

declare dso_local i32 @git_path_does_fs_decompose_unicode(i32) #1

declare dso_local i32 @git_repository_path(i32) #1

declare dso_local i32 @retrieve_known_commit(i32*, i32) #1

declare dso_local i64 @cl_repo_get_bool(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_branch_create(i32**, i32, i8*, i32, i32) #1

declare dso_local i32 @git_oid_cmp(i32, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_commit_id(i32) #1

declare dso_local i32 @git_branch_name(i8**, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i32 @assert_branch_matches_name(i8*, i8*) #1

declare dso_local i32 @git_branch_delete(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
