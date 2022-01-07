; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stream/extr_registration.c_test_stream_registration__tls.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stream/extr_registration.c_test_stream_registration__tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@test_stream_init = common dso_local global i32 0, align 4
@test_stream_wrap = common dso_local global i32 0, align 4
@ctor_called = common dso_local global i64 0, align 8
@GIT_STREAM_TLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"443\00", align 1
@test_stream = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stream_registration__tls() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32, align 4
  %4 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* @test_stream_init, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @test_stream_wrap, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  store i64 0, i64* @ctor_called, align 8
  %10 = load i32, i32* @GIT_STREAM_TLS, align 4
  %11 = call i32 @git_stream_register(i32 %10, %struct.TYPE_3__* %2)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @git_tls_stream_new(i32** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i64, i64* @ctor_called, align 8
  %16 = call i32 @cl_assert_equal_i(i32 1, i64 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @cl_assert_equal_p(i32* @test_stream, i32* %17)
  store i64 0, i64* @ctor_called, align 8
  store i32* null, i32** %1, align 8
  %19 = load i32, i32* @GIT_STREAM_TLS, align 4
  %20 = call i32 @git_stream_register(i32 %19, %struct.TYPE_3__* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @git_tls_stream_new(i32** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @cl_git_fail_with(i32 -1, i32 %23)
  %25 = load i64, i64* @ctor_called, align 8
  %26 = call i32 @cl_assert_equal_i(i32 0, i64 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = icmp ne i32* @test_stream, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_stream_free(i32* %31)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_stream_register(i32, %struct.TYPE_3__*) #2

declare dso_local i32 @git_tls_stream_new(i32**, i8*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i64) #2

declare dso_local i32 @cl_assert_equal_p(i32*, i32*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_stream_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
