; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_diff_parse__lineinfo.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_diff_parse__lineinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATCH_ORIGINAL_TO_CHANGE_MIDDLE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_parse__lineinfo() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i8*, i8** @PATCH_ORIGINAL_TO_CHANGE_MIDDLE, align 8
  store i8* %7, i8** %1, align 8
  store i64 0, i64* %6, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = call i32 @git_diff_from_buffer(i32** %2, i8* %8, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_patch_from_diff(i32** %3, i32* %13, i32 0)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_patch_get_hunk(i32** %4, i64* %5, i32* %16, i32 0)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %6, align 8
  %22 = trunc i64 %20 to i32
  %23 = call i32 @cl_git_assert_lineinfo(i32 3, i32 3, i32 1, i32* %19, i32 0, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %6, align 8
  %27 = trunc i64 %25 to i32
  %28 = call i32 @cl_git_assert_lineinfo(i32 4, i32 4, i32 1, i32* %24, i32 0, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  %32 = trunc i64 %30 to i32
  %33 = call i32 @cl_git_assert_lineinfo(i32 5, i32 5, i32 1, i32* %29, i32 0, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  %37 = trunc i64 %35 to i32
  %38 = call i32 @cl_git_assert_lineinfo(i32 6, i32 -1, i32 1, i32* %34, i32 0, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  %42 = trunc i64 %40 to i32
  %43 = call i32 @cl_git_assert_lineinfo(i32 -1, i32 6, i32 1, i32* %39, i32 0, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %6, align 8
  %47 = trunc i64 %45 to i32
  %48 = call i32 @cl_git_assert_lineinfo(i32 7, i32 7, i32 1, i32* %44, i32 0, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %6, align 8
  %52 = trunc i64 %50 to i32
  %53 = call i32 @cl_git_assert_lineinfo(i32 8, i32 8, i32 1, i32* %49, i32 0, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %6, align 8
  %57 = trunc i64 %55 to i32
  %58 = call i32 @cl_git_assert_lineinfo(i32 9, i32 9, i32 1, i32* %54, i32 0, i32 %57)
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @cl_assert_equal_i(i64 %59, i64 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @git_patch_free(i32* %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @git_diff_free(i32* %64)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_from_buffer(i32**, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #1

declare dso_local i32 @git_patch_get_hunk(i32**, i64*, i32*, i32) #1

declare dso_local i32 @cl_git_assert_lineinfo(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @cl_assert_equal_i(i64, i64) #1

declare dso_local i32 @git_patch_free(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
