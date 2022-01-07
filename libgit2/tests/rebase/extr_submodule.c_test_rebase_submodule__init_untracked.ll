; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_submodule.c_test_rebase_submodule__init_untracked.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_submodule.c_test_rebase_submodule__init_untracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"refs/heads/asparagus\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"my-submodule\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s/my-submodule/untracked\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"An untracked file in a submodule should not block a rebase\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_submodule__init_untracked() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @repo, align 4
  %11 = call i32 @git_reference_lookup(i32** %2, i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @repo, align 4
  %14 = call i32 @git_reference_lookup(i32** %3, i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @repo, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @git_annotated_commit_from_ref(i32** %4, i32 %16, i32* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @repo, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %20, i32* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @repo, align 4
  %25 = call i32 @git_submodule_lookup(i32** %8, i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @git_submodule_update(i32* %27, i32 1, i32* null)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @repo, align 4
  %31 = call i32 @git_repository_workdir(i32 %30)
  %32 = call i32 @git_buf_printf(i32* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = call i32 @git_buf_cstr(i32* %6)
  %34 = call i32* @fopen(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @fprintf(i32* %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = call i32 @git_buf_dispose(i32* %6)
  %40 = load i32, i32* @repo, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @git_rebase_init(i32** %1, i32 %40, i32* %41, i32* %42, i32* null, i32* null)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @git_submodule_free(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @git_annotated_commit_free(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @git_annotated_commit_free(i32* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @git_reference_free(i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @git_reference_free(i32* %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @git_rebase_free(i32* %55)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #1

declare dso_local i32 @git_submodule_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_submodule_update(i32*, i32, i32*) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i32) #1

declare dso_local i32 @git_repository_workdir(i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_submodule_free(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_rebase_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
