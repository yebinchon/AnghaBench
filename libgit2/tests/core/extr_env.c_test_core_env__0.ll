; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_env.c_test_core_env__0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_env.c_test_core_env__0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"testfile\00", align 1
@home_values = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"find me\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@env_save = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_env__0() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i8, align 1
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %9 = bitcast %struct.TYPE_8__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i8 48, i8* %4, align 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %7, align 8
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strncpy(i8* %12, i8* %13, i32 16)
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %17 = call i32 @cl_assert_equal_s(i8* %15, i8* %16)
  %18 = load i8**, i8*** @home_values, align 8
  store i8** %18, i8*** %5, align 8
  br label %19

19:                                               ; preds = %71, %0
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %74

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @p_mkdir(i8* %25, i32 511)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %29, align 8
  br label %71

30:                                               ; preds = %23
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @git_path_prettify(%struct.TYPE_8__* %1, i8* %32, i32* null)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i8, i8* %4, align 1
  %36 = add i8 %35, 1
  store i8 %36, i8* %4, align 1
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 %37
  store i8 %35, i8* %38, align 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %42 = call i32 @git_buf_joinpath(%struct.TYPE_8__* %1, i8* %40, i8* %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @cl_git_mkfile(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @git_buf_rtruncate_at_char(%struct.TYPE_8__* %1, i8 signext 47)
  %48 = load i32, i32* @GIT_ENOTFOUND, align 4
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %50 = call i32 @git_sysdir_find_global_file(%struct.TYPE_8__* %2, i8* %49)
  %51 = call i32 @cl_assert_equal_i(i32 %48, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @setenv_and_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = call i32 (...) @set_global_search_path_from_env()
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %57 = call i32 @git_sysdir_find_global_file(%struct.TYPE_8__* %2, i8* %56)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i32*, i32** @env_save, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cl_setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = call i32 (...) @set_global_search_path_from_env()
  %64 = load i32, i32* @GIT_ENOTFOUND, align 4
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %66 = call i32 @git_sysdir_find_global_file(%struct.TYPE_8__* %2, i8* %65)
  %67 = call i32 @cl_assert_equal_i(i32 %64, i32 %66)
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @p_rmdir(i8* %69)
  br label %71

71:                                               ; preds = %30, %28
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i32 1
  store i8** %73, i8*** %5, align 8
  br label %19

74:                                               ; preds = %19
  %75 = call i32 @git_buf_dispose(%struct.TYPE_8__* %1)
  %76 = call i32 @git_buf_dispose(%struct.TYPE_8__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i64 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_path_prettify(%struct.TYPE_8__*, i8*, i32*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_8__*, i8*, i8*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_buf_rtruncate_at_char(%struct.TYPE_8__*, i8 signext) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_sysdir_find_global_file(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @setenv_and_check(i8*, i8*) #2

declare dso_local i32 @set_global_search_path_from_env(...) #2

declare dso_local i32 @cl_setenv(i8*, i32) #2

declare dso_local i32 @p_rmdir(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
