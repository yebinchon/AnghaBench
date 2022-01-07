; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_create.c_test_invalid_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_create.c_test_invalid_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_master_tip = common dso_local global i32 0, align 4
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@current_head_target = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_invalid_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invalid_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @current_master_tip, align 4
  %6 = call i32 @git_oid_fromstr(i32* %4, i32 %5)
  %7 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %8 = load i32, i32* @g_repo, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @git_reference_create(i32** %3, i32 %8, i8* %9, i32* %4, i32 0, i32* null)
  %11 = call i32 @cl_assert_equal_i(i32 %7, i32 %10)
  %12 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = load i32, i32* @current_head_target, align 4
  %16 = call i32 @git_reference_symbolic_create(i32** %3, i32 %13, i8* %14, i32 %15, i32 0, i32* null)
  %17 = call i32 @cl_assert_equal_i(i32 %12, i32 %16)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_reference_create(i32**, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git_reference_symbolic_create(i32**, i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
