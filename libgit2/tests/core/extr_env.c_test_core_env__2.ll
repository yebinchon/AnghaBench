; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_env.c_test_core_env__2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_env.c_test_core_env__2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@home_values = common dso_local global i8** null, align 8
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"find me\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_env__2() #0 {
  %1 = alloca %struct.TYPE_9__, align 4
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = alloca [16 x i8], align 16
  %4 = alloca i8, align 1
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %9 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8 48, i8* %4, align 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
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

19:                                               ; preds = %79, %0
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %82

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @p_mkdir(i8* %25, i32 511)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EEXIST, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  br label %79

34:                                               ; preds = %28, %23
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @git_path_prettify(%struct.TYPE_9__* %1, i8* %36, i32* null)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i8, i8* %4, align 1
  %40 = add i8 %39, 1
  store i8 %40, i8* %4, align 1
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 %41
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %46 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %1, i32 %44, i8* %45)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cl_git_mkfile(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @git_buf_rtruncate_at_char(%struct.TYPE_9__* %1, i8 signext 47)
  %52 = load i32, i32* @GIT_ENOTFOUND, align 4
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %54 = call i32 @git_sysdir_find_global_file(%struct.TYPE_9__* %2, i8* %53)
  %55 = call i32 @cl_assert_equal_i(i32 %52, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %59 = call i32 @check_global_searchpath(i32 %57, i32 0, i8* %58, %struct.TYPE_9__* %2)
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %63 = call i32 @check_global_searchpath(i32 %61, i32 -1, i8* %62, %struct.TYPE_9__* %2)
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %67 = call i32 @check_global_searchpath(i32 %65, i32 1, i8* %66, %struct.TYPE_9__* %2)
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %71 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %1, i32 %69, i8* %70)
  %72 = call i32 @cl_git_pass(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @p_unlink(i32 %74)
  %76 = load i8**, i8*** %5, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @p_rmdir(i8* %77)
  br label %79

79:                                               ; preds = %34, %32
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i32 1
  store i8** %81, i8*** %5, align 8
  br label %19

82:                                               ; preds = %19
  %83 = call i32 @git_buf_dispose(%struct.TYPE_9__* %1)
  %84 = call i32 @git_buf_dispose(%struct.TYPE_9__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i64 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_path_prettify(%struct.TYPE_9__*, i8*, i32*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_9__*, i32, i8*) #2

declare dso_local i32 @cl_git_mkfile(i32, i8*) #2

declare dso_local i32 @git_buf_rtruncate_at_char(%struct.TYPE_9__*, i8 signext) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_sysdir_find_global_file(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @check_global_searchpath(i32, i32, i8*, %struct.TYPE_9__*) #2

declare dso_local i32 @p_unlink(i32) #2

declare dso_local i32 @p_rmdir(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
