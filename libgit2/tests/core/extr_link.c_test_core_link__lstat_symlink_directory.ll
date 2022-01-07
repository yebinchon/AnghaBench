; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_link.c_test_core_link__lstat_symlink_directory.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_link.c_test_core_link__lstat_symlink_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"lstat_dirtarget\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"lstat_dirlink\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_link__lstat_symlink_directory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 4
  %3 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %3, i32* %1, align 4
  %4 = call i32 (...) @should_run()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 (...) @clar__skip()
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i32 (...) @clar_sandbox_path()
  %10 = call i32 @git_buf_join(i32* %1, i8 signext 47, i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @p_mkdir(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 511)
  %12 = call i32 @git_buf_cstr(i32* %1)
  %13 = call i32 @do_symlink(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %14 = call i32 @p_lstat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.stat* %2)
  %15 = call i32 @cl_must_pass(i32 %14)
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @S_ISDIR(i32 %17)
  %19 = call i32 @cl_assert(i32 %18)
  %20 = call i32 @p_lstat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %2)
  %21 = call i32 @cl_must_pass(i32 %20)
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @S_ISLNK(i32 %23)
  %25 = call i32 @cl_assert(i32 %24)
  %26 = call i32 @git_buf_len(i32* %1)
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cl_assert_equal_i(i32 %26, i32 %28)
  %30 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

declare dso_local i32 @should_run(...) #1

declare dso_local i32 @clar__skip(...) #1

declare dso_local i32 @git_buf_join(i32*, i8 signext, i32, i8*) #1

declare dso_local i32 @clar_sandbox_path(...) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @do_symlink(i32, i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_lstat(i8*, %struct.stat*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_buf_len(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
