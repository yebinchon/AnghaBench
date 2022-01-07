; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_crlf.c_test_filter_crlf__with_safecrlf_and_unsafe_allowed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_crlf.c_test_filter_crlf__with_safecrlf_and_unsafe_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"core.safecrlf\00", align 1
@GIT_FILTER_TO_ODB = common dso_local global i32 0, align 4
@GIT_FILTER_ALLOW_UNSAFE = common dso_local global i32 0, align 4
@GIT_FILTER_CRLF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Normal\0D\0ACRLF\0D\0Aline-endings.\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Normal\0ACRLF\0Aline-endings.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Mixed\0Aup\0D\0ALF\0Aand\0D\0ACRLF\0Aline-endings.\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Mixed\0Aup\0ALF\0Aand\0ACRLF\0Aline-endings.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Normal\0ALF\0Aonly\0Aline-endings.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_crlf__with_safecrlf_and_unsafe_allowed() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 24, i1 false)
  %6 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 24, i1 false)
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @cl_repo_set_bool(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i32, i32* @GIT_FILTER_TO_ODB, align 4
  %11 = load i32, i32* @GIT_FILTER_ALLOW_UNSAFE, align 4
  %12 = call i32 @git_filter_list_new(i32** %1, i32 %9, i32 %10, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @GIT_FILTER_CRLF, align 4
  %15 = call i32* @git_filter_lookup(i32 %14)
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_filter_list_push(i32* %20, i32* %21, i32* null)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strlen(i8* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @git_filter_list_apply_to_data(%struct.TYPE_6__* %4, i32* %29, %struct.TYPE_6__* %3)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @strlen(i8* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_filter_list_apply_to_data(%struct.TYPE_6__* %4, i32* %40, %struct.TYPE_6__* %3)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @strlen(i8* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_filter_list_apply_to_data(%struct.TYPE_6__* %4, i32* %51, %struct.TYPE_6__* %3)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @git_filter_list_free(i32* %57)
  %59 = call i32 @git_buf_dispose(%struct.TYPE_6__* %4)
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

declare dso_local i32 @git_filter_list_apply_to_data(%struct.TYPE_6__*, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
