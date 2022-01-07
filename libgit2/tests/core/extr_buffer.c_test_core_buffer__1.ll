; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__1.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s %s %d \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"shoop\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"da\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"shoop da 23 \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"woop\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"shoop da 23 woop 42\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_buffer__1() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %2, i32* %1, align 4
  %3 = call i32 (i32*, i8*, i8*, ...) @git_buf_printf(i32* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 23)
  %4 = call i64 @git_buf_oom(i32* %1)
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @cl_assert(i32 %6)
  %8 = call i32 @git_buf_cstr(i32* %1)
  %9 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %8)
  %10 = call i32 (i32*, i8*, i8*, ...) @git_buf_printf(i32* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 42)
  %11 = call i64 @git_buf_oom(i32* %1)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = call i32 @git_buf_cstr(i32* %1)
  %16 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %15)
  %17 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

declare dso_local i32 @git_buf_printf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
