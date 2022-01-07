; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_link.c_test_core_link__readlink_multiple.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_link.c_test_core_link__readlink_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"readlink_final\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"readlink_3\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"readlink_2\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"readlink_1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_link__readlink_multiple() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2048 x i8], align 16
  %7 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %10, i32* %4, align 4
  %11 = call i32 (...) @should_run()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 (...) @clar__skip()
  br label %15

15:                                               ; preds = %13, %0
  %16 = call i32 (...) @clar_sandbox_path()
  %17 = call i32 @git_buf_join(i32* %1, i8 signext 47, i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @clar_sandbox_path()
  %19 = call i32 @git_buf_join(i32* %2, i8 signext 47, i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 (...) @clar_sandbox_path()
  %21 = call i32 @git_buf_join(i32* %3, i8 signext 47, i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 (...) @clar_sandbox_path()
  %23 = call i32 @git_buf_join(i32* %4, i8 signext 47, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @git_buf_cstr(i32* %1)
  %25 = call i32 @git_buf_cstr(i32* %2)
  %26 = call i32 @do_symlink(i32 %24, i32 %25, i32 0)
  %27 = call i32 @git_buf_cstr(i32* %2)
  %28 = call i32 @git_buf_cstr(i32* %3)
  %29 = call i32 @do_symlink(i32 %27, i32 %28, i32 0)
  %30 = call i32 @git_buf_cstr(i32* %3)
  %31 = call i32 @git_buf_cstr(i32* %4)
  %32 = call i32 @do_symlink(i32 %30, i32 %31, i32 0)
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %34 = call i32 @p_readlink(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %33, i32 2048)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @cl_must_pass(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 %38
  store i8 0, i8* %39, align 1
  %40 = call i32 @git_buf_cstr(i32* %3)
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %42 = call i32 @cl_assert_equal_s(i32 %40, i8* %41)
  %43 = call i32 @git_buf_dispose(i32* %4)
  %44 = call i32 @git_buf_dispose(i32* %3)
  %45 = call i32 @git_buf_dispose(i32* %2)
  %46 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

declare dso_local i32 @should_run(...) #1

declare dso_local i32 @clar__skip(...) #1

declare dso_local i32 @git_buf_join(i32*, i8 signext, i32, i8*) #1

declare dso_local i32 @clar_sandbox_path(...) #1

declare dso_local i32 @do_symlink(i32, i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @p_readlink(i8*, i8*, i32) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
