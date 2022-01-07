; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_diff_parse__patch_roundtrip_succeeds.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_diff_parse__patch_roundtrip_succeeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@__const.test_diff_parse__patch_roundtrip_succeeds.buf1 = private unnamed_addr constant [3 x i8] c"a\0A\00", align 1
@__const.test_diff_parse__patch_roundtrip_succeeds.buf2 = private unnamed_addr constant [3 x i8] c"b\0A\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"obj1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"obj2\00", align 1
@GIT_DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_parse__patch_roundtrip_succeeds() #0 {
  %1 = alloca [3 x i8], align 1
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = bitcast [3 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.test_diff_parse__patch_roundtrip_succeeds.buf1, i32 0, i32 0), i64 3, i1 false)
  %8 = bitcast [3 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.test_diff_parse__patch_roundtrip_succeeds.buf2, i32 0, i32 0), i64 3, i1 false)
  %9 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %10 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %13 = call i32 @strlen(i8* %12)
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 0
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 0
  %16 = call i32 @strlen(i8* %15)
  %17 = call i32 @git_patch_from_buffers(i32** %5, i8* %11, i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @git_patch_to_buf(%struct.TYPE_6__* %3, i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @git_diff_from_buffer(i32** %6, i32 %23, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @GIT_DIFF_FORMAT_PATCH, align 4
  %30 = call i32 @git_diff_to_buf(%struct.TYPE_6__* %4, i32* %28, i32 %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_s(i32 %33, i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @git_patch_free(i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @git_diff_free(i32* %39)
  %41 = call i32 @git_buf_dispose(%struct.TYPE_6__* %3)
  %42 = call i32 @git_buf_dispose(%struct.TYPE_6__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_patch_from_buffers(i32**, i8*, i32, i8*, i8*, i32, i8*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @git_diff_from_buffer(i32**, i32, i32) #2

declare dso_local i32 @git_diff_to_buf(%struct.TYPE_6__*, i32*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
