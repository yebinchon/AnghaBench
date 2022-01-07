; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_check_buf_append_abc.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_check_buf_append_abc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @check_buf_append_abc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_buf_append_abc(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @git_buf_sets(i32* %17, i8* %19)
  %21 = call i64 @git_buf_oom(i32* %17)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @git_buf_cstr(i32* %17)
  %27 = call i32 @cl_assert_equal_s(i8* %25, i32 %26)
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @git_buf_puts(i32* %17, i8* %28)
  %30 = call i64 @git_buf_oom(i32* %17)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @git_buf_cstr(i32* %17)
  %36 = call i32 @cl_assert_equal_s(i8* %34, i32 %35)
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @git_buf_puts(i32* %17, i8* %37)
  %39 = call i64 @git_buf_oom(i32* %17)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @git_buf_cstr(i32* %17)
  %45 = call i32 @cl_assert_equal_s(i8* %43, i32 %44)
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @git_buf_puts(i32* %17, i8* %46)
  %48 = call i64 @git_buf_oom(i32* %17)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @cl_assert(i32 %50)
  %52 = load i8*, i8** %14, align 8
  %53 = call i32 @git_buf_cstr(i32* %17)
  %54 = call i32 @cl_assert_equal_s(i8* %52, i32 %53)
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @git_buf_puts(i32* %17, i8* %55)
  %57 = call i64 @git_buf_oom(i32* %17)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @cl_assert(i32 %59)
  %61 = load i8*, i8** %15, align 8
  %62 = call i32 @git_buf_cstr(i32* %17)
  %63 = call i32 @cl_assert_equal_s(i8* %61, i32 %62)
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @git_buf_puts(i32* %17, i8* %64)
  %66 = call i64 @git_buf_oom(i32* %17)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @cl_assert(i32 %68)
  %70 = load i8*, i8** %16, align 8
  %71 = call i32 @git_buf_cstr(i32* %17)
  %72 = call i32 @cl_assert_equal_s(i8* %70, i32 %71)
  %73 = call i32 @git_buf_dispose(i32* %17)
  ret void
}

declare dso_local i32 @git_buf_sets(i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
