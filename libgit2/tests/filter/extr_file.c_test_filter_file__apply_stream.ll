; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_file.c_test_filter_file__apply_stream.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_file.c_test_filter_file__apply_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_writestream = type { %struct.TYPE_7__, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@buf_writestream_write = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_FILTER_TO_ODB = common dso_local global i32 0, align 4
@GIT_FILTER_CRLF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"all-crlf\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crlf\0Acrlf\0Acrlf\0Acrlf\0A\00", align 1
@buf_writestream_close = common dso_local global i32 0, align 4
@buf_writestream_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_file__apply_stream() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.buf_writestream, align 8
  %4 = getelementptr inbounds %struct.buf_writestream, %struct.buf_writestream* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* @buf_writestream_write, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i32 (%struct.TYPE_7__*)*
  store i32 (%struct.TYPE_7__*)* %8, i32 (%struct.TYPE_7__*)** %5, align 8
  %9 = getelementptr inbounds %struct.buf_writestream, %struct.buf_writestream* %3, i32 0, i32 1
  %10 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 4, i1 false)
  %11 = getelementptr inbounds %struct.buf_writestream, %struct.buf_writestream* %3, i32 0, i32 2
  %12 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 12, i1 false)
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i32, i32* @GIT_FILTER_TO_ODB, align 4
  %15 = call i32 @git_filter_list_new(i32** %1, i32 %13, i32 %14, i32 0)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @GIT_FILTER_CRLF, align 4
  %18 = call i32* @git_filter_lookup(i32 %17)
  store i32* %18, i32** %2, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_filter_list_push(i32* %23, i32* %24, i32* null)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* @g_repo, align 4
  %29 = getelementptr inbounds %struct.buf_writestream, %struct.buf_writestream* %3, i32 0, i32 0
  %30 = call i32 @git_filter_list_stream_file(i32* %27, i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = getelementptr inbounds %struct.buf_writestream, %struct.buf_writestream* %3, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_filter_list_free(i32* %36)
  %38 = getelementptr inbounds %struct.buf_writestream, %struct.buf_writestream* %3, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %39, align 8
  %41 = getelementptr inbounds %struct.buf_writestream, %struct.buf_writestream* %3, i32 0, i32 0
  %42 = call i32 %40(%struct.TYPE_7__* %41)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_filter_list_new(i32**, i32, i32, i32) #2

declare dso_local i32* @git_filter_lookup(i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_filter_list_push(i32*, i32*, i32*) #2

declare dso_local i32 @git_filter_list_stream_file(i32*, i32, i8*, %struct.TYPE_7__*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
