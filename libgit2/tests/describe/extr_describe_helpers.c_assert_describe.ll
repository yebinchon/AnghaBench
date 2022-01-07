; ModuleID = '/home/carl/AnghaBench/libgit2/tests/describe/extr_describe_helpers.c_assert_describe.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/describe/extr_describe_helpers.c_assert_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_describe(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @git_revparse_single(i32** %11, i32* %15, i8* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %11, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @git_describe_commit(i32** %13, i32* %19, i32* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %13, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @git_describe_format(i32* %12, i32* %23, i32* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @git_buf_cstr(i32* %12)
  %29 = call i32 @wildmatch(i8* %27, i32 %28, i32 0)
  %30 = call i32 @cl_must_pass(i32 %29)
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @git_describe_result_free(i32* %31)
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @git_object_free(i32* %33)
  %35 = call i32 @git_buf_dispose(i32* %12)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revparse_single(i32**, i32*, i8*) #1

declare dso_local i32 @git_describe_commit(i32**, i32*, i32*) #1

declare dso_local i32 @git_describe_format(i32*, i32*, i32*) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @wildmatch(i8*, i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_describe_result_free(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
