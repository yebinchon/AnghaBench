; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_ensure_workdir_contents.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_ensure_workdir_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @ensure_workdir_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_workdir_contents(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_repository_workdir(i32 %9)
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @git_buf_joinpath(i32* %5, i32 %10, i8* %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_buf_cstr(i32* %5)
  %15 = call i32 @git_futils_readbuffer(i32* %6, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @git_buf_cstr(i32* %6)
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i32 %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = call i32 @git_buf_dispose(i32* %5)
  %24 = call i32 @git_buf_dispose(i32* %6)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_buf_joinpath(i32*, i32, i8*) #1

declare dso_local i32 @git_repository_workdir(i32) #1

declare dso_local i32 @git_futils_readbuffer(i32*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
