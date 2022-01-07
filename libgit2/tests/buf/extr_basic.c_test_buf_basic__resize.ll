; ModuleID = '/home/carl/AnghaBench/libgit2/tests/buf/extr_basic.c_test_buf_basic__resize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/buf/extr_basic.c_test_buf_basic__resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@test_string = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_buf_basic__resize() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @test_string, align 4
  %4 = call i32 @git_buf_puts(i32* %1, i32 %3)
  %5 = call i64 @git_buf_oom(i32* %1)
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @cl_assert(i32 %7)
  %9 = call i32 @git_buf_cstr(i32* %1)
  %10 = load i32, i32* @test_string, align 4
  %11 = call i32 @cl_assert_equal_s(i32 %9, i32 %10)
  %12 = load i32, i32* @test_string, align 4
  %13 = call i32 @git_buf_puts(i32* %1, i32 %12)
  %14 = call i32 @git_buf_cstr(i32* %1)
  %15 = call i32 @strlen(i32 %14)
  %16 = load i32, i32* @test_string, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = mul nsw i32 %17, 2
  %19 = icmp eq i32 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

declare dso_local i32 @git_buf_puts(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
