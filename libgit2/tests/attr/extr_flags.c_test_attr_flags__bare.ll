; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_flags.c_test_attr_flags__bare.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_flags.c_test_attr_flags__bare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@GIT_ATTR_CHECK_NO_SYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"README.md\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"diff\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attr_flags__bare() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @git_repository_is_bare(i32* %4)
  %6 = call i32 @cl_assert(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %9 = call i32 @git_attr_get(i8** %2, i32* %7, i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @GIT_ATTR_IS_UNSPECIFIED(i8* %11)
  %13 = call i32 @cl_assert(i32 %12)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_repository_is_bare(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_attr_get(i8**, i32*, i32, i8*, i8*) #1

declare dso_local i32 @GIT_ATTR_IS_UNSPECIFIED(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
