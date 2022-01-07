; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_link.c_test_core_link__readlink_symlink.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_link.c_test_core_link__readlink_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"readlink_target\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"This is the target of a symlink\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"readlink_link\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_link__readlink_symlink() #0 {
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
  %11 = call i32 @git_buf_join(i32* %1, i8 signext 47, i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @git_buf_cstr(i32* %1)
  %14 = call i32 @do_symlink(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %16 = call i32 @p_readlink(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %15, i32 2048)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @cl_must_pass(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %20
  store i8 0, i8* %21, align 1
  %22 = call i32 @git_buf_cstr(i32* %1)
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %24 = call i32 @cl_assert_equal_s(i32 %22, i8* %23)
  %25 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

declare dso_local i32 @should_run(...) #1

declare dso_local i32 @clar__skip(...) #1

declare dso_local i32 @git_buf_join(i32*, i8 signext, i32, i8*) #1

declare dso_local i32 @clar_sandbox_path(...) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

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
