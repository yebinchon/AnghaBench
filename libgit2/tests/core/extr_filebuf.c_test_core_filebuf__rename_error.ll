; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_filebuf.c_test_core_filebuf__rename_error.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_filebuf.c_test_core_filebuf__rename_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"subdir/test\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"subdir/test.lock\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"dummy content\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"libgit2 rocks\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_filebuf__rename_error() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %6, i32* %1, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %7 = call i32 (...) @cl_skip()
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @p_mkdir(i8* %8, i32 438)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @cl_git_mkfile(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @p_open(i8* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @git_filebuf_open(i32* %1, i8* %20, i32 0, i32 438)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @git_filebuf_printf(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @git_path_exists(i8* %25)
  %27 = call i32 @cl_assert_equal_i(i32 1, i32 %26)
  %28 = call i32 @git_filebuf_commit(i32* %1)
  %29 = call i32 @cl_git_fail(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @p_close(i32 %30)
  %32 = call i32 @git_filebuf_cleanup(i32* %1)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @git_path_exists(i8* %33)
  %35 = call i32 @cl_assert_equal_i(i32 0, i32 %34)
  ret void
}

declare dso_local i32 @cl_skip(...) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @p_open(i8*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_filebuf_open(i32*, i8*, i32, i32) #1

declare dso_local i32 @git_filebuf_printf(i32*, i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_path_exists(i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_filebuf_commit(i32*) #1

declare dso_local i32 @p_close(i32) #1

declare dso_local i32 @git_filebuf_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
