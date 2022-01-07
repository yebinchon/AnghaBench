; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stream/extr_registration.c_test_stream_registration__insecure.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stream/extr_registration.c_test_stream_registration__insecure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@test_stream_init = common dso_local global i32 0, align 4
@test_stream_wrap = common dso_local global i32 0, align 4
@ctor_called = common dso_local global i64 0, align 8
@GIT_STREAM_STANDARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@test_stream = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stream_registration__insecure() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* @test_stream_init, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @test_stream_wrap, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  store i64 0, i64* @ctor_called, align 8
  %9 = load i32, i32* @GIT_STREAM_STANDARD, align 4
  %10 = call i32 @git_stream_register(i32 %9, %struct.TYPE_3__* %2)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_socket_stream_new(i32** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i64, i64* @ctor_called, align 8
  %15 = call i32 @cl_assert_equal_i(i32 1, i64 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @cl_assert_equal_p(i32* @test_stream, i32* %16)
  store i64 0, i64* @ctor_called, align 8
  store i32* null, i32** %1, align 8
  %18 = load i32, i32* @GIT_STREAM_STANDARD, align 4
  %19 = call i32 @git_stream_register(i32 %18, %struct.TYPE_3__* null)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = call i32 @git_socket_stream_new(i32** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i64, i64* @ctor_called, align 8
  %24 = call i32 @cl_assert_equal_i(i32 0, i64 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = icmp ne i32* @test_stream, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @cl_assert(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @git_stream_free(i32* %29)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_stream_register(i32, %struct.TYPE_3__*) #2

declare dso_local i32 @git_socket_stream_new(i32**, i8*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i64) #2

declare dso_local i32 @cl_assert_equal_p(i32*, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_stream_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
