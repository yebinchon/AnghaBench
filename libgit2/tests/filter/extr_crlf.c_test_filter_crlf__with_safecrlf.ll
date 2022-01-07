; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_crlf.c_test_filter_crlf__with_safecrlf.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_crlf.c_test_filter_crlf__with_safecrlf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"core.safecrlf\00", align 1
@GIT_FILTER_TO_ODB = common dso_local global i32 0, align 4
@GIT_FILTER_CRLF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Normal\0D\0ACRLF\0D\0Aline-endings.\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Normal\0ACRLF\0Aline-endings.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Mixed\0Aup\0D\0ALF\0Aand\0D\0ACRLF\0Aline-endings.\0D\0A\00", align 1
@GIT_ERROR_FILTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Normal\0ALF\0Aonly\0Aline-endings.\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Normal\0ACR only\0Dand some more\0Aline-endings.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_crlf__with_safecrlf() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 24, i1 false)
  %6 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 24, i1 false)
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @cl_repo_set_bool(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i32, i32* @GIT_FILTER_TO_ODB, align 4
  %11 = call i32 @git_filter_list_new(i32** %1, i32 %9, i32 %10, i32 0)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @GIT_FILTER_CRLF, align 4
  %14 = call i32* @git_filter_lookup(i32 %13)
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @cl_assert(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @git_filter_list_push(i32* %19, i32* %20, i32* null)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @strlen(i8* %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_filter_list_apply_to_data(%struct.TYPE_7__* %4, i32* %28, %struct.TYPE_7__* %3)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @strlen(i8* %36)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_filter_list_apply_to_data(%struct.TYPE_7__* %4, i32* %39, %struct.TYPE_7__* %3)
  %41 = call i32 @cl_git_fail(i32 %40)
  %42 = call %struct.TYPE_8__* (...) @git_error_last()
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GIT_ERROR_FILTER, align 4
  %46 = call i32 @cl_assert_equal_i(i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @strlen(i8* %49)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @git_filter_list_apply_to_data(%struct.TYPE_7__* %4, i32* %52, %struct.TYPE_7__* %3)
  %54 = call i32 @cl_git_fail(i32 %53)
  %55 = call %struct.TYPE_8__* (...) @git_error_last()
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GIT_ERROR_FILTER, align 4
  %59 = call i32 @cl_assert_equal_i(i32 %57, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @strlen(i8* %62)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @git_filter_list_apply_to_data(%struct.TYPE_7__* %4, i32* %65, %struct.TYPE_7__* %3)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @git_filter_list_free(i32* %71)
  %73 = call i32 @git_buf_dispose(%struct.TYPE_7__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_filter_list_new(i32**, i32, i32, i32) #2

declare dso_local i32* @git_filter_lookup(i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_filter_list_push(i32*, i32*, i32*) #2

declare dso_local i8* @strlen(i8*) #2

declare dso_local i32 @git_filter_list_apply_to_data(%struct.TYPE_7__*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local %struct.TYPE_8__* @git_error_last(...) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
