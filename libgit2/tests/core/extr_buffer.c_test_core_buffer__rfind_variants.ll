; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__rfind_variants.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__rfind_variants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/this/is/it/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_buffer__rfind_variants() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %3, i32* %1, align 4
  %4 = call i32 @git_buf_sets(i32* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i64 @git_buf_len(i32* %1)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %2, align 4
  %8 = call i32 @git_buf_rfind(i32* %1, i8 signext 47)
  %9 = load i32, i32* %2, align 4
  %10 = sub nsw i32 %9, 1
  %11 = icmp eq i32 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @cl_assert(i32 %12)
  %14 = call i32 @git_buf_rfind_next(i32* %1, i8 signext 47)
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 %15, 4
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = call i32 @git_buf_rfind(i32* %1, i8 signext 105)
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 %21, 3
  %23 = icmp eq i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = call i32 @git_buf_rfind_next(i32* %1, i8 signext 105)
  %27 = load i32, i32* %2, align 4
  %28 = sub nsw i32 %27, 3
  %29 = icmp eq i32 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = call i32 @git_buf_rfind(i32* %1, i8 signext 104)
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = call i32 @git_buf_rfind_next(i32* %1, i8 signext 104)
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i32
  %39 = call i32 @cl_assert(i32 %38)
  %40 = call i32 @git_buf_rfind(i32* %1, i8 signext 113)
  %41 = icmp eq i32 %40, -1
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = call i32 @git_buf_rfind_next(i32* %1, i8 signext 113)
  %45 = icmp eq i32 %44, -1
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_buf_sets(i32*, i8*) #1

declare dso_local i64 @git_buf_len(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_buf_rfind(i32*, i8 signext) #1

declare dso_local i32 @git_buf_rfind_next(i32*, i8 signext) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
