; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_features.c_test_core_features__0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_features.c_test_core_features__0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIBGIT2_VER_MAJOR = common dso_local global i32 0, align 4
@LIBGIT2_VER_MINOR = common dso_local global i32 0, align 4
@LIBGIT2_VER_REVISION = common dso_local global i32 0, align 4
@GIT_FEATURE_THREADS = common dso_local global i32 0, align 4
@GIT_FEATURE_SSH = common dso_local global i32 0, align 4
@GIT_FEATURE_NSEC = common dso_local global i32 0, align 4
@GIT_FEATURE_HTTPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_features__0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @git_libgit2_version(i32* %1, i32* %2, i32* %3)
  %6 = load i32, i32* @LIBGIT2_VER_MAJOR, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @cl_assert_equal_i(i32 %6, i32 %7)
  %9 = load i32, i32* @LIBGIT2_VER_MINOR, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @cl_assert_equal_i(i32 %9, i32 %10)
  %12 = load i32, i32* @LIBGIT2_VER_REVISION, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @cl_assert_equal_i(i32 %12, i32 %13)
  %15 = call i32 (...) @git_libgit2_features()
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GIT_FEATURE_THREADS, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @GIT_FEATURE_SSH, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @cl_assert(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @GIT_FEATURE_NSEC, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  ret void
}

declare dso_local i32 @git_libgit2_version(i32*, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_libgit2_features(...) #1

declare dso_local i32 @cl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
