; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_wildcard.c_test_filter_wildcard__reverse.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_wildcard.c_test_filter_wildcard__reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"hero-reverse-foo\00", align 1
@GIT_FILTER_TO_ODB = common dso_local global i32 0, align 4
@input = common dso_local global i64 0, align 8
@DATA_LEN = common dso_local global i32 0, align 4
@reversed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_wildcard__reverse() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = bitcast %struct.TYPE_7__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %5 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %6 = load i32, i32* @g_repo, align 4
  %7 = load i32, i32* @GIT_FILTER_TO_ODB, align 4
  %8 = call i32 @git_filter_list_load(i32** %1, i32 %6, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %7, i32 0)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i64, i64* @input, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load i32, i32* @DATA_LEN, align 4
  %13 = call i32 @git_buf_put(%struct.TYPE_7__* %2, i8* %11, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_filter_list_apply_to_data(%struct.TYPE_7__* %3, i32* %15, %struct.TYPE_7__* %2)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @DATA_LEN, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cl_assert_equal_i(i32 %18, i32 %20)
  %22 = load i32, i32* @reversed, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcmp(i32 %22, i32 %24, i32 %26)
  %28 = call i32 @cl_assert_equal_i(i32 0, i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @git_filter_list_free(i32* %29)
  %31 = call i32 @git_buf_dispose(%struct.TYPE_7__* %3)
  %32 = call i32 @git_buf_dispose(%struct.TYPE_7__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_filter_list_load(i32**, i32, i32*, i8*, i32, i32) #2

declare dso_local i32 @git_buf_put(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32 @git_filter_list_apply_to_data(%struct.TYPE_7__*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @memcmp(i32, i32, i32) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
