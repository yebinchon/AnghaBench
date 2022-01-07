; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_create.c_test_refs_create__existing_dir_propagates_edirectory.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_create.c_test_refs_create__existing_dir_propagates_edirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"refs/heads/new-dir/new-head\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"refs/heads/new-dir\00", align 1
@current_master_tip = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_EDIRECTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_create__existing_dir_propagates_edirectory() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %6 = load i32, i32* @current_master_tip, align 4
  %7 = call i32 @git_oid_fromstr(i32* %3, i32 %6)
  %8 = load i32, i32* @g_repo, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @git_reference_create(i32** %1, i32 %8, i8* %9, i32* %3, i32 1, i32* null)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @GIT_EDIRECTORY, align 4
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @git_reference_create(i32** %2, i32 %13, i8* %14, i32* %3, i32 0, i32* null)
  %16 = call i32 @cl_git_fail_with(i32 %12, i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_reference_free(i32* %17)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_create(i32**, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
