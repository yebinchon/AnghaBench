; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_add.c_test_submodule_add__url_relative_to_origin.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_add.c_test_submodule_add__url_relative_to_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"testrepo2\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"../TestGitRepository\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"TestGitRepository\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"https://github.com/libgit2/TestGitRepository\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_add__url_relative_to_origin() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @g_repo, align 4
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i32 @git_submodule_add_setup(i32** %1, i32 %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_submodule_free(i32* %6)
  %8 = call i32 @assert_submodule_url(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_submodule_add_setup(i32**, i32, i8*, i8*, i32) #1

declare dso_local i32 @git_submodule_free(i32*) #1

declare dso_local i32 @assert_submodule_url(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
