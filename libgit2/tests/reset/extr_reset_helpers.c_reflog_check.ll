; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_reset_helpers.c_reflog_check.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_reset_helpers.c_reflog_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reflog_check(i32* %0, i8* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i32 @GIT_UNUSED(i8* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @git_reflog_read(i32** %11, i32* %15, i8* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @git_reflog_entrycount(i32* %20)
  %22 = call i32 @cl_assert_equal_i(i64 %19, i32 %21)
  %23 = load i32*, i32** %11, align 8
  %24 = call i32* @git_reflog_entry_byindex(i32* %23, i32 0)
  store i32* %24, i32** %12, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @git_reflog_entry_message(i32* %29)
  %31 = call i32 @cl_assert_equal_s(i8* %28, i32 %30)
  br label %32

32:                                               ; preds = %27, %5
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @git_reflog_free(i32* %33)
  ret void
}

declare dso_local i32 @GIT_UNUSED(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reflog_read(i32**, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i64, i32) #1

declare dso_local i32 @git_reflog_entrycount(i32*) #1

declare dso_local i32* @git_reflog_entry_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_reflog_entry_message(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
