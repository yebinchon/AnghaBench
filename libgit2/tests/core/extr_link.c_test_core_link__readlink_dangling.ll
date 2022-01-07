; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_link.c_test_core_link__readlink_dangling.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_link.c_test_core_link__readlink_dangling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"readlink_nonexistent\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"readlink_dangling\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_link__readlink_dangling() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2048 x i8], align 16
  %4 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @should_run()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @clar__skip()
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i32 (...) @clar_sandbox_path()
  %11 = call i32 @git_buf_join(i32* %1, i8 signext 47, i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @git_buf_cstr(i32* %1)
  %13 = call i32 @do_symlink(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %14 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %15 = call i32 @p_readlink(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 2048)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @cl_must_pass(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %19
  store i8 0, i8* %20, align 1
  %21 = call i32 @git_buf_cstr(i32* %1)
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %23 = call i32 @cl_assert_equal_s(i32 %21, i8* %22)
  %24 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

declare dso_local i32 @should_run(...) #1

declare dso_local i32 @clar__skip(...) #1

declare dso_local i32 @git_buf_join(i32*, i8 signext, i32, i8*) #1

declare dso_local i32 @clar_sandbox_path(...) #1

declare dso_local i32 @do_symlink(i32, i8*, i32) #1

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
