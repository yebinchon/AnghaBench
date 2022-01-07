; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__filenames_with_special_prefixes_do_not_interfere_with_status_retrieval.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__filenames_with_special_prefixes_do_not_interfere_with_status_retrieval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"!file\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"#blah\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"[blah]\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"[attr]\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"[attr]blah\00", align 1
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Please don't ignore me!\00", align 1
@cb_status__single = common dso_local global i32 0, align 4
@GIT_STATUS_WT_NEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__filenames_with_special_prefixes_do_not_interfere_with_status_retrieval() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca [6 x i8*], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = bitcast [6 x i8*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 48, i1 false)
  %8 = bitcast i8* %7 to [6 x i8*]*
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8** %13, align 16
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %63, %0
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 0
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %66

21:                                               ; preds = %14
  %22 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %22, i32* %4, align 4
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 0
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  %28 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32* %28, i32** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @git_buf_joinpath(i32* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = call i32 @git_buf_cstr(i32* %4)
  %33 = call i32 @cl_git_mkfile(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %34 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 16)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @cb_status__single, align 4
  %37 = call i32 @git_status_foreach(i32* %35, i32 %36, %struct.TYPE_4__* %1)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @GIT_STATUS_WT_NEW, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @cl_assert(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %51 = load i32*, i32** %6, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @git_status_file(i64* %50, i32* %51, i8* %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GIT_STATUS_WT_NEW, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @cl_assert(i32 %59)
  %61 = call i32 (...) @cl_git_sandbox_cleanup()
  %62 = call i32 @git_buf_dispose(i32* %4)
  br label %63

63:                                               ; preds = %21
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %14

66:                                               ; preds = %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(i32*, i8*, i8*) #2

declare dso_local i32 @cl_git_mkfile(i32, i8*) #2

declare dso_local i32 @git_buf_cstr(i32*) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @git_status_foreach(i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_status_file(i64*, i32*, i8*) #2

declare dso_local i32 @cl_git_sandbox_cleanup(...) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
