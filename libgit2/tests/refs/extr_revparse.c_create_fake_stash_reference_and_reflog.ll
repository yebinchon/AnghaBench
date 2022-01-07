; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_create_fake_stash_reference_and_reflog.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_create_fake_stash_reference_and_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"logs/refs/fakestash\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"refs/fakestash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @create_fake_stash_reference_and_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_fake_stash_reference_and_reflog(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @git_repository_path(i32* %7)
  %9 = call i32 @git_buf_joinpath(i32* %5, i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @git_buf_cstr(i32* %5)
  %11 = call i32 @git_path_isfile(i32 %10)
  %12 = call i32 @cl_assert_equal_i(i32 0, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_reference_lookup(i32** %3, i32* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_reference_rename(i32** %4, i32* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @git_reference_free(i32* %19)
  %21 = call i32 @git_buf_cstr(i32* %5)
  %22 = call i32 @git_path_isfile(i32 %21)
  %23 = call i32 @cl_assert_equal_i(i32 1, i32 %22)
  %24 = call i32 @git_buf_dispose(i32* %5)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @git_reference_free(i32* %25)
  ret void
}

declare dso_local i32 @git_buf_joinpath(i32*, i32, i8*) #1

declare dso_local i32 @git_repository_path(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_path_isfile(i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #1

declare dso_local i32 @git_reference_rename(i32**, i32*, i8*, i32, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
