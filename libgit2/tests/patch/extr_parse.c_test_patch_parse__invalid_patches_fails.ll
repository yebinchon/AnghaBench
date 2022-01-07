; ModuleID = '/home/carl/AnghaBench/libgit2/tests/patch/extr_parse.c_test_patch_parse__invalid_patches_fails.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/patch/extr_parse.c_test_patch_parse__invalid_patches_fails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR = common dso_local global i32 0, align 4
@PATCH_CORRUPT_GIT_HEADER = common dso_local global i32 0, align 4
@PATCH_CORRUPT_MISSING_NEW_FILE = common dso_local global i32 0, align 4
@PATCH_CORRUPT_MISSING_OLD_FILE = common dso_local global i32 0, align 4
@PATCH_CORRUPT_NO_CHANGES = common dso_local global i32 0, align 4
@PATCH_CORRUPT_MISSING_HUNK_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_patch_parse__invalid_patches_fails() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @GIT_ERROR, align 4
  %3 = load i32, i32* @PATCH_CORRUPT_GIT_HEADER, align 4
  %4 = load i32, i32* @PATCH_CORRUPT_GIT_HEADER, align 4
  %5 = call i32 @strlen(i32 %4)
  %6 = call i32 @git_patch_from_buffer(i32** %1, i32 %3, i32 %5, i32* null)
  %7 = call i32 @cl_git_fail_with(i32 %2, i32 %6)
  %8 = load i32, i32* @GIT_ERROR, align 4
  %9 = load i32, i32* @PATCH_CORRUPT_MISSING_NEW_FILE, align 4
  %10 = load i32, i32* @PATCH_CORRUPT_MISSING_NEW_FILE, align 4
  %11 = call i32 @strlen(i32 %10)
  %12 = call i32 @git_patch_from_buffer(i32** %1, i32 %9, i32 %11, i32* null)
  %13 = call i32 @cl_git_fail_with(i32 %8, i32 %12)
  %14 = load i32, i32* @GIT_ERROR, align 4
  %15 = load i32, i32* @PATCH_CORRUPT_MISSING_OLD_FILE, align 4
  %16 = load i32, i32* @PATCH_CORRUPT_MISSING_OLD_FILE, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = call i32 @git_patch_from_buffer(i32** %1, i32 %15, i32 %17, i32* null)
  %19 = call i32 @cl_git_fail_with(i32 %14, i32 %18)
  %20 = load i32, i32* @GIT_ERROR, align 4
  %21 = load i32, i32* @PATCH_CORRUPT_NO_CHANGES, align 4
  %22 = load i32, i32* @PATCH_CORRUPT_NO_CHANGES, align 4
  %23 = call i32 @strlen(i32 %22)
  %24 = call i32 @git_patch_from_buffer(i32** %1, i32 %21, i32 %23, i32* null)
  %25 = call i32 @cl_git_fail_with(i32 %20, i32 %24)
  %26 = load i32, i32* @GIT_ERROR, align 4
  %27 = load i32, i32* @PATCH_CORRUPT_MISSING_HUNK_HEADER, align 4
  %28 = load i32, i32* @PATCH_CORRUPT_MISSING_HUNK_HEADER, align 4
  %29 = call i32 @strlen(i32 %28)
  %30 = call i32 @git_patch_from_buffer(i32** %1, i32 %27, i32 %29, i32* null)
  %31 = call i32 @cl_git_fail_with(i32 %26, i32 %30)
  ret void
}

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_patch_from_buffer(i32**, i32, i32, i32*) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
