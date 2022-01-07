; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__6.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_buffer__6() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %4, i32* %2, align 4
  %5 = call i32 @git_buf_sets(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = call i64 @git_buf_oom(i32* %1)
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = call i32 @git_buf_sets(i32* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i64 @git_buf_oom(i32* %2)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = call i32 @git_buf_cstr(i32* %1)
  %16 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @git_buf_cstr(i32* %2)
  %18 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = call i32 @git_buf_swap(i32* %1, i32* %2)
  %20 = call i32 @git_buf_cstr(i32* %1)
  %21 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 @git_buf_cstr(i32* %2)
  %23 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @git_buf_dispose(i32* %1)
  %25 = call i32 @git_buf_dispose(i32* %2)
  ret void
}

declare dso_local i32 @git_buf_sets(i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_swap(i32*, i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
