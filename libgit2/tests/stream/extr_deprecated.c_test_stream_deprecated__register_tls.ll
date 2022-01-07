; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stream/extr_deprecated.c_test_stream_deprecated__register_tls.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stream/extr_deprecated.c_test_stream_deprecated__register_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctor_called = common dso_local global i64 0, align 8
@test_stream_init = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"443\00", align 1
@test_stream = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stream_deprecated__register_tls() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* @ctor_called, align 8
  %3 = load i32*, i32** @test_stream_init, align 8
  %4 = call i32 @git_stream_register_tls(i32* %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @git_tls_stream_new(i32** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i64, i64* @ctor_called, align 8
  %9 = call i32 @cl_assert_equal_i(i32 1, i64 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @cl_assert_equal_p(i32* @test_stream, i32* %10)
  store i64 0, i64* @ctor_called, align 8
  store i32* null, i32** %1, align 8
  %12 = call i32 @git_stream_register_tls(i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_tls_stream_new(i32** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @cl_git_fail_with(i32 -1, i32 %15)
  %17 = load i64, i64* @ctor_called, align 8
  %18 = call i32 @cl_assert_equal_i(i32 0, i64 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = icmp ne i32* @test_stream, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_stream_free(i32* %23)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_stream_register_tls(i32*) #1

declare dso_local i32 @git_tls_stream_new(i32**, i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i64) #1

declare dso_local i32 @cl_assert_equal_p(i32*, i32*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_stream_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
